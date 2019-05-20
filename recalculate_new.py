import random
import math
from collections import defaultdict
import networkx as nx

class Tree:
    def __init__(self, id):
        self.id = id
        self.children = list()
        self.plr = list()
        self.is_nary = False 

    def leafs(self):
        if len(self.children) == 0:
            return [self]
        else:
            return [d for c in self.children for d in c.leafs()]


def printTree(tree):
    if len(tree.children) == 0:
        return
    print(tree.id + ' ' + ':'.join([c.id for c in tree.children]))
    return [printTree(c) for c in tree.children]


def intersect(a, b):
    return list(set(a) & set(b))


class objBuilder():
    def __init__(self, vertices, variableHolder, distances, correlations, path):
        self.vh = variableHolder
        self.vertices = vertices
        self.vars = list()
        self.coeffs = list()
        self.d = distances
        self.c = correlations
        self.path = path
        self.build()

    ### Add variables for the tree constraints for every edge
    def readTrees(self):
        trees = dict()
        paths = open(self.path + '/orig_path.txt', 'r')
        for p in paths:
            p = p.strip().split(' ')
            s = p[0]
            t = p[-1]
            
            if s not in trees:
                trees[s] = Tree(s)
                
            root = trees[s]
            curr_node = root

            for r in p[1:]:
                found = False
                if r in [c.id for c in curr_node.children]:
                    for c in curr_node.children:
                        if r == c.id:
                            curr_node = c
                            break
                else:
                    new_node = Tree(r)
                    curr_node.children.append(new_node)
                    curr_node = new_node
            
        paths.close()
        tree_children = trees[s].children
        x = tree_children[0]
        return trees


    def condense_trees(self,trees):
        for s in trees:
            tree = trees[s]
            pairs = list()
            for c in tree.children:
                pair = ((c, tree))
                pairs.append(pair)

            while len(pairs) > 0:
                p = pairs.pop(0)
                np = p[0]
                if len(p[0].children) == 1:
                    p[1].children = [ c for c in p[1].children if c.id != p[0].id]
                    p[1].children.extend(p[0].children)
                    np = p[1]
                for c in p[0].children:
                    pairs.append((c, np))

    def build(self):
        #pass
        for d in self.d:
            src = d[0]
            dst = d[1]
            distance = self.d[d][0]
            z_var = self.vh.getVariable('z', 'z_' + src + '_' + dst, 2, 20)
            self.vars.append([z_var])
            self.coeffs.append(5)


                        
class Constraint():
    id = 0

    def __init__(self, lb, ub, vars, coeffs, rewrite='',strict = ''):

        self.id = Constraint.id
        
        Constraint.id = Constraint.id + 1
        
        self.ub = ub

        self.lb = lb

        self.vars = vars

        self.coeffs = coeffs

        self.strict = strict

        if rewrite == '':
            self.rewrite = False
        else :
            self.rewrite = True

        if strict == 'c' :
            self.updateVariables()
            
        self.lhs_dual_var = 0
        self.rhs_dual_var = 0


    ## Every variable has information about which constraints hold 
    ## the variable
    def updateVariables(self):
        for var_pair in self.vars:
            for var in var_pair:
                var.cons_id.append(self.id)


class ConstraintBuilder():
    def __init__(self, vertices, enclaves, correlations, distances, variable_holder, dir, obj, rd, no_trees):
        self.v = vertices
        self.e = enclaves
        self.c = correlations
        self.d = distances
        self.vh = variable_holder
        self.path = dir
        self.a = {}
        self.rd = rd
        self.ntrees = no_trees

        self.obj = obj

        self.labels = defaultdict(lambda: defaultdict(int))

        self.constraints = dict()

        self.v_fixed = defaultdict(list)
        self.v_var = defaultdict(list)
        self.v_new = []

        self.e_fixed = defaultdict(list)
        self.e_var = defaultdict(list)        

        self.edges_by_src = defaultdict(set)

        self.build_info()

        self.edgeweight = dict()

        self.Trees = self.parseTrees()

        self.fixVariables()

        ## egress edge constraints
        self.egressConstraint()

        ## if the edge is in any source tree it is in the graph
        self.edgeExistsConstraint() 

        self.srcTreeConstraints()

        ##
        self.bidirectionaledges()

        ##
        self.rdConstraints()

        ## there should be no cycles in the graph
        ## distance is incremented
        ## helps find unique paths between src and dst and makes path bidirectional
        self.cycleConstraints()

        ## ensures there exists a tree from each source and
        ## every source has a path to the destination
        self.buildPathConstraints()

        ## Covariance trees
        #-self.covarianceTreeConstraints()

        #self.destinationTreeConstraints()



    def check_s(self, e, i, j):
        for c in [1,2]:
            if e in self.realfixed[c] and i in self.all_var_v and j in self.v_fixed[c]:
                return False
#            if e in self.realfixed[c] and i in self.boundary[c] and j in self.v_fixed[c]:
#                return False
        return True

    def check_d(self,e, i, j):
        for c in [1,2]:
            if e in self.realfixed[c] and j in self.all_var_v and i in self.v_fixed[c] :
                return False
 #           if e in self.realfixed[c] and j in self.boundary[c] and i in self.v_fixed[c] :
 #               return False
        return True
            
        
    def distance(self):
        for d in self.d:
            src = d[0]
            dst = d[1]
            distance = self.d[d][0]
            z_var = self.vh.getVariable('z', 'z_' + src + '_' + dst, 2, 12)

            c = Constraint(int(distance) - 2, int(distance) + 2, [[z_var]], [1])
            self.constraints[c.id] = c            

    def parseTrees(self):
        trees = self.readTrees()
        self.condense_trees(trees)
        return trees


    # Done
    def fixVariables(self):
        ## fix s_vars
        ## fix v_vars
        ## fix d_vars
        ## fix w_vars
        ## fix m_vars

        for i in [1,2]:
            p = self.path.split('/')[:len(self.path) - 1]
            p.append(str(i))
            p = '/'.join(p)

            f = open(p + '/orig_path.txt', 'r')

            for l in f:
                l = l.strip().split(' ')

                s = l[0]
                d = l[-1]

                for j in range(len(l) - 1):
                    edge = ((l[j], l[j+1]))
                    if edge not in self.e_fixed[i]:
                        pass
                    else:
                        #if s == 'a' and j == 0: 
  #                      s_var = self.vh.getVariableEdit('s', 's_' + str(l[j]) + '_' + str(l[j+1]) + '_' + str(s), 1,1)
 #                       cons = Constraint(1, 1, [[s_var]], [1])
                        #self.constraints[cons.id] = cons

   #                     d_var = self.vh.getVariableEdit('d', 'd_'+ str(l[j]) + '_' + str(l[j+1]) + '_' + str(d), 1, 1)
#                        cons = Constraint(1, 1, [[d_var]], [1])
#                        self.constraints[cons.id] = cons

                        m_var = self.vh.getVariableEdit('z', 'z_' + str(l[j]) + '_' + str(s), j+2 ,j+2)
                        cons = Constraint(j+2, j+2,[[m_var]],[1])
                        self.constraints[cons.id] = cons

#                        v_va = self.vh.getVariableEdit('v', 'v_' + str(l[j]) + '_' + str(s) + '_' + str(d), 1, 1)
#                        cons = Constraint(1, 1, [[v_va]], [1])
                        #self.constraints[cons.id] = cons

    #                    w_var = self.vh.getVariableEdit('w', 'w_' + str(l[j]) + '_' + str(l[j+1]), 1, 1)
