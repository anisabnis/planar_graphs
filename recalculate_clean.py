import random
import math
from collections import defaultdict

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

        self.bidirectionaledges()

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
                        s_var = self.vh.getVariableEdit('s', 's_' + str(l[j]) + '_' + str(l[j+1]) + '_' + str(s), 1,1)
                        cons = Constraint(1, 1, [[s_var]], [1])
                        self.constraints[cons.id] = cons

                        d_var = self.vh.getVariableEdit('d', 'd_'+ str(l[j]) + '_' + str(l[j+1]) + '_' + str(d), 1, 1)
#                        cons = Constraint(1, 1, [[d_var]], [1])
#                        self.constraints[cons.id] = cons

                        m_var = self.vh.getVariableEdit('z', 'z_' + str(l[j]) + '_' + str(s), j+2 ,j+2)
 #                       cons = Constraint(j+2, j+2,[[m_var]],[1])
 #                       self.constraints[cons.id] = cons

#                        v_va = self.vh.getVariableEdit('v', 'v_' + str(l[j]) + '_' + str(s) + '_' + str(d), 1, 1)
#                        cons = Constraint(1, 1, [[v_va]], [1])
                        #self.constraints[cons.id] = cons

                        w_var = self.vh.getVariableEdit('w', 'w_' + str(l[j]) + '_' + str(l[j+1]), 1, 1)
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
        self.fixed = defaultdict(list)

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

            self.fixed[i] = fix

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
                self.obj.coeffs.append(10)

                self.obj.vars.append([w1_var])
                self.obj.coeffs.append(20)


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


    # Not Done                                                                                      
    def buildPathConstraints(self):

        print("all vertices ", self.v[1].union(self.v[2]).union(self.all_var_v))
        print("adjacency ", self.a)

        count = 0

        for i in [1,2]:
            j = 1
            if i == 1:
                j = 2
                
                ### Case 1
                for s in self.enc[i]:
                    for t in self.enc[j]:

                        v_va = self.vh.getVariable('v', 'v_' + str(s) + '_' +  str(s) + '_' + str(t), 0, 1)
                        c = Constraint(1, 1, [[v_va]], [1])
                        self.constraints[c.id] = c

                        v_va = self.vh.getVariable('v', 'v_' + str(t) + '_' + str(s) + '_' + str(t), 0, 1)
                        c = Constraint(1, 1, [[v_va]], [1])
                        self.constraints[c.id] = c

                        req_vertices = self.v[i].union(self.v[j]).union(self.all_var_v)
                        
                        for v1 in req_vertices:
                            if v1 == t:
                                continue

                            v1_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(t))

                            l_vars = []
                            l_vars.append([v1_var])
                            coeff = []
                            coeff.append(1)

                            for v2 in self.a[v1]:
                                if v1 == v2 or self.check_s(s, v1, v2) == False:                                                                                                
                                    continue
                                                                                
                                if self.check_if_edge_by_src(s, ((v1, v2))) == False:
                                    continue
                                                                                                                                                               
                                v2_var = self.vh.getVariable('v' , 'v_' + str(v2) + '_' + str(s) + '_' + str(t), 0, 1)

                                s_var = self.vh.getVariable('s' , 's_' + str(v1) + '_' + str(v2) + '_' + str(s), 0, 1)
                                
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
                                
                            c = Constraint(0, "Na", l_vars, coeff) 
                            self.constraints[c.id] = c
                            
                            c = Constraint("Na", 0, l_vars, coeff) 
                            self.constraints[c.id] = c

            for s in self.enc[i]:
                for t in self.enc[i]:
                    if s == t:
                        continue

                    v_va = self.vh.getVariable('v', 'v_' + str(s) + '_' +  str(s) + '_' + str(t), 0, 1)
                    c = Constraint(1, 1, [[v_va]], [1])
                    self.constraints[c.id] = c

                    # s and t in flux
                    if s in self.fixed[i] and t in self.fixed[i]:
                        req_vertices = self.v_var[i].union(self.all_var_v).union(s)
                    
                        for v1 in req_vertices:
                            if v1 == t:
                                continue

                            v1_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(t))
                                
                            l_vars = []
                            l_vars.append([v1_var])
                            coeff = []
                            coeff.append(1)

                            for v2 in self.a[v1]:
                                if v1 == v2 or self.check_s(s, v1, v2) == False:
                                    continue

                                #if self.check_if_edge_by_src(s, ((v1, v2))) == False:
                                #    continue


                                v2_var = self.vh.getVariable('v' , 'v_' + str(v2) + '_' + str(s) + '_' + str(t), 0, 1)

                                s_var = self.vh.getVariable('s' , 's_' + str(v1) + '_' + str(v2) + '_' + str(s), 0, 1)
                                
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
                                
                            c = Constraint(0, "Na", l_vars, coeff) 
                            self.constraints[c.id] = c
                            
                            c = Constraint("Na", 0, l_vars, coeff) 
                            self.constraints[c.id] = c
                            

                        # case 3
                    elif s in self.fixed[i] and t in self.realfixed[i]:
                        boundary = s
                        p = self.path.split('/')[:len(self.path) - 1]
                        p.append(str(i))
                        p = '/'.join(p)

                        req_vertices = []
                        #boundary = '9'
                        f = open(p + '/orig_path.txt', 'r')
                        for l in f:
                            l=l.strip().split(' ')
                            s1 = l[0]
                            t1 = l[-1]
                            
                            if s1 == s and t1 == t:
                                boundary = l[2]
                                    
                                v_va = self.vh.getVariableEdit('v', 'v_' + str(boundary) + '_' +  str(s) + '_' + str(t), 1, 1)
                                c = Constraint(1, 1, [[v_va]], [1])
                                self.constraints[c.id] = c

                            # s and t in flux


                        req_vertices = set(boundary).union(self.all_var_v).union(s)

                            
                        for v1 in req_vertices:
                            print("req_vertices anirudh ", req_vertices, boundary, self.a[s], v1)
                            if v1 == t or v1 == boundary:# or v1 == s:
                                continue

                            v1_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(t))
                                
                            l_vars = []
                            l_vars.append([v1_var])
                            coeff = []
                            coeff.append(1)

                            #for v2 in req_vertices:
                            for v2 in self.a[v1]:
                                if v1 == v2 or self.check_s(s, v1, v2) == False:
                                    continue
                                
                                v2_var = self.vh.getVariable('v' , 'v_' + str(v2) + '_' + str(s) + '_' + str(t), 0, 1)

                                s_var = self.vh.getVariable('s' , 's_' + str(v1) + '_' + str(v2) + '_' + str(s), 0, 1)
                                
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
                                
                            c = Constraint(0, "Na", l_vars, coeff) 
                            self.constraints[c.id] = c
                            
                            c = Constraint("Na", 0, l_vars, coeff) 
                            self.constraints[c.id] = c
                            