#                        cons = Constraint(1, 1, [[w_var]], [1])
#                        self.constraints[cons.id] = cons



    ## If false dont use the edge
    def check_if_edge_by_src(self, s, e):
        if e in self.all_fixed:
            if e in self.edges_by_src[s]:
                return True
            return False
        return True

    # Done
    def build_info(self):

        self.enc = defaultdict(set)
        self.a = defaultdict(set)
        self.v = defaultdict(set)
        self.egress = dict()

        ## Real fixed enclaves are enclaves which are actually fixed
        self.realfixed = defaultdict(list)
        
        ## fixed enclaves are enclaves which are not fixed
        self.fixed = defaultdict(set)

        self.boundary = defaultdict(set)
        self.edges_by_src_fixed = set()

        for i in [1,2]:
            p = self.path.split('/')[:len(self.path) - 1]
            p.append(str(i))
            p = '/'.join(p)

            fix = []
            f = open(p + '/fix_servers.txt', 'r')

            for l in f:
                l = l.strip().split(' ')
                for s in l:
                    fix.append(s)

            f.close()

            self.fixed[i] = set(fix)

            all_vertices = set()
            fringe = set()

            ## Add bidirectionally
            all_edges = set()
            var_edges = set()
            enclaves = set()
            v_variable = set()
            boundary = set()

            f = open(p + '/orig_path.txt', 'r')

            for l in f:

                l = l.strip().split(' ')
                
                self.egress[l[0]] = [l[1]]

                for j in range(len(l) - 2):

                    e = ((l[j], l[j+1]))
                    all_edges.add(e)
                    self.edges_by_src[l[0]].add(e)
                    e = ((l[j+1], l[j]))
                    all_edges.add(e)
                    all_vertices.add(l[j])
                    
                enclaves.add(l[0])

                # fringe includes boundary and variable vertices
                if l[0] in fix:
                    for j in range(2):

                        e = ((l[j], l[j+1]))
                        var_edges.add(e)

                        e = ((l[j+1], l[j]))
                        var_edges.add(e)
                        
                        fringe.add(l[j])
                        fringe.add(l[j+1])
                        

                        if j < 2:
                            v_variable.add(l[j+1])
                        else:
                            boundary.add(l[j+1])


                if l[-1] in fix:
                    for j in range(len(l) - 3, len(l) - 1):

                        e = ((l[j], l[j+1]))
                        var_edges.add(e)

                        e = ((l[j+1], l[j]))
                        var_edges.add(e)
                        
                        fringe.add(l[j])
                        fringe.add(l[j+1])

                        if j > len(l) - 3:
                            v_variable.add(l[j])
                        else:
                            boundary.add(l[j])

            f.close()
            
            self.v_var[i] = v_variable - enclaves
            self.boundary[i] = boundary - self.v_var[i]
            self.v_fixed[i] = all_vertices - enclaves - self.v_var[i]

            self.enc[i] = enclaves
            self.v[i] = all_vertices
            self.e_fixed[i] = set(list(all_edges - var_edges))
            self.realfixed[i] = enclaves - set(fix)

            # build adjacency matrix for the fixed vertices
            f = open(p + '/orig_path.txt', 'r')

            for l in f:
                l = l.strip().split()
                src = l[0]

                if src not in self.e_fixed[i]:
                    j = 0

                    while j < len(l) - 1:

                        if l[j] in self.v_fixed[i] and l[j+1] in self.v_fixed[i]:
                            self.a[l[j]].add(l[j+1])
                            self.a[l[j+1]].add(l[j])
                        
                        if l[j] in self.v_fixed[i] and l[j+1] in self.v_var[i]:
                            self.boundary[i].add(l[j])

                        j += 1

                else:
                    j = len(l) - 3
                    while j > 0:
                        if l[j] in self.v_var[i] and l[j-1] in self.v_fixed[i]:
                            self.boundary[i].add(l[j])

                        if l[j] in self.v_fixed[i] and l[j-1] in self.v_fixed[i]:
                            self.a[l[j]].add(l[j-1])
                            self.a[l[j-1]].add(l[j])
                        j -= 1

            fringe = fringe - enclaves

        self.all_var_v = self.v_var[1].union(self.v_var[2])
        self.all_boundary = self.boundary[1].union(self.boundary[2])
        self.all_fixed = self.e_fixed[1].union(self.e_fixed[2])

        self.all_var_v.add('p2')
        self.all_var_v.add('p3')

        for v1 in self.all_var_v:
            for v2 in self.all_var_v:
                if v1 != v2:
                    self.a[v1].add(v2)

        for i in [1,2]:
            if i == 1:
                j = 2
            else :
                j = 1
            
            for v1 in self.boundary[i]:
                for v2 in self.all_var_v:
                    if v1 != v2:
                        #pass
                        # Change this later
                        self.a[v1].add(v2)
                        self.a[v2].add(v1)
                
  
            for v1 in self.boundary[i]:
                for v2 in self.boundary[j]:
                    if v1 != v2:
                        #pass
                        # Change this later
                        self.a[v1].add(v2)
                        self.a[v2].add(v1)
  

        for e in self.egress:
            self.a[e] = set([self.egress[e][0]])
            for i in [1,2]:
                for v in [x for x in self.v[i] if x not in self.enc[i]]:
                    if v != self.egress[e][0]:
                        if e in self.a[v]:
                            self.a[v].remove(e)
            
        for e in self.egress:
            self.a[self.egress[e][0]].add(e)


        print("Adjacency Matrix : ", self.a)

        self.gatherShareData()

    def gatherShareData(self):
        self.src_sharing = defaultdict(lambda : defaultdict(lambda : defaultdict(int)))
        self.dst_sharing = defaultdict(lambda : defaultdict(lambda : defaultdict(int)))

        source_trees = {}
        
        edges_by_src = defaultdict(list)
        edges_by_dst = defaultdict(list)

        for i in [1,2]:
            p = self.path.split('/')[:len(self.path) - 1]
            p.append(str(i))
            p = '/'.join(p)

            f = open(p + '/orig_path.txt', 'r')

            for l in f:
                l = l.strip().split(' ')
                s = l[0]
                d = l[-1]
                for j in range(len(l)-1):
                    edge = ((l[j], l[j+1]))
                    edges_by_src[s].append(edge)
                    edges_by_dst[d].append(edge)
                    
            
        for s in edges_by_src:
            G = nx.DiGraph()
            G.add_edges_from(edges_by_src[s])
            
            i = 1
            if s in self.enc[2]:
                i = 2

            for b1 in self.boundary[i]:
                if b1 not in list(G.nodes) or nx.has_path(G, s, b1) == False:
                    j = 1
                    if i == 1:
                        j = 2
                        
                    all_recv_enc = self.fixed[i].union(self.enc[j])
                    for r in all_recv_enc:
                        v_var = self.vh.getVariable('v', 'v_' + str(b2) + '_' + str(s) + '_' + str(r))
                        cons = Constraint(0, 0, [[v_var]], [1])
                        self.constraints[cons.id] = cons

                    continue

                p1 = nx.dijkstra_path(G, s, b1)

                for b2 in self.boundary[i]:
                    if b2 not in list(G.nodes) or nx.has_path(G, s, b2) == False:
                        j = 1
                        if i == 1:
                            j = 2
                        
                        all_recv_enc = self.fixed[i].union(self.enc[j])
                        for r in all_recv_enc:
                            v_var = self.vh.getVariable('v', 'v_' + str(b2) + '_' + str(s) + '_' + str(r))
                            cons = Constraint(0, 0, [[v_var]], [1])
                            self.constraints[cons.id] = cons

                        ## Set that v_var to 0
                        continue

                    p2 = nx.dijkstra_path(G, s, b2)
                    common_path = set(p1).intersection(set(p2))
                    #print(s, b1, b2, "common path : ", common_path)
                    self.src_sharing[s][b1][b2] = len(common_path)


                
        for d1 in edges_by_dst:
            i = 1
            if d1 in self.enc[2]:
                i = 2

            G1 = nx.DiGraph()
            G1.add_edges_from(edges_by_dst[d1])


            for d2 in edges_by_dst:

                G2 = nx.DiGraph()
                G2.add_edges_from(edges_by_dst[d2])

                if d1 != d2 and d2 in self.enc[i]:
                    
                    for b in self.boundary[i]:
                        flat = 0

                        if b not in list(G1.nodes) or nx.has_path(G1, b, d1) == False:
                            j = 1
                            if i == 1:
                                j = 2
                        
                            all_src_enc = self.fixed[i].union(self.enc[j])

                            for s in all_src_enc:
                                v_var = self.vh.getVariable('v', 'v_' + str(b) + '_' + str(s) + '_' + str(d1))
                                cons = Constraint(0, 0, [[v_var]], [1])
                                self.constraints[cons.id] = cons
                            continue

                        if b not in list(G2.nodes) or nx.has_path(G2, b, d2) == False:
                            ## set the corresponding v variable to 0
                            j = 1
                            if i == 1:
                                j = 2
                        
                            all_src_enc = self.fixed[i].union(self.enc[j])
                            for s in all_src_enc:
                                v_var = self.vh.getVariable('v', 'v_' + str(b) + '_' + str(s) + '_' + str(d2))
                                cons = Constraint(0, 0, [[v_var]], [1])
                                self.constraints[cons.id] = cons
                            ## Set that v_var to 0
                            continue
                            

                        p1 = nx.dijkstra_path(G1, b, d1)
                        p2 = nx.dijkstra_path(G2, b, d2)

                        common_path = set(p1).intersection(set(p2))
                        #print(b, d1, d2, "common path : ", common_path)
                        self.dst_sharing[b][d1][d2] = len(common_path) 
                        


    # Done
    def bidirectionaledges(self):
        for v1 in self.all_var_v:
            for v2 in self.a[v1]:
                if v1 <= v2:
                    continue
                
                w1_var = self.vh.getVariable('w' , 'w_' + str(v1) + '_' + str(v2), 0, 1)
                w2_var = self.vh.getVariable('w', 'w_' + str(v2) + '_' + str(v1), 0, 1)

                x_var = self.vh.getVariable('x' , 'x_' + str(v1) + '_' + str(v2), 0, 1)

                c = Constraint(0, "Na", [[x_var], [w1_var], [w2_var]], [1, -1, 1])
                self.constraints[c.id] = c

                c = Constraint(0, "Na", [[x_var], [w2_var], [w1_var]], [1, -1, 1])
                self.constraints[c.id] = c

                self.obj.vars.append([x_var])
                self.obj.coeffs.append(15)

                self.obj.vars.append([w1_var])
                self.obj.coeffs.append(5)



    def addSharingConstraints2(self, s, t1, t2, t3, paths):
        
        p1 = paths[((s, t1))]
        p2 = paths[((s, t2))]
        p3 = paths[((S, t3))]

        s_1 = set(p1).intersection(set(p2))
        s_2 = set(p2).intersection(set(p3))

        global counter
        global counter2

        all_vertices = self.boundary[1].union(self.boundary[2]).union(self.all_var_v)
        
        p1_var = self.vh.getVariable('p', 'p_' +  str(counter), 0, 20)
        counter += 1
        p_vars = []
        p_coeffs = []

        p_vars.append([p1_var])
        p_coeffs.append(1)

        for v1 in self.all_var_v:


            q_var = self.vh.getVariable('q', 'q_' + str(counter2), 0, 1)
            counter2 += 1

            v1_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(t1), 0, 1)
            v2_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(t2), 0, 1)
            
            co = Constraint("Na", 0, [[q_var], [v1_var]], [1, -1])
            self.constraints[co.id] = co
            
            co = Constraint("Na", 0, [[q_var], [v2_var]], [1, -1])
            self.constraints[co.id] = co
                        
            co = Constraint(-1 , "Na", [[q_var], [v1_var], [v2_var]], [1, -1, -1])
            self.constraints[co.id] = co
            
            p_vars.append([q_var])
            p_coeffs.append(-1)

            
        co = Constraint("Na", 0, p_vars, p_coeffs)
        co.rewrite = True
        self.constraints[co.id] = co
                    
        co = Constraint(0, "Na", p_vars, p_coeffs)
        co.rewrite = True
        self.constraints[co.id] = co
        
        p2_var = self.vh.getVariable('p', 'p_' +  str(counter), 0, 20)
        counter += 1
        p_vars = []
        p_coeffs = []

        p_vars.append([p2_var])
        p_coeffs.append(1)

        for v1 in all_var_v:

            q_var = self.vh.getVariable('q', 'q_' + str(counter2), 0, 1)
            counter2 += 1

            v1_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(t2), 0, 1)
            v2_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(t3), 0, 1)
            
            co = Constraint("Na", 0, [[q_var], [v1_var]], [1, -1])
            self.constraints[co.id] = co
            
            co = Constraint("Na", 0, [[q_var], [v2_var]], [1, -1])
            self.constraints[co.id] = co
                        
            co = Constraint(-1 , "Na", [[q_var], [v1_var], [v2_var]], [1, -1, -1])
            self.constraints[co.id] = co
            
            p_vars.append([q_var])
            p_coeffs.append(-1)
                
            
        co = Constraint("Na", 0, p_vars, p_coeffs)
        co.rewrite = True
        self.constraints[co.id] = co
                    
        co = Constraint(0, "Na", p_vars, p_coeffs)
        co.rewrite = True
        self.constraints[co.id] = co
            
        e_var = self.vh.getVariable('e' , 'e_' + str(count3), 0, 1)
        counter3 += 1
        count_constraints += 1
        c.is_nary = False
                                               
        if c.is_nary == False:
            co = Constraint(-50, -1, [[p2_var], [p1_var], [e_var]], [1, -1, -50])
            self.constraints[co.id] = co
            self.obj.vars.append([e_var])
            self.obj.coeffs.append(2)
        else :
            co = Constraint(-49, 0, [[p2_var], [p1_var], [e_var]], [1, -1, -50])
            err_var = self.vh.getVariable('f', 'f_' + str(count4), 0, 5)
            co = Constraint(0, "Na", [[err_var], [p2_var], [p1_var]], [1, -1, 1])
            self.constraints[co.id] = co
            
            co = Constraint(0, "Na", [[err_var], [p2_var], [p1_var]], [1, 1, -1])
            self.constraints[co.id] = co
            
            self.obj.vars.append([err_var])
            self.obj.coeffs.append(2)

        counter4 += 1

        



    def addSharingConstraints1(self, s, t1, t2, t3, paths):
        
        p1 = paths[((s, t1))]
        p2 = paths[((s, t2))]
        p3 = paths[((S, t3))]

        s_1 = set(p1).intersection(set(p2))
        s_2 = set(p2).intersection(set(p3))

        global counter
        global counter2

        ## Shared path s to t1 and t2

        p1_var = self.vh.getVariable('p', 'p_' +  str(counter), 0, 20)
        counter += 1
        p_vars = []
        p_coeffs = []

        p_vars.append([p1_var])
        p_coeffs.append(1)


        if s in self.enc[1]:
            bounadary = self.boundary[1]
        else:
            boundary = self.boundary[2]

        for v1 in boundary:
            for v2 in boundary:
                q_var = self.vh.getVariable('q', 'q_' + str(counter2), 0, 1)
                counter2 += 1

                v1_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(t1), 0, 1)
                v2_var = self.vh.getVariable('v', 'v_' + str(v2) + '_' + str(s) + '_' + str(t2), 0, 1)
            
                co = Constraint("Na", 0, [[q_var], [v1_var]], [1, -1])
                self.constraints[co.id] = co
            
                co = Constraint("Na", 0, [[q_var], [v2_var]], [1, -1])
                self.constraints[co.id] = co
                        
                co = Constraint(-1 , "Na", [[q_var], [v1_var], [v2_var]], [1, -1, -1])
                self.constraints[co.id] = co
            
                p_vars.append([q_var])
                count2 += 1
                if v1 not in self.sharing_by_src[s] or v2 not in self.sharing_by_src[s][v1]:
                    p_coeffs.append(0)
                else:
                    p_coeffs.append(-1 * sharing_by_src[s][v1][v2])
                        

        for v1 in self.all_var_v:


            q_var = self.vh.getVariable('q', 'q_' + str(counter2), 0, 1)
            counter2 += 1

            v1_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(t1), 0, 1)
            v2_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(t2), 0, 1)
            
            co = Constraint("Na", 0, [[q_var], [v1_var]], [1, -1])
            self.constraints[co.id] = co
            
            co = Constraint("Na", 0, [[q_var], [v2_var]], [1, -1])
            self.constraints[co.id] = co
                        
            co = Constraint(-1 , "Na", [[q_var], [v1_var], [v2_var]], [1, -1, -1])
            self.constraints[co.id] = co
            
            p_vars.append([q_var])
            p_coeffs.append(-1)
                

        if t1 in fix[j] and t2 in fix[j]:
            boundary = self.boundary[j]
            for v1 in boundary:

                q_var = self.vh.getVariable('q', 'q_' + str(counter2), 0, 1)
                counter2 += 1
                
                v1_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(t1), 0, 1)
                v2_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(t2), 0, 1)
            
                co = Constraint("Na", 0, [[q_var], [v1_var]], [1, -1])
                self.constraints[co.id] = co
                
                co = Constraint("Na", 0, [[q_var], [v2_var]], [1, -1])
                self.constraints[co.id] = co
                
                co = Constraint(-1 , "Na", [[q_var], [v1_var], [v2_var]], [1, -1, -1])
                self.constraints[co.id] = co
            
                p_vars.append([q_var])
                if t1 not in self.sharing_by_dst[v1] or t2 not in self.sharing_by_dst[v1][t1]:
                    p_coeffs.append(0)
                else:
                    p_coeffs.append(-1 * len(self.sharing_by_dst[v1][t1][t2]) )

                
            
        co = Constraint("Na", 0, p_vars, p_coeffs)
        co.rewrite = True
        self.constraints[co.id] = co
                    
        co = Constraint(0, "Na", p_vars, p_coeffs)
        co.rewrite = True
        self.constraints[co.id] = co


        ## Shared path between s t2 and t3

        
        p2_var = self.vh.getVariable('p', 'p_' +  str(counter), 0, 20)
        counter += 1
        p_vars = []
        p_coeffs = []

        p_vars.append([p2_var])
        p_coeffs.append(1)


        if s in self.enc[1]:
            bounadary = self.boundary[1]
        else:
            boundary = self.boundary[2]

        for v1 in boundary:
            for v2 in boundary:
                q_var = self.vh.getVariable('q', 'q_' + str(counter2), 0, 1)
                counter2 += 1

                v1_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(t2), 0, 1)
                v2_var = self.vh.getVariable('v', 'v_' + str(v2) + '_' + str(s) + '_' + str(t3), 0, 1)
            
                co = Constraint("Na", 0, [[q_var], [v1_var]], [1, -1])
                self.constraints[co.id] = co
            
                co = Constraint("Na", 0, [[q_var], [v2_var]], [1, -1])
                self.constraints[co.id] = co
                        
                co = Constraint(-1 , "Na", [[q_var], [v1_var], [v2_var]], [1, -1, -1])
                self.constraints[co.id] = co
            
                p_vars.append([q_var])
                count2 += 1
                if v1 not in self.sharing_by_src[s] or v2 not in self.sharing_by_src[s][v1]:
                    p_coeffs.append(0)
                else:
                    p_coeffs.append(-1 * sharing_by_src[s][v1][v2])
                        

        for v1 in self.all_var_v:

            q_var = self.vh.getVariable('q', 'q_' + str(counter2), 0, 1)
            counter2 += 1

            v1_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(t2), 0, 1)
            v2_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(t3), 0, 1)
            
            co = Constraint("Na", 0, [[q_var], [v1_var]], [1, -1])
            self.constraints[co.id] = co
            
            co = Constraint("Na", 0, [[q_var], [v2_var]], [1, -1])
            self.constraints[co.id] = co
                        
            co = Constraint(-1 , "Na", [[q_var], [v1_var], [v2_var]], [1, -1, -1])
            self.constraints[co.id] = co
            
            p_vars.append([q_var])
            p_coeffs.append(-1)
                

        if t2 in fix[j] and t3 in fix[j]:
            boundary = self.boundary[j]
            for v1 in boundary:

                q_var = self.vh.getVariable('q', 'q_' + str(counter2), 0, 1)
                counter2 += 1
                
                v1_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(t2), 0, 1)
                v2_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(t3), 0, 1)
            
                co = Constraint("Na", 0, [[q_var], [v1_var]], [1, -1])
                self.constraints[co.id] = co
                
                co = Constraint("Na", 0, [[q_var], [v2_var]], [1, -1])
                self.constraints[co.id] = co
                
                co = Constraint(-1 , "Na", [[q_var], [v1_var], [v2_var]], [1, -1, -1])
                self.constraints[co.id] = co
            
                p_vars.append([q_var])
                if t2 not in self.sharing_by_dst[v1] or t3 not in self.sharing_by_dst[v1][t2]:
                    p_coeffs.append(0)
                else:
                    p_coeffs.append(-1 * len(self.sharing_by_dst[v1][t2][t3]) )

                
            
        co = Constraint("Na", 0, p_vars, p_coeffs)
        co.rewrite = True
        self.constraints[co.id] = co
                    
        co = Constraint(0, "Na", p_vars, p_coeffs)
        co.rewrite = True
        self.constraints[co.id] = co

        e_var = self.vh.getVariable('e' , 'e_' + str(count3), 0, 1)
        counter3 += 1
        count_constraints += 1
        c.is_nary = False
                                               
        if c.is_nary == False:
            co = Constraint(-50, -1, [[p2_var], [p1_var], [e_var]], [1, -1, -50])
            self.constraints[co.id] = co
            self.obj.vars.append([e_var])
            self.obj.coeffs.append(2)
        else :
            co = Constraint(-49, 0, [[p2_var], [p1_var], [e_var]], [1, -1, -50])
            err_var = self.vh.getVariable('f', 'f_' + str(count4), 0, 5)
            co = Constraint(0, "Na", [[err_var], [p2_var], [p1_var]], [1, -1, 1])
            self.constraints[co.id] = co
            
            co = Constraint(0, "Na", [[err_var], [p2_var], [p1_var]], [1, 1, -1])
            self.constraints[co.id] = co
            
            self.obj.vars.append([err_var])
            self.obj.coeffs.append(2)

        counter4 += 1


    def covarianceTreeConstraints(self):


        f = open(self.path + '/orig_path.txt', 'r')
        paths = dict()
        for l in f:
            l = l.strip().split()
            s = l[0]
            t = l[-1]
            paths[((s,t))] = l
        f.close()

        fix = defaultdict(set)
        fix[1] = set([x for x in self.enc[1] if x not in self.fixed[1]])            
        fix[2] = set([x for x in self.enc[2] if x not in self.fixed[2]])

        for i in [1,2]:
            j = 1
            if i == 1:
                j = 2

            rest_enclaves = self.fixed[i].union(self.enc[j])
            rest_enclaves.sort()
            
            for s in fix[i]:
                for m in range(len(rest_enclaves) - 3):
                    for n in range(m+1, len(rest_enclaves) - 2):
                        for o in range(n+1, len(rest_enclaves) - 1):
                            t1 = rest_enclaves[m]
                            t2 = rest_enclaves[n]
                            t3 = rest_enclaves[o]
                            self.addSharingConstraint1(s, t1, t2, t3, paths)


        flux = self.fixed[1].union(self.fixed[2])
        flux.sort()
        for s in flux:
            rest_enclaves = [x for x in flux if x != s]
            rest_enclaves.sort()

            for m in range(len(rest_enclaves) - 3):
                for n in range(m+1, len(rest_enclaves) - 2):
                    for o in range(n+1, len(rest_enclaves) - 1):
                        t1 = rest_enclaves[m]
                        t2 = rest_enclaves[n]
                        t3 = rest_enclaves[o]
                        self.addSharingConstraint2(s, t1, t2, t3, paths)

            
    def destinationTreeConstraints(self):
        for i in [1,2]:
            j = 1
            if i == 1:
                j = 2

            all_enc = self.enc[1].union(self.enc[2])
            all_vertices = self.boundary[1].union(self.all_var_v).union(self.boundary[j])
            for e in all_enc:
                for v1 in all_vertices:
                    d_vars = []

                    for v2 in all_vertices:
                        if v1 == v2:
                            continue

                        d_var = self.vh.getVariable('d', 'd_' + str(v1) + '_' + str(v2) + '_' + str(e))
                        d_vars.append([d_var])
                    
                    c = Constraint(0, 1, d_vars, [1]*len(d_vars))
                    self.constraints[c.id] = c


            flux = self.fixed[1].union(self.fixed[2])
            for e in flux:
                egress = self.egress[e][0]
                d_var = self.vh.getVariable('d', 'd_' + str(egress) + '_' + str(e) + '_' + str(e))
                c = Constraint(1, 1, [[d_var]], [1])
                self.constraints[cons.id] = c

            count = 1

        for i in [1,2]:
            if i == 1:
                j = 0
            else:
                j = 1


            for t in self.enc[i]:
                all_vertices = self.all_var_v + self.boundary[i] + self.boundary[j]
                
                for v1 in all_vertices:
                    for v2 in all_vertices:

                        if v1 == v2:
                            continue
                
                        k_vars = []
                        k_coeffs = []

                        for s in self.e[j].union(self.e[i]):

                            if s == t:
                                continue

                            k_var = self.vh.getVariable('k', 'k_' +str(count), 0, 1)
                            count += 1
                                
                            if self.check_s(d, v2, v1) == True:# and self.check_if_edge_by_src(d, ((v2, v1))) == True:

                                s_var = self.vh.getVariable('s', 's_' + str(v2) + '_' + str(v1) + '_' + str(d))
                                v_va = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(d))
                                                            
                                c = Constraint("Na", 0, [[k_var], [s_var]], [1, -1])
                                self.constraints[c.id] = c

                                c = Constraint("Na", 0, [[k_var], [v_va]], [1, -1])
                                self.constraints[c.id] = c
                                    
                                c = Constraint(-1, "Na", [[k_var], [s_var], [v_va]], [1 , -1, -1])
                                self.constraints[c.id] = c
                            
                                k_vars.append([k_var])
                                k_coeffs.append(1)


                        d_var = self.vh.getVariable('d', 'd_' + str(v2) + '_' + str(v1) + '_' + str(d), 0 ,1)
                        k_vars.append([d_var])
                        k_coeffs.append(-1 * len(k_vars) - 1)
                        
                        c = Constraint(-1 * len(k_vars), 0, k_vars, k_coeffs)
                        self.constraints[c.id] = c





    # Done
    def destinationTreeConstraints(self):
        for i in [1,2]:
            if i == 1:
                j = 2
            else :
                j = 1
            
            for e in self.enc[i]:
                req_v = self.v_fixed[j]
                req_v = set(req_v).union(self.all_var_v)
                
                for v1 in req_v:
                    d_vars = list()
                    for v2 in self.a[v1]:
                        if v2 == v1:
                            continue

                        if self.check_d(e, v1, v2):
                            d_var = self.vh.getVariable('d', 'd_' + str(v1) + '_' + str(v2) + '_' + str(e))
                            d_vars.append([d_var])

                    cons = Constraint(0, 1, d_vars, [1] * len(d_vars))
                    self.constraints[cons.id] = cons
                        
        ## write egress constrants
        for i in [1,2]:
            for e in self.enc[i]:
                egress = self.egress[e][0]
                d_var = self.vh.getVariable('d', 'd_' + str(egress) + '_' + str(e) + '_' + str(e))
                c = Constraint(1, 1, [[d_var]], [1])
                self.constraints[cons.id] = c


        count = 1

        for i in [1,2]:
            if i == 1:
                j = 0
            else:
                j = 1

            for d in self.enc[i]:
                j = 1
                if i == 2:
                    j = 2

                req_vertices = self.all_var_v
                req_vertices = req_vertices.union(self.v[j]).union(self.v[i])

                for v1 in req_vertices:
                    for v2 in self.a[v1]:

                        if self.check_d(v1, v2, d):

                            k_vars = []
                            k_coeffs = []

                            for s in self.e[j]:

                                k_var = self.vh.getVariable('k', 'k_' +str(count), 0, 1)
                                count += 1
            
                                if self.check_s(d, v2, v1) == True:# and self.check_if_edge_by_src(d, ((v2, v1))) == True:

                                    s_var = self.vh.getVariable('s', 's_' + str(v2) + '_' + str(v1) + '_' + str(d))
                                    v_va = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(d))
                                                            
                                    c = Constraint("Na", 0, [[k_var], [s_var]], [1, -1])
                                    self.constraints[c.id] = c

                                    c = Constraint("Na", 0, [[k_var], [v_va]], [1, -1])
                                    self.constraints[c.id] = c
                            
                                    c = Constraint(-1, "Na", [[k_var], [s_var], [v_va]], [1 , -1, -1])
                                    self.constraints[c.id] = c
                            
                                    k_vars.append([k_var])
                                    k_coeffs.append(1)



                            d_var = self.vh.getVariable('d', 'd_' + str(v1) + '_' + str(v2) + '_' + str(d), 0 ,1)
                            k_vars.append([d_var])
                            k_coeffs.append(-1 * len(k_vars) - 1)

                            c = Constraint(-1 * len(k_vars), 0, k_vars, k_coeffs)
                            self.constraints[c.id] = c



    def bidirectionaledges(self):
        for v1 in self.all_var_v:
            for v2 in self.a[v1]:
                if v1 <= v2:
                    continue
                
                w1_var = self.vh.getVariable('w' , 'w_' + str(v1) + '_' + str(v2), 0, 1)
                w2_var = self.vh.getVariable('w', 'w_' + str(v2) + '_' + str(v1), 0, 1)

                x_var = self.vh.getVariable('x' , 'x_' + str(v1) + '_' + str(v2), 0, 1)

                c = Constraint(0, "Na", [[x_var], [w1_var], [w2_var]], [1, -1, 1])
                self.constraints[c.id] = c

                c = Constraint(0, "Na", [[x_var], [w2_var], [w1_var]], [1, -1, 1])
                self.constraints[c.id] = c

                self.obj.vars.append([x_var])
                self.obj.coeffs.append(10)

                self.obj.vars.append([w1_var])
                self.obj.coeffs.append(20)


    def destinationTreeConstraints(self):
        for i in [1,2]:
            if i == 1:
                j = 2
            else :
                j = 1
            
            for e in self.enc[i]:
                req_v = self.v_fixed[j]
                req_v = set(req_v).union(self.all_var_v)
                
                for v1 in req_v:
                    d_vars = list()
                    for v2 in self.a[v1]:
                        if v2 == v1:
                            continue

                        if self.check_d(e, v1, v2):
                            d_var = self.vh.getVariable('d', 'd_' + str(v1) + '_' + str(v2) + '_' + str(e))
                            d_vars.append([d_var])

                    cons = Constraint(0, 1, d_vars, [1] * len(d_vars))
                    self.constraints[cons.id] = cons
                        
        ## write egress constrants
        for i in [1,2]:
            for e in self.enc[i]:
                egress = self.egress[e][0]
                d_var = self.vh.getVariable('d', 'd_' + str(egress) + '_' + str(e) + '_' + str(e))
                c = Constraint(1, 1, [[d_var]], [1])
                self.constraints[cons.id] = c


        count = 1

        for i in [1,2]:
            if i == 1:
                j = 0
            else:
                j = 1

            for d in self.enc[i]:
                j = 1
                if i == 2:
                    j = 2

                req_vertices = self.all_var_v
                req_vertices = req_vertices.union(self.v[j]).union(self.v[i])

                for v1 in req_vertices:
                    for v2 in self.a[v1]:

                        if self.check_d(v1, v2, d):

                            k_vars = []
                            k_coeffs = []

                            for s in self.e[j]:

                                k_var = self.vh.getVariable('k', 'k_' +str(count), 0, 1)
                                count += 1
            
                                if self.check_s(d, v2, v1) == True:# and self.check_if_edge_by_src(d, ((v2, v1))) == True:


                                    s_var = self.vh.getVariable('s', 's_' + str(v2) + '_' + str(v1) + '_' + str(d))
                                    v_va = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(d))
                            
                                
                                    c = Constraint("Na", 0, [[k_var], [s_var]], [1, -1])
                                    self.constraints[c.id] = c

                                    c = Constraint("Na", 0, [[k_var], [v_va]], [1, -1])
                                    self.constraints[c.id] = c
                            
                                    c = Constraint(-1, "Na", [[k_var], [s_var], [v_va]], [1 , -1, -1])
                                    self.constraints[c.id] = c
                            
                                    k_vars.append([k_var])
                                    k_coeffs.append(1)



                            d_var = self.vh.getVariable('d', 'd_' + str(v1) + '_' + str(v2) + '_' + str(d), 0 ,1)
                            k_vars.append([d_var])
                            k_coeffs.append(-1 * len(k_vars) - 1)

                            c = Constraint(-1 * len(k_vars), 0, k_vars, k_coeffs)
                            self.constraints[c.id] = c




    def buildPathConstraints(self):
        count = 0
        
        fix = defaultdict(set)

        fix[1] = set([x for x in self.enc[1] if x not in self.fixed[1]])            
        fix[2] = set([x for x in self.enc[2] if x not in self.fixed[2]])
                 
        all_enc = self.enc[1].union(self.enc[2])
        flux = self.fixed[1].union(self.fixed[2])

        for i in [1,2]:
            j = 1
            if i == 1:
                j = 2

            rest_enclaves = all_enc - fix[i]

            for e1 in fix[i]:
                for e2 in rest_enclaves:
                    src = e1
                    dst = e2

                    ## src and dst both are fixed 
                    if dst in fix[j]:
                        iis = self.boundary[i].union(self.all_var_v)
                        jjs = self.boundary[j].union(self.all_var_v)

                    else:
                        iis = self.boundary[i].union(self.boundary[j]).union(self.all_var_v)
                        jjs = (self.boundary[j]).union(self.all_var_v)
                        
                    for v1 in iis:
                        v_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(src) + '_' + str(dst))

                        l_vars = []
                        l_vars.append([v1_var])
                        coeff = []
                        coeff.append(1)

                        for v2 in jjs:

                            v2_var = self.vh.getVariable('v' , 'v_' + str(v2) + '_' + str(src) + '_' + str(dst), 0, 1)
                    
                            s_var = self.vh.getVariable('s' , 's_' + str(v1) + '_' + str(v2) + '_' + str(src), 0, 1)
                                
                            l_var = self.vh.getVariable('l',  'l_' + str(count), 0, 1)

                            count += 1
                            c = Constraint("Na", 0, [[l_var], [s_var]], [1, -1])
                            self.constraints[c.id] = c

                            c = Constraint("Na", 0, [[l_var], [v2_var]], [1, -1])
                            self.constraints[c.id] = c
                    
                            c = Constraint(-1, "Na", [[l_var], [s_var], [v2_var]], [1 , -1, -1])
                            self.constraints[c.id] = c
                    
                            l_vars.append([l_var])
                            coeff.append(-1)
                                
                        c = Constraint(0, 0, l_vars, coeff) 
                        self.constraints[c.id] = c
                            

                    src = e2
                    dst = e1
                    #iis = self.boundary[i].union(self.boundary[j]).union(self.all_var_v)
                    iis = (self.boundary[j]).union(self.all_var_v)
                    jjs = self.boundary[i].union(self.boundary[j]).union(self.all_var_v)

                    for v1 in iis:
                        v_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(src) + '_' + str(dst))

                        l_vars = []
                        l_vars.append([v1_var])
                        coeff = []
                        coeff.append(1)

                        for v2 in jjs:

                            v2_var = self.vh.getVariable('v' , 'v_' + str(v2) + '_' + str(src) + '_' + str(dst), 0, 1)
                    
                            s_var = self.vh.getVariable('s' , 's_' + str(v1) + '_' + str(v2) + '_' + str(src), 0, 1)
                                
                            l_var = self.vh.getVariable('l',  'l_' + str(count), 0, 1)

                            count += 1
                            c = Constraint("Na", 0, [[l_var], [s_var]], [1, -1])
                            self.constraints[c.id] = c

                            c = Constraint("Na", 0, [[l_var], [v2_var]], [1, -1])
                            self.constraints[c.id] = c
                    
                            c = Constraint(-1, "Na", [[l_var], [s_var], [v2_var]], [1 , -1, -1])
                            self.constraints[c.id] = c
                    
                            l_vars.append([l_var])
                            coeff.append(-1)
                                
                        c = Constraint(0, 0, l_vars, coeff) 
                        self.constraints[c.id] = c
         



        for src in flux:
            for dst in flux:
                
                iis = self.boundary[i].union(self.boundary[j]).union(self.all_var_v)
                jjs = self.boundary[i].union(self.boundary[j]).union(self.all_var_v)
                
                for v1 in iis:
                    v_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(src) + '_' + str(dst))
                    
                    l_vars = []
                    l_vars.append([v1_var])
                    coeff = []
                    coeff.append(1)

                    for v2 in jjs:

                        v2_var = self.vh.getVariable('v' , 'v_' + str(v2) + '_' + str(src) + '_' + str(dst), 0, 1)
                    
                        s_var = self.vh.getVariable('s' , 's_' + str(v1) + '_' + str(v2) + '_' + str(src), 0, 1)
                        
                        l_var = self.vh.getVariable('l',  'l_' + str(count), 0, 1)

                        count += 1
                        c = Constraint("Na", 0, [[l_var], [s_var]], [1, -1])
                        self.constraints[c.id] = c
                        
                        c = Constraint("Na", 0, [[l_var], [v2_var]], [1, -1])
                        self.constraints[c.id] = c
                        
                        c = Constraint(-1, "Na", [[l_var], [s_var], [v2_var]], [1 , -1, -1])
                        self.constraints[c.id] = c
                    
                        l_vars.append([l_var])
                        coeff.append(-1)
                                
                    c = Constraint(0, 0, l_vars, coeff) 
                    self.constraints[c.id] = c
         

    def readTrees(self):
        trees = dict()
        paths = open(self.path + '/orig_path.txt', 'r')
        for p in paths:
            p = p.strip().split(' ')
            s = p[0]
            t = p[-1]

            if s not in trees:
                trees[s] = Tree(s)

            root = trees[s]
            curr_node = root

            for r in p[1:]:
                found = False
                if r in [c.id for c in curr_node.children]:
                    for c in curr_node.children:
                        if r == c.id:
                            curr_node = c
                            break
                else:
                    new_node = Tree(r)
                    curr_node.children.append(new_node)
                    curr_node = new_node
            
        paths.close()
        tree_children = trees[s].children
        x = tree_children[0]
        return trees

    def condense_trees(self,trees):
        for s in trees:
            tree = trees[s]
            pairs = list()
            for c in tree.children:
                pair = ((c, tree))
                pairs.append(pair)
            while len(pairs) > 0:
                p = pairs.pop(0)
                np = p[0]
                if len(p[0].children) == 1:
                    p[1].children = [ c for c in p[1].children if c.id != p[0].id]
                    p[1].children.extend(p[0].children)
                    np = p[1]
                for c in p[0].children:
                    pairs.append((c, np))


    def nTreeToBinaryTree(self, t):
        import random

        if len(t.children) == 0:
            return 
        else:
            while len(t.children) > 2:
                c2 = t.children.pop(2)
                pop_node = random.randint(0, 1)

                c0 = t.children.pop(pop_node)
                cnew = Tree('r')
                cnew.is_nary = True                
                cnew.children.append(c2)
                cnew.children.append(c0)
                t.children.append(cnew)                

            for c in t.children:
                self.nTreeToBinaryTree(c)


    def nTreesToBinary(self, trees):
        for s in trees:
            t = trees[s]
            self.nTreeToBinaryTree(t)
            


    def covarianceTreeConstraints(self):
        pass

    # needs to be fixed
    def covarianceTreeConstraints(self):
        trees = self.readTrees()
        self.condense_trees(trees)
        #self.nTreesToBinary(trees)

        count_constraints = 0

        count = 0
        count2 = 0
        count3 = 0
        count4 = 0

        f = open("covariances.txt", "w")
        f1 = open("covarianceconstraints.txt", "w")

        for s in trees:

            tree = trees[s].children[0]
            
            node_list = list()
            node_list.append(tree)            

            while len(node_list) > 0:
                curr_node = node_list.pop(0)
                

                for c in curr_node.children:
                    if len(c.children) == 0:
                        continue
                    if len(c.children) == 1:
                        node_list.append(c)
                        continue

                    node_list.append(c)

                    ## Writing a constraint for currnode and c
                    v1_list = c.leafs()

                    v2_list = [d for d in curr_node.leafs() if d.id not in [x.id for x in c.leafs()]]

                    if len(v1_list) == 0 or len(v1_list) == 1 or len(v2_list) == 0:
                        continue

                    ucv1 = v1_list[0]
                    cv = v1_list[-1]
                    ucv2 = v2_list[0]

                    ## shared path length between ucv1 and cv
                                        
                    p1_var = self.vh.getVariable('p', 'p_' +  str(count),0, 10)
                    count += 1
                    p_vars = []
                    p_coeffs = []

                    p_vars.append([p1_var])
                    p_coeffs.append(1)

                    f.write(str(count) + " " + str(s) + " " + str(cv.id) + " " + str(ucv1.id))
                    f.write("\n")

                    for v1 in self.v:
                        q_var = self.vh.getVariable('q', 'q_' + str(count2), 0, 1)
                        v1_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(ucv1.id), 0, 1)
                        v2_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(cv.id), 0, 1)
                        
                        co = Constraint("Na", 0, [[q_var], [v1_var]], [1, -1])
                        self.constraints[co.id] = co

                        co = Constraint("Na", 0, [[q_var], [v2_var]], [1, -1])
                        self.constraints[co.id] = co

                        co = Constraint(-1 , "Na", [[q_var], [v1_var], [v2_var]], [1, -1, -1])
                        self.constraints[co.id] = co

                        #p_vars.append([v1_var, v2_var])
                        p_vars.append([q_var])
                        count2 += 1
                        p_coeffs.append(-1)
                        
                    co = Constraint("Na", 0, p_vars, p_coeffs)
                    co.rewrite = True
                    self.constraints[co.id] = co
                    
                    co = Constraint(0, "Na", p_vars, p_coeffs)
                    co.rewrite = True
                    self.constraints[co.id] = co


                    ## shared path length between ucv2 and cv
                    p2_var = self.vh.getVariable('p', 'p_' +  str(count),0, 10)

                    f1.write(str(s) + " " + str(cv.id) + " " + str(ucv1.id) + " " + str(ucv2.id) + " " + str(curr_node.id) + " " + str(c.id) + " " + str(count - 1) + " " + str(count) + " " + str(count3))
                    f1.write("\n")

                    count += 1
                    p_vars = []
                    p_coeffs = []

                    p_vars.append([p2_var])
                    p_coeffs.append(1)

                    f.write(str(count) + " " + str(s) + " " + str(cv.id) + " " + str(ucv2.id))
                    f.write("\n")

                    for v1 in self.v:
                        q_var = self.vh.getVariable('q', 'q_' + str(count2), 0, 1)
                        v1_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(ucv2.id), 0, 1)
                        v2_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(cv.id), 0, 1)
                        
                        co = Constraint("Na", 0, [[q_var], [v1_var]], [1, -1])
                        self.constraints[co.id] = co

                        co = Constraint("Na", 0, [[q_var], [v2_var]], [1, -1])
                        self.constraints[co.id] = co

                        co = Constraint(-1 , "Na", [[q_var], [v1_var], [v2_var]], [1, -1, -1])
                        self.constraints[co.id] = co

                        p_vars.append([q_var])
                        count2 += 1
                        p_coeffs.append(-1)
                        
                    co = Constraint(0, "Na", p_vars, p_coeffs)
                    co.rewrite = True
                    self.constraints[co.id] = co                    

                    co = Constraint("Na", 0, p_vars, p_coeffs)
                    co.rewrite = True
                    self.constraints[co.id] = co                    

                    e_var = self.vh.getVariable('e' , 'e_' + str(count3), 0, 1)
                    count3 += 1
                    count_constraints += 1
                    c.is_nary = False
                                               
                    if c.is_nary == False:
                        co = Constraint(-50, -1, [[p2_var], [p1_var], [e_var]], [1, -1, -50])
                        self.constraints[co.id] = co
                        self.obj.vars.append([e_var])
                        self.obj.coeffs.append(2)
                    else :
                        co = Constraint(-49, 0, [[p2_var], [p1_var], [e_var]], [1, -1, -50])
                        err_var = self.vh.getVariable('f', 'f_' + str(count4), 0, 5)
                        co = Constraint(0, "Na", [[err_var], [p2_var], [p1_var]], [1, -1, 1])
                        self.constraints[co.id] = co
                                                
                        co = Constraint(0, "Na", [[err_var], [p2_var], [p1_var]], [1, 1, -1])
                        self.constraints[co.id] = co

                        self.obj.vars.append([err_var])
                        self.obj.coeffs.append(2)

                        count4 += 1
                                                                    

    # Done
    def egressConstraint(self):
        all_enc = self.fixed[1].union(self.fixed[2])
        for e in all_enc:            
        # Egress router to src link should be missing
            er = self.egress[e][0]
            s_var = self.vh.getVariableEdit('s', 's_' + str(er) + '_' + str(e) + '_' + str(e), 0 , 0)
            cons = Constraint(0,0,[[s_var]],[1])
            self.constraints[cons.id] = cons

            ## src to egress router link should be present
            s_var = self.vh.getVariableEdit('s', 's_' + str(e) + '_' + str(er) + '_' + str(e), 1 ,1)
            cons = Constraint(1,1,[[s_var]],[1])
            self.constraints[cons.id] = cons
            
            for e1 in all_enc:
                if e1 != e:
                    # edge from egress router of destination to a destination exists
                    er = self.egress[e1][0]
                    s_var = self.vh.getVariableEdit('s', 's_' + str(er) + '_' + str(e1) + '_' + str(e), 1, 1)
                    cons = Constraint(1,1,[[s_var]],[1])
                    self.constraints[cons.id] = cons

                    # edge from dst to its egress router does not exist
                    s_var = self.vh.getVariableEdit('s', 's_' + str(e1) + '_' + str(er) + '_' + str(e), 0, 0)
                    cons = Constraint(0,0,[[s_var]],[1])
                    self.constraints[cons.id] = cons
                   
                    ## There exists no outgoing edge at e1
                    s_vars = []
                    
                    for v1 in self.a[e1]:
                        #if self.check_if_edge_by_src(e, ((e1, v1))) == True:
                        s_var = self.vh.getVariable('s', 's_' + str(e1) + '_' + str(v1) +'_' + str(e))
                        s_vars.append([s_var])


                    if len(s_vars) > 0:
                        cons = Constraint(0, 0, s_vars,[1] * len(s_vars))
                        self.constraints[cons.id] = cons


    def getDistance(self, j , e):
        return 1

    def computeDistances(self):
        fix = defaultdict(set)
        fix[1] = set([x for x in self.enc[1] if x not in self.fixed[1]])            
        fix[2] = set([x for x in self.enc[2] if x not in self.fixed[2]])
        count = 0

        for i in [1,2]:
            j = 1
            if i == 1:
                j = 2
            
            for e1 in fix[i]:
                for e2 in fix[j]:
                    req_vertices = self.boundary[j]
                    m_var = self.vh.getVariable('z', 'z_' + str(e2) + '_' + str(e1), 2, 20)

                    req_vars = []
                    coeffs = []

                    req_vars.append([m_var])
                    coeffs.append(1)

                    for j in req_vertices:
                        v_var = self.vh.getVariable('v', 'v_' + str(j) + '_' + str(e1) + '_' + str(e2))
                        
                        b_var = self.vh.getVariable('b', 'b_' + str(count), 0, 1)
                        
                        req_vars.append([b_var])
                        coeffs.append(-1)

                        count += 1

                        co = Constraint("Na", 0, [[b_var], [v_var]], [1, -1])
                        self.constraints[co.id] = co
            
                        co = Constraint("Na", 0, [[b_var], [m_var]], [1, -1])
                        self.constraints[co.id] = co
                        
                        co = Constraint(-1 , "Na", [[b_var], [v_var], [m_var]], [1, -1, -1])
                        self.constraints[co.id] = co

                        d = self.getDistance(j, e2)
                        
                        req_vars.append([v_var])
                        coeffs.append(-1*d)
                    
                    cons = Constraint(0, 0, req_vars, coeffs)
                    self.constraints[cons.id] = cons
                    

    # Done
    def rdConstraints(self):
        self.computeDistances()

        for s in self.rd:

            distances = self.rd[s]
            distances.sort(key=lambda x: x[1])
            
            #distances = [x for x in distances if x[0] in sources]

            for i in range(1, len(distances)):
                s1 = distances[i-1][0]
                d1 = distances[i-1][1]
                s2 = distances[i][0]
                d2 = distances[i][1]
                

                z1_var = self.vh.getVariable('z', 'z_' + s1 + '_' + s, 2, 20)
                z2_var = self.vh.getVariable('z', 'z_' + s2 + '_' + s, 2, 20)

                if d2 == d1:
                    cons = Constraint(0, "Na", [[z2_var], [z1_var]], [1, -1])
                    self.constraints[cons.id] = cons
                else:
                    cons = Constraint(1, "Na", [[z2_var], [z1_var]], [1, -1])
                    self.constraints[cons.id] = cons


    def cycleConstraints(self):
        count = 0

        for i in [1,2]:
            j = 1
            if i == 1:
                j = 2
        
            for e in self.enc[i]:
                if e in self.fixed[i]:
                    iis = self.all_var_v.union(self.boundary[j]).union(self.boundary[i])
                    jjs = self.all_var_v.union(self.boundary[j]).union(self.boundary[i])
                else:
                    iis = self.all_var_v.union(self.boundary[i])
                    jjs = self.all_var_v.union(self.boundary[j])
                    
                ## If s is in fixed enclaves, an edge from boundary[j] to any other variable vertex is not allowed
                for jj in jjs:
                    new_equ = list()
                    new_coeffs = list()
                    equ = list()
                    coeffs = list()

                    z_var = self.vh.getVariable('z', 'z_' + str(jj) + '_' + e, 2, 20)
                    new_equ.append([z_var])
                    new_coeffs.append(1)


                    for ii in iis:

                        if ii != jj:
                            
                            
                            z_var = self.vh.getVariable('z', 'z_' + str(ii) + '_' + e, 2, 20)
                            s_var = self.vh.getVariable('s', 's_' + str(ii) + '_' + str(jj) + '_' + e)
                            
                            r_var = self.vh.getVariable('r', 'r_' + str(count), 0, 20)
                            count = count + 1
                            
                            new_equ.append([r_var])
                            new_coeffs.append(-1)
        
                            eq1 = Constraint("Na", 0, [[r_var],[s_var]], [1, -20])
                            self.constraints[eq1.id] = eq1
                                
                            eq2 = Constraint(0, "Na", [[r_var],[s_var]], [1, -2])
                            self.constraints[eq2.id] = eq2
                                
                            eq3 = Constraint("Na", -2, [[r_var], [z_var], [s_var]], [1, -1, -2])
                            self.constraints[eq3.id] = eq3
                                
                            eq4 = Constraint(-20, "Na", [[r_var], [z_var], [s_var]], [1,-1,-20])
                                ## To be done
                            self.constraints[eq4.id] = eq4
                        
                            eq5 = Constraint(0, 20, [[r_var], [z_var], [s_var]], [1,-1,20])
                                #self.constraints[eq5.id] = eq5
                                ## To be done
                        
    
                    cons1 = Constraint(1, 1, new_equ, new_coeffs)
                    self.constraints[cons1.id] = cons1
                    

    def boundaryConstraints(self):
        flux = self.fixed[1].union(self.fixed[2])
        for i in [1,2]:
            j = 1
            if i == 1:
                j = 2
            fix_e = set([x for x in self.enc[i] if x not in flux])
            boundary_vertices = self.boundary[i]
            

            # one side to enclaves in flux
            for e1 in fix_e:
                for e2 in flux:
                    v_vars = []
                    for jj in boundary_vertices:
                        v_var = self.vh.getVariable('v', 'v_' + str(jj) + '_' + str(e1) + '_' + str(e2))
                        v_vars.append([v_var])

                    cons = Constraint(1, 1, v_vars, [1] * len(v_vars))
                    self.constraints[cons.id] = cons

            fix_e2 = set([x for x in self.enc[j] if x not in flux])