#                         # case 4
                    elif s in self.realfixed[i] and t in self.fixed[i]:

                        boundary = s
                        p = self.path.split('/')[:len(self.path) - 1]
                        p.append(str(i))
                        p = '/'.join(p)

                        req_vertices = []
                        boundary = '9'
                        
                        f = open(p + '/orig_path.txt', 'r')

                        for l in f:
                            l=l.strip().split(' ')
                            s1 = l[0]
                            t1 = l[-1]
                            
                            if s1 == s and t1 == t:
                                boundary = l[-3]

                                v_va = self.vh.getVariableEdit('v', 'v_' + str(boundary) + '_' +  str(s) + '_' + str(t), 1, 1)
                                c = Constraint(1, 1, [[v_va]], [1])
                                self.constraints[c.id] = c

                                # s and t in flux


                        numb = 0
                        req_vertices = list(boundary)+list(self.all_var_v)
                        
                        for v1 in req_vertices:
                            req_vertices2 = req_vertices[1:]
                            if v1 == t:
                                continue
                            v1_var = self.vh.getVariable('v', 'v_' + str(v1) + '_' + str(s) + '_' + str(t))
                                
                            l_vars = []
                            l_vars.append([v1_var])
                            coeff = []
                            coeff.append(1)
                            
                            for v2 in req_vertices2:
                                    
                                if v1 == v2 or self.check_s(s, v1, v2) == False:
                                    continue
                                

                                if self.check_if_edge_by_src(s, ((v1, v2))) == False:
                                    continue


                                v2_var = self.vh.getVariable('v' , 'v_' + str(v2) + '_' + str(s) + '_' + str(t), 0, 1)

                                s_var = self.vh.getVariable('s' , 's_' + str(v1) + '_' + str(v2) + '_' + str(s), 0, 1)
                                
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
                                
                            c = Constraint(0, "Na", l_vars, coeff) 
                            self.constraints[c.id] = c
                            
                            c = Constraint("Na", 0, l_vars, coeff) 
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
        all_enc = self.enc[1].union(self.enc[2])
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

    # Done
    def rdConstraints(self):
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

    # Done
    def cycleConstraints(self):
        count = 0
        for i in [1,2]:
            j = 1
            if i == 1:
                j = 2
                
            for e in self.enc[i]:
                if e in self.fixed[i]:
                    req_vertices = ((self.all_var_v.union(self.v[j])).union(self.boundary[i]))
                else:
                    req_vertices = ((self.all_var_v.union(self.v[j])).union(self.boundary[i]))

                for v in req_vertices:
                    if v == e:
                        continue

                    new_equ = list()                    
                    new_coeffs = list()
                    equ = list()
                    coeffs = list()

                    z_var = self.vh.getVariable('z', 'z_' + str(v) + '_' + e, 2, 20)
                    new_equ.append([z_var])
                    new_coeffs.append(1)


                    for v2 in self.a[v]:

                        if v2 != v:
                            if self.check_s(v2, v, e):# and self.check_if_edge_by_src(e, ((v2, v))) == True:
                                
                                z_var = self.vh.getVariable('z', 'z_' + str(v2) + '_' + e, 2, 20)
                                s_var = self.vh.getVariable('s', 's_' + str(v2) + '_' + str(v) + '_' + e)
                            
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
                
                    #cons1 = Constraint("Na", 1, new_equ, new_coeffs)
                    #self.constraints[cons1.id] = cons1

#                    return
    # Done
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


    # Done
    def srcTreeConstraints(self):
        for i in [1,2]:
            j = 1
            if i == 1:
                j = 2

            for e in self.enc[i]:
                if e in self.fixed[i]:
                    req_vertices_in = ((self.all_var_v.union(self.v[j]))).union(self.boundary[i])
                else:
                    req_vertices_in = ((self.all_var_v.union(self.v[j]))).union(self.v[i])
                    #req_vertices = self.all_var_v.union(self.v[j])               


                req_vertices_out = ((self.all_var_v.union(self.v[j]))).union(self.v[i])
                # Number of incoming at v1 is at most 1

                for v1 in req_vertices_in:

                    s_vars = list()

                    for v2 in self.a[v1]:

                        if v2 == v1:
                            continue

                        if self.check_s(e, v2, v1):# and self.check_if_edge_by_src(e, ((v2, v1))) == True:
                            s_var = self.vh.getVariable('s', 's_' + str(v2) + '_' + str(v1) + '_' + str(e))
                            s_vars.append([s_var])
                        
                    if len(s_vars) > 0:
                        cons = Constraint(0, 1, s_vars, [1] * len(s_vars))
                        self.constraints[cons.id] = cons                
                
                # Number of incoming at v1 is lesser than the number of outgoing at v1
                for e1 in self.enc[1].union(self.enc[2]):
                    if e1 in req_vertices_out:
                        req_vertices_out.remove(e1)


                for v1 in req_vertices_out:
                    s_vars = list()
                    out_vars = list()

                    for v2 in self.a[v1]:
                        if v1 == v2:
                            continue

                        if self.check_s(e, v2, v1):# and self.check_if_edge_by_src(e, ((v2, v1))) == True:
                            s_var = self.vh.getVariable('s', 's_' + str(v2) + '_' + str(v1) + '_' + str(e))
                            s_vars.append([s_var])

                        if self.check_s(e,v1, v2):# and self.check_if_edge_by_src(e, ((v1, v2))) == True:
                            s_var = self.vh.getVariable('s', 's_' + str(v1) + '_' + str(v2) + '_' + str(e))
                            out_vars.append([s_var])

                        
                    if len(s_vars) > 0 and len(out_vars) > 0:

                        cons = Constraint(0, "Na", out_vars + s_vars, [1] * len(out_vars) + [-1] * len(s_vars))
                        self.constraints[cons.id] = cons                                    

                        cons = Constraint("Na", 0, out_vars + s_vars, [1] * len(out_vars) + [-30] * len(s_vars))
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

            
                    