#            boundary_vertices = self.boundary[j]

            # one side to enclaves in other side
            for e1 in fix_e:
                for e2 in fix_e2:
                    v_vars = []
                    boundary_vertices = self.boundary[j]
                    for jj in boundary_vertices:
                        v_var = self.vh.getVariable('v', 'v_' + str(jj) + '_' + str(e1) + '_' + str(e2))
                        v_vars.append([v_var])
                        
                    cons = Constraint(1, 1, v_vars, [1] * len(v_vars))
                    self.constraints[cons.id] = cons
 
                    v_vars = []
                    boundary_vertices = self.boundary[i]
                    for jj in boundary_vertices:
                        v_var = self.vh.getVariable('v', 'v_' + str(jj) + '_' + str(e1) + '_' + str(e2))
                        v_vars.append([v_var])
                        
                    cons = Constraint(1, 1, v_vars, [1] * len(v_vars))
                    self.constraints[cons.id] = cons
 

               
            # flux to enclave on on one side
            boundary_vertices = self.boundary[i]
            for e1 in flux:
                for e2 in fix_e:
                    v_vars = []
                    for jj in boundary_vertices:
                        v_var = self.vh.getVariable('v', 'v_' + str(jj) + '_' + str(e1) + '_' + str(e2))
                        v_vars.append([v_var])

                    cons = Constraint(1, 1, v_vars, [1] * len(v_vars))
                    self.constraints[cons.id] = cons                                     



    def edgeExistsConstraint(self):            
        for v1 in self.all_var_v:
            for v2 in self.a[v1]:
                if v1 == v2:
                    continue

                edge_vars = list()
                all_enc = self.enc[1].union(self.enc[2])

                for e in all_enc:
                    if self.check_s(e, v1, v2):# and self.check_if_edge_by_src(e, ((v1, v2))) == True:
                        s_var = self.vh.getVariable('s', 's_' + str(v1) + '_' + str(v2) + '_' + str(e))
                        edge_vars.append([s_var])

                coefs = [1] * len(edge_vars) 
                coefs.append(-1 * len(edge_vars) - 1)
                w_var = self.vh.getVariable('w', 'w_' + v1 + '_' + v2)
                edge_vars.append([w_var])
                cons = Constraint(-1 * len(edge_vars), 0, edge_vars, coefs)
                self.constraints[cons.id] = cons




    def srcTreeConstraints(self):

        all_enc = self.enc[1].union(self.enc[2])

        for i in [1,2]:
            j = 1
            if i == 1:
                j = 2

            for e in self.enc[i]:
                if e in self.fixed[i]:
                    js = self.all_var_v.union(self.boundary[j]).union(self.boundary[i])
                    iss = self.all_var_v.union(self.boundary[i]).union(self.boundary[j])
                else:
                    js = self.all_var_v.union(self.boundary[j])
                    iss = self.all_var_v.union(self.boundary[i])

                

                ## Number of incoming edges at jj is less than 1
                for jj in js:
                    s_vars = []
                    
                    for ii in iss:
#                        if self.is_boundary_src(jj, e) == False:
#                            continue
                        s_var = self.vh.getVariable('s', 's_' + str(ii) + '_' + str(jj) + '_' + str(e),0, 1)
                        s_vars.append([s_var])
                        
                    cons = Constraint(0, 1, s_vars, [1] * len(s_vars))
                    self.constraints[cons.id] = cons
                
                
                ## Number of outgoing edges at the border of I is greater than number of incoming at the border
                iss = self.boundary[i]
 
               ## Can decide about letting vertices into the border
                if e in self.fixed[i]:
                    jss = self.boundary[i].union(self.all_var_v).union(self.boundary[j])
                else:
                    jss = (self.all_var_v).union(self.boundary[j])

                for ii in iss:
                    s_vars = []
                    for jj in jss:
                        s_var = self.vh.getVariable('s', 's_' + str(ii) + '_' + str(jj) + '_' + str(e), 0, 1)
                        s_vars.append([s_var])

                    for e1 in all_enc:
                        if e1 == e:
                            continue
                        v_var = self.vh.getVariable('v', 'v_' + str(ii) + '_' + str(e) + '_' + str(e1), 0, 1)

                        cons = Constraint(0, "Na", s_vars + [[v_var]], [1] * len(s_vars) + [-1])
                        self.constraints[cons.id] = cons

                # Number of incoming at the other boundary is >= v_j_st
                jss = self.boundary[j]
                iss = self.boundary[i].union(self.all_var_v)
                
                for jj in jss:
                    s_vars = []
                    for ii in iss:
                        s_var = self.vh.getVariable('s', 's_' + str(ii) + '_' + str(jj) + '_' + str(e), 0, 1)
                        s_vars.append([s_var])

                    for e1 in all_enc:
                        v_var = self.vh.getVariable('s', 's_' + str(ii) + '_' + str(e1), 0, 1)
                        
                        cons = Constraint(0, "Na", s_vars + [[v_var]], [1] * len(s_vars) + [-1])
                        self.constraints[cons.id] = cons
                        
                        
                # Number of outgoing is greater than number of incoming
                iss = self.all_var_v
                
                for ii in iss:
                    if e in self.fixed[i]:
                        jss = self.all_var_v.union(self.boundary[j]).union(self.boundary[i])
                    else:
                        jss = self.all_var_v.union(self.boundary[j])

                    out_vars = []
                    for jj in jss:
                        s_var = self.vh.getVariable('s', 's_' + str(ii) + '_' + str(jj) + '_' + str(e), 0, 1)
                        out_vars.append([s_var])

                    if e in self.fixed[i]:
                        jss = self.all_var_v.union(self.boundary[i]).union(self.boundary[j])
                    else :
                        jss = self.all_var_v.union(self.boundary[i])

                    inc_vars = []
                    for jj in jss:
                        s_var = self.vh.getVariable('s', 's_' + str(jj) + '_' + str(ii) + '_' + str(e), 0, 1)
                        inc_vars.append([s_var])

                    cons = Constraint(0, "Na", out_vars + inc_vars, [1] * len(out_vars) + [-1] * len(inc_vars))
                    self.constraints[cons.id] = cons
                    
                    
    def readTrees(self):
        trees = dict()
        paths = open(self.path + '/4/orig_path.txt', 'r')
        for p in paths:
            p = p.strip().split(' ')
            s = p[0]
            t = p[-1]

            if s not in trees:
                trees[s] = Tree(s)

            root = trees[s]
            curr_node = root

            for r in p[1:]:
                found = False
                if r in [c.id for c in curr_node.children]:
                    for c in curr_node.children:
                        if r == c.id:
                            curr_node = c
                            break
                else:
                    new_node = Tree(r)
                    curr_node.children.append(new_node)
                    curr_node = new_node
            
        paths.close()
        tree_children = trees[s].children
        x = tree_children[0]
        return trees

            
                    
