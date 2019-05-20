import random
import math
from collections import defaultdict
import networkx as nx

global counter
counter = 0

global counter2
counter2=0

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
        for d in self.d:
            src = d[0]
            dst = d[1]
            distance = self.d[d][0]
            z_var = self.vh.getVariable('z', 'z_' + src + '_' + dst, 2, 18)
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

        self.var_enclaves = defaultdict(set)
        self.fixed_enclaves = defaultdict(set)
        self.src_boundary = defaultdict(set)
        self.dst_boundary = defaultdict(set)
        self.core_routers = set()

        self.boundary_by_src = defaultdict(set)
        self.boundary_by_dst = defaultdict(set)

        self.build_info()

        self.egressConstraints()

        self.edgeExistsConstraints()

        self.srcTreeConstraints()

        self.rdConstraints()

        self.cycleConstraints()

        self.buildPathConstraints_case1()
        self.buildPathConstraints_case2()
        self.buildPathConstraints_case3()
        self.buildPathConstraints_case4()

        self.dstTreeConstraints()
        self.populateDstTreeVariables()
        self.updateDistanceVariables()

        self.coreRouterConstraints()

        self.covarianceConstraints()
        self.initializeCoreEnclaveDistances()
        self.egressConstraintsForCoreRouters()


    def covarianceConstraints(self):
        pass


    def egressConstraintsForCoreRouters(self):

        boundary = list(self.src_boundary[1]) + list(self.src_boundary[2]) + list(self.dst_boundary[1]) + list(self.dst_boundary[2])

        for j in self.core_routers + boundary:
            s_vars = []
            d_vars = []
            s1_vars = []

            for e in self.core_enclaves:
                s_var = self.vh.getVariable('s', 's_' + str(e) + '_' + str(j) + '_' + str(e), 0, 1)
                d_var = self.vh.getVariable('d', 'd_' + str(j) + '_' + str(e) + '_' + str(e), 0, 1)

                s1_var = self.vh.getVariable('s', 's_' + str(j) + '_' + str(e) + '_' + str(e), 0, 1)

                c = Constraint(0, 0, [[s_var], [d_var]], [1, -1])
                self.constraints[c.id] = c

                s_vars.append([s_var])
                s1_vars.append([s1_var])
                d_vars.append([d_var])
            
            c = Constraint(0, 1, s_vars, [1]*len(s_vars))
            self.constraints[c.id] = c

            c = Constraint(0, 1, s1_vars, [1]*len(s1_vars))
            self.constraints[c.id] = c

            c = Constraint(0, 1, d_vars, [1]*len(d_vars))
            self.constraints[c.id] = c




    def initializeCoreEnclaveDistances(self):
        for e in self.core_enclaves:
            z_var = self.vh.getVariable('z', 'z_' + str(e) + '_' + str(e), 2, 18)
            c = Constraint(2, 2, [[z_var]], [1])
            self.constraints[c.id] = c

    def build_info(self):
        
        self.core_enclaves = []
        self.distances_boundary = dict()

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
                    self.core_enclaves.append(s)
            f.close()
            self.var_enclaves[i] = set(fix)


            f = open(p + '/orig_path.txt', 'r')
            for l in f:
                l = l.strip().split(' ')
                if l[0] not in self.var_enclaves[i]:
                    self.fixed_enclaves[i].add(l[0])
                    
                
            f.close()

            f = open(p + '/orig_path.txt', 'r')
            for l in f:
                l = l.strip().split(" ")
                src = l[0]
                dst = l[-1]

                key = (src, l[-3])
                self.distances_boundary[key] = len(l[:-2])

                key = (l[2], dst)
                self.distances_boundary[key] = len(l[2:])                                 

                if l[0] in self.fixed_enclaves[i] and l[-1] in self.var_enclaves[i]:
                    self.src_boundary[i].add(l[-3])
                    self.boundary_by_src[src].add(l[-3])
                elif l[-1] in self.fixed_enclaves[i] and l[0] in self.var_enclaves[i]:
                    self.dst_boundary[i].add(l[2])
                    self.boundary_by_dst[dst].add(l[2])

                    self.core_routers = ["1", "2"]

        print("var_enclaves ", self.var_enclaves)
        print("fixed_enclaves ", self.fixed_enclaves)
        print("src_boundary ", self.src_boundary)
        print("dst_boundary ", self.dst_boundary)
        print("Distances ", self.distances_boundary)
        print("Boundary by src ", self.boundary_by_src['b'])


    def coreRouterConstraints(self):
        ## For fixed enclaves
        for i in [1,2]:
            j = 1
            if i == 1:
                j = 2

            for e in self.fixed_enclaves[i]:
                #At a core router
                for t in self.core_routers:
                    # Incoming from source_boundary + core routers
                    inc_vars = []
                    for s in list(self.boundary_by_src[e]) + list(self.core_routers):
                        if s == t:
                            continue
                        s_var = self.vh.getVariable('s', 's_' + str(s) + "_" + str(t) + "_" + str(e), 0, 1)
                        inc_vars.append([s_var])

                    # Outgoing to core routers + dst_boundary[j]
                    out_vars = []
                    for s in list(self.dst_boundary[j]) + list(self.core_routers):
                        if s == t:
                            continue
                        s_var = self.vh.getVariable('s', 's_' + str(t) + "_" + str(s) + "_" + str(e), 0, 1)
                        out_vars.append([s_var])

                    # C1 : outgoing greater than incoming
                    cons = Constraint(0, "Na", out_vars + inc_vars, [1]*len(out_vars) + [-1]*len(inc_vars))
                    self.constraints[cons.id] = cons

                    # C2 : incoming <= M(outgoing)
                    cons = Constraint("Na", 0, inc_vars + out_vars, [1] * len(inc_vars) + [-20] * len(out_vars))
                    self.constraints[cons.id] = cons


        ## For core enclaves
        for e in self.core_enclaves:
            ## for routers at the boundary

            boundary_routers = list(self.src_boundary[1]) + list(self.src_boundary[2]) 
            exclude =  list(self.dst_boundary[1]) + list(self.dst_boundary[2])
            boundary_routers = [x for x in boundary_routers if x not in exclude]
            
            print("boundary routers : ", boundary_routers)

            for r in boundary_routers:
                ## incoming only from core
                inc_vars = []
                out_vars = []

                for s in self.core_routers + [e]:
                    if s == r:
                        continue
                    s_var = self.vh.getVariable('s', 's_' + str(s) + "_" + str(r) + "_" + str(e), 0, 1)
                    inc_vars.append([s_var])

                for s in self.core_routers + self.core_enclaves:
                    if s == e or s == r:
                        continue

                    s_var = self.vh.getVariable('s', 's_' + str(r) + "_" + str(s) + "_" + str(e), 0, 1)
                    out_vars.append([s_var])
                
                # C1 : outgoing greater than incoming
                cons = Constraint(0, "Na", out_vars + inc_vars, [1]*len(out_vars) + [-1]*len(inc_vars))
                self.constraints[cons.id] = cons

                # C2 : incoming <= M(outgoing)
                cons = Constraint("Na", 0, inc_vars + out_vars, [1] * len(inc_vars) + [-20] * len(out_vars))
                self.constraints[cons.id] = cons
                    

            boundary_routers = list(self.src_boundary[1]) + list(self.src_boundary[2]) + list(self.dst_boundary[1]) + list(self.dst_boundary[2])

            for r in self.core_routers:
                inc_vars = []
                out_vars = []
                ## incoming from core + boundary
                for s in self.core_routers + boundary_routers + self.core_enclaves:
                    if r == s:
                        continue

                    s_var = self.vh.getVariable('s', 's_' + str(s) + "_" + str(r) + "_" + str(e), 0, 1)
                    inc_vars.append([s_var])

                    if s == e:
                        continue
                    
                    s_var = self.vh.getVariable('s', 's_' + str(r) + "_" + str(s) + "_" + str(e), 0, 1)
                    out_vars.append([s_var])
                
                # C1 : outgoing greater than incoming
                cons = Constraint(0, "Na", out_vars + inc_vars, [1]*len(out_vars) + [-1]*len(inc_vars))
                self.constraints[cons.id] = cons

                # C2 : incoming <= M(outgoing)
                cons = Constraint("Na", 0, inc_vars + out_vars, [1] * len(inc_vars) + [-20] * len(out_vars))
                self.constraints[cons.id] = cons
                    



    def updateDistanceVariables(self):

        count = 0

        #case 1 - Source Boundaries
        for i in [1,2]:
            j = 1
            if i == 1:
                j = 2

            for src in self.fixed_enclaves[i]:
                for r in self.boundary_by_src[src]:
                    z_var = self.vh.getVariable('z', 'z_' + str(r) + "_" + str(src), 2, 18)
                    cons = Constraint(self.distances_boundary[(src,r)] + 2, self.distances_boundary[(src, r)] + 2, [[z_var]], [1])
                    self.constraints[cons.id] = cons


            # case 2 
            for src in self.fixed_enclaves[i]:
                for dst in self.fixed_enclaves[j]:

                    z_var = self.vh.getVariable('z', 'z_' + str(dst) + "_" + str(src), 2, 18)
                    new_equ = []
                    new_coeffs = []
                    new_equ.append([z_var])
                    new_coeffs.append(1)

                    for v in self.boundary_by_src[src]:
                        v_var = self.vh.getVariable('v', 'v_' + str(v) + '_' + str(src) + '_' + str(dst), 0, 1)
                        new_equ.append([v_var])
                        new_coeffs.append(-1 * (self.distances_boundary[(src, v)]))

                    for v in self.core_routers:
                        v_var = self.vh.getVariable('v', 'v_' + str(v) + '_' + str(src) + '_' + str(dst), 0, 1)
                        new_equ.append([v_var])
                        new_coeffs.append(-1)

                    for v in self.boundary_by_dst[dst]:
                        v_var = self.vh.getVariable('v', 'v_' + str(v) + '_' + str(src) + '_' + str(dst), 0, 1)
                        new_equ.append([v_var])
                        new_coeffs.append(-1 * self.distances_boundary[(v, dst)])

                    # number of edges = number of vertices + 1
                    cons = Constraint(3, 3, new_equ, new_coeffs)
                    self.constraints[cons.id] = cons
                                         
        

    def edgeExistsConstraints(self):
        for i in [1,2]:
            j = 1
            if i == 1:
                j = 2

            ## Case 1 : edge from src boundary router to core router in source tree of fixed enclaves + core enclaves (in boundary)
            for v1 in self.src_boundary[i]:
                for v2 in self.core_routers + self.core_enclaves:
                    req_enc = list(self.fixed_enclaves[i]) + self.core_enclaves
                    
                    edge_vars = []
                    for e in req_enc:
                        if e in self.fixed_enclaves[i] and v1 not in self.boundary_by_src[e]:
                            continue
                        
                        if e == v2:
                            continue

                        s_var = self.vh.getVariable('s', 's_' + str(v1) + "_" + str(v2) + "_" + str(e), 0, 1)
                        edge_vars.append([s_var])
                        
                    
                    coefs = [1] * len(edge_vars) 
                    coefs.append(-1 * len(edge_vars) - 1)
                    w_var = self.vh.getVariable('w', 'w_' + v1 + '_' + v2)
                    edge_vars.append([w_var])
                    cons = Constraint(-1 * len(edge_vars), 0, edge_vars, coefs)
                    self.constraints[cons.id] = cons

                    self.obj.vars.append([w_var])
                    self.obj.coeffs.append(5)
                    self.addBidirectionality(v1, v2)
                    
            ## Case 2 : edge from dst boundary router to core router in source tree of core enclaves (in boundary)
            for v1 in [x for x in self.dst_boundary[i] if x not in self.src_boundary]:
                for v2 in self.core_routers + self.core_enclaves:

                    req_enc = self.core_enclaves                    

                    edge_vars = []

                    for e in req_enc:
                        if e == v2:
                            continue

                        s_var = self.vh.getVariable('s', 's_' + str(v1) + "_" + str(v2) + "_" + str(e), 0, 1)
                        edge_vars.append([s_var])
                        
                    
                    coefs = [1] * len(edge_vars) 
                    coefs.append(-1 * len(edge_vars) - 1)
                    w_var = self.vh.getVariable('w', 'w_' + v1 + '_' + v2)
                    edge_vars.append([w_var])
                    cons = Constraint(-1 * len(edge_vars), 0, edge_vars, coefs)
                    self.constraints[cons.id] = cons

                    self.obj.vars.append([w_var])
                    self.obj.coeffs.append(5)
                    self.addBidirectionality(v1, v2)
                    

             ## Case 3 : edge from core router to dst boundary router in source tree or core enclave + other side enclaves
            for v1 in self.core_routers + self.core_enclaves:
                for v2 in self.dst_boundary[i]:

                    req_enc = list(self.fixed_enclaves[j]) + self.core_enclaves
                    
                    edge_vars = []
                    for e in req_enc:
                        s_var = self.vh.getVariable('s', 's_' + str(v1) + "_" + str(v2) + "_" + str(e), 0, 1)
                        edge_vars.append([s_var])
                        
                    
                    coefs = [1] * len(edge_vars) 
                    coefs.append(-1 * len(edge_vars) - 1)
                    w_var = self.vh.getVariable('w', 'w_' + v1 + '_' + v2)
                    edge_vars.append([w_var])
                    cons = Constraint(-1 * len(edge_vars), 0, edge_vars, coefs)
                    self.constraints[cons.id] = cons

                    self.obj.vars.append([w_var])
                    self.obj.coeffs.append(5)
                    self.addBidirectionality(v1, v2)
                    
            ## for src boundary 
            for v1 in self.core_routers + self.core_enclaves:
                for v2 in [x for x in self.src_boundary[i] if x not in self.dst_boundary[i]]:

                    req_enc =  self.core_enclaves
                    
                    edge_vars = []
                    for e in req_enc:
                        s_var = self.vh.getVariable('s', 's_' + str(v1) + "_" + str(v2) + "_" + str(e), 0, 1)
                        edge_vars.append([s_var])
                        
                    
                    coefs = [1] * len(edge_vars) 
                    coefs.append(-1 * len(edge_vars) - 1)
                    w_var = self.vh.getVariable('w', 'w_' + v1 + '_' + v2)
                    edge_vars.append([w_var])
                    cons = Constraint(-1 * len(edge_vars), 0, edge_vars, coefs)
                    self.constraints[cons.id] = cons

                    self.obj.vars.append([w_var])
                    self.obj.coeffs.append(5)
                    self.addBidirectionality(v1, v2)
                    



        ## Case 5 : core router to core router
        for v1 in self.core_routers:
            for v2 in self.core_routers + self.core_enclaves:

                if v1 == v2:
                    continue
                
                req_enc = self.e
                
                edge_vars = []
                for e in req_enc:
                    if v2 == e:
                        continue
                    s_var = self.vh.getVariable('s', 's_' + str(v1) + "_" + str(v2) + "_" + str(e), 0, 1)
                    edge_vars.append([s_var])
                        
                    
                coefs = [1] * len(edge_vars) 
                coefs.append(-1 * len(edge_vars) - 1)
                w_var = self.vh.getVariable('w', 'w_' + v1 + '_' + v2)
                edge_vars.append([w_var])
                cons = Constraint(-1 * len(edge_vars), 0, edge_vars, coefs)
                self.constraints[cons.id] = cons                                        


                self.obj.vars.append([w_var])
                self.obj.coeffs.append(5)
                self.addBidirectionality(v1, v2)
                    

        for v1 in self.core_enclaves:
            for v2 in self.core_routers:

                if v1 == v2:
                    continue
                
                req_enc = [v1]
                
                edge_vars = []
                for e in req_enc:
                    if v2 == e:
                        continue
                    s_var = self.vh.getVariable('s', 's_' + str(v1) + "_" + str(v2) + "_" + str(e), 0, 1)
                    edge_vars.append([s_var])
                        
                    
                coefs = [1] * len(edge_vars) 
                coefs.append(-1 * len(edge_vars) - 1)
                w_var = self.vh.getVariable('w', 'w_' + v1 + '_' + v2)
                edge_vars.append([w_var])
                cons = Constraint(-1 * len(edge_vars), 0, edge_vars, coefs)
                self.constraints[cons.id] = cons                                        

                
                self.obj.vars.append([w_var])
                self.obj.coeffs.append(5)
                self.addBidirectionality(v1, v2)
                    


    def populateDstTreeVariablesHelper(self, i_s, j_s, sources, d):
        global counter2

        for v1 in i_s:
            for v2 in j_s:

                if v1 == v2:
                    continue

                k_vars = []
                k_coeffs = []
                    
                for s in sources:                        

                    if v2 == s:
                        continue
                    
                    k_var = self.vh.getVariable('k', 'k_' +str(counter2), 0, 1)
                    counter2 += 1        
                            
                    s_var = self.vh.getVariable('s', 's_' + str(v1) + '_' + str(v2) + '_' + str(s))
                    v_va = self.vh.getVariable('v', 'v_' + str(v2) + '_' + str(s) + '_' + str(d))
                                                            
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


    def populateDstTreeVariablesHelper2(self, i_s, j_s, sources, d):
        global counter2

        for v1 in i_s:
            for v2 in j_s:

                if v1 == v2:
                    continue

                k_vars = []
                k_coeffs = []
                    
                for s in sources[v1]:                        

                    if v1 == s or v2 == s:
                        continue
                    
                    k_var = self.vh.getVariable('k', 'k_' +str(counter2), 0, 1)
                    counter2 += 1        
                            
                    s_var = self.vh.getVariable('s', 's_' + str(v1) + '_' + str(v2) + '_' + str(s))
                    v_va = self.vh.getVariable('v', 'v_' + str(v2) + '_' + str(s) + '_' + str(d))
                                                            
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

    def populateDstTreeVariables(self):
        
        ## If the destination is in the fixed enclaves    
        for i in [1,2]:
            j = 1
            if i == 1:
                j = 2
                
            for e in self.fixed_enclaves[i]:

                #a) i_s are on src_boundary, j_s are in core
                i_s = list(self.src_boundary[j])
                j_s = self.core_routers
        
                self.sources_dict = defaultdict(list)
                sources = list(self.fixed_enclaves[i])

                for i in i_s:
                    for s in sources:
                        if i in self.boundary_by_src[s]:
                            self.sources_dict[i].append(s)
                                            
                self.populateDstTreeVariablesHelper2(i_s, j_s, self.sources_dict, e)

                #b) i_s are in core, dst_boundary[i]
                i_s = list(self.core_routers) + list(self.core_enclaves)
                j_s = list(self.boundary_by_dst[e])
                sources = list(self.fixed_enclaves[j]) + self.core_enclaves 
                self.populateDstTreeVariablesHelper(i_s, j_s, sources, e)

                #c) i_s are in core, j_s in core
                i_s = list(self.core_routers) + self.core_enclaves
                j_s = list(self.core_routers)
                sources = list(self.fixed_enclaves[j]) + self.core_enclaves 
                self.populateDstTreeVariablesHelper(i_s, j_s, sources, e)


        ## If the destination is in core enclaves
        for e in list(self.core_enclaves):
            #a) If i_s are in core and j_s are in core, then sources can be anything
            i_s = list(self.core_routers)
            j_s = list(self.core_routers) + self.core_enclaves 
            j_s = [x for x in j_s if x != e]
            sources = [x for x in self.e if x != e]
            self.populateDstTreeVariablesHelper(i_s, j_s, sources, e)
            

            #b) If i_s in core and j_s are in any boundary, then sources are in core
            i_s = list(self.core_routers)
            j_s = list(self.src_boundary[1]) + list(self.src_boundary[2]) + list(self.dst_boundary[1]) + list(self.dst_boundary[2])
            sources = [x for x in self.core_enclaves if x != e]
            self.populateDstTreeVariablesHelper(i_s, j_s, sources, e)

            for i in [1,2]:
                j = 1
                if i == 1:
                    j = 2

                #c) i) If i_s are in boundary_src[1] and j_s are in core, then sources are core + fixed[1]
                ## This has to be split up - do this for each source

                i_s = self.src_boundary[i]
                j_s = self.core_routers + self.core_enclaves
                self.sources_dict = defaultdict(list)
                sources = self.fixed_enclaves[i]

                for i in i_s:
                    for s in sources:
                        if i in self.boundary_by_src[s]:
                            self.sources_dict[i].append(s)
                            
                
                self.populateDstTreeVariablesHelper2(i_s, j_s, self.sources_dict, e)

                #c) ii) If i_s are in boundary_dst[1] and j_s are in core, then sources are core
                i_s = self.dst_boundary[i]
                j_s = self.core_routers + self.core_enclaves
                sources = [x for x in self.core_enclaves if x != e]
                self.populateDstTreeVariablesHelper(i_s, j_s, sources, e)                                            


            #d) If i is an enclave in the core
            i_s = [x for x in self.core_enclaves if x != e]
            for source in i_s:
                j_s = list(self.src_boundary[1]) + list(self.src_boundary[2]) + list(self.dst_boundary[1]) + list(self.dst_boundary[2]) + list(self.core_routers)
                sources = [source]
                i_s = [source]
                self.populateDstTreeVariablesHelper(i_s, j_s, sources, e)                                            

    def dstTreeConstraints(self):
        for i in [1,2]:
            j = 1
            if i == 1:
                j = 2
                
            # Case 1 : t is in fixed enclaves
            for t in self.fixed_enclaves[i]:

                # For all routers which are on the other boundary, the outgoing edges could be boundary -> core
                # The number of outgoing edges on that border
                for r1 in self.src_boundary[j]:
                    d_vars = []
                    for r2 in self.core_routers:
                        d_var = self.vh.getVariable('d', 'd_' + str(r1) + "_" + str(r2) + "_" + str(t), 0, 1)
                        d_vars.append([d_var])

                    cons = Constraint(0, 1, d_vars, [1]* len(d_vars))
                    self.constraints[cons.id] = cons

                
                for r1 in self.core_routers:
                    req_routers = self.core_routers + list(self.boundary_by_dst[t])
                    d_vars = []
                    for r2 in req_routers:
                        d_var = self.vh.getVariable('d', 'd_' + str(r1) + "_" + str(r2) + "_" + str(t),0, 1)
                        d_vars.append([d_var])
                    cons = Constraint(0, 1, d_vars, [1] * len(d_vars))
                    self.constraints[cons.id] = cons


            # Case 2 : t in core enclaves
            for t in self.core_enclaves:

                boundary_routers = list(self.src_boundary[1]) + list(self.src_boundary[2]) + list(self.dst_boundary[1]) + list(self.dst_boundary[2])

                ## For all routers which are on the boundary, the outgoing edge will be to the core
                for r1 in boundary_routers:
                    d_vars = []
                    for r2 in self.core_routers + self.core_enclaves:
                        d_var = self.vh.getVariable('d', 'd_' + str(r1) + "_" + str(r2) + "_" + str(t), 0, 1)
                        d_vars.append([d_var])
                    cons = Constraint(0, 1, d_vars, [1]*len(d_vars))
                    self.constraints[cons.id] = cons

                ## For all routers which are in core , the outgoing edges can be to any router
                for r1 in self.core_routers:
                    all_vertices = list(self.src_boundary[1]) + list(self.src_boundary[2]) + list(self.dst_boundary[1]) + list(self.dst_boundary[2]) + list(self.core_routers)
                    d_vars = []
                    for r2 in all_vertices + self.core_enclaves:
                        d_var = self.vh.getVariable('d', 'd_' + str(r1) + "_" + str(r2) + "_" + str(t), 0, 1)
                        d_vars.append([d_var])

                    cons = Constraint(0, 1, d_vars, [1]*len(d_vars))
                    self.constraints[cons.id] = cons
                

    def addBidirectionality(self, v1, v2):
        if v1 >= v2:
            return
                
        w1_var = self.vh.getVariable('w' , 'w_' + str(v1) + '_' + str(v2), 0, 1)
        w2_var = self.vh.getVariable('w', 'w_' + str(v2) + '_' + str(v1), 0, 1)
        
        x_var = self.vh.getVariable('x' , 'x_' + str(v1) + '_' + str(v2), 0, 1)

        c = Constraint(0, "Na", [[x_var], [w1_var], [w2_var]], [1, -1, 1])
        self.constraints[c.id] = c

        c = Constraint(0, "Na", [[x_var], [w2_var], [w1_var]], [1, -1, 1])
        self.constraints[c.id] = c

        self.obj.vars.append([x_var])
        self.obj.coeffs.append(15)        


    def cycleConstraints(self):

        count = 0
        for i in [1,2]:
#        for i in [1]:
            j = 1
            if i == 1:
                j = 2

            ## For enclaves that have been fixed
            for e in self.fixed_enclaves[i]:
            #for e in ["d"]:
                for v in self.core_routers + list(self.core_enclaves):

                    req_routers = list(self.boundary_by_src[e]) + self.core_routers

                    z_var = self.vh.getVariable('z', 'z_' + str(v) + "_" + str(e), 2, 18)

                    new_equ = []
                    new_coeffs = []
                    new_equ.append([z_var])
                    new_coeffs.append(1)

                    for v2 in req_routers:
                        if v2 == v:
                            continue
                                                        
                        z_var = self.vh.getVariable('z', 'z_' + str(v2) + '_' + e, 2, 18)
                        s_var = self.vh.getVariable('s', 's_' + str(v2) + '_' + str(v) + '_' + e)
                            
                        r_var = self.vh.getVariable('r', 'r_' + str(count), 0, 18)
                        count = count + 1
                                                 
                        new_equ.append([r_var])
                        new_coeffs.append(-1)
        
                        eq1 = Constraint("Na", 0, [[r_var],[s_var]], [1, -18])
                        self.constraints[eq1.id] = eq1
                                
                        eq2 = Constraint(0, "Na", [[r_var],[s_var]], [1, -2])
                        self.constraints[eq2.id] = eq2
                                
                        eq3 = Constraint("Na", -2, [[r_var], [z_var], [s_var]], [1, -1, -2])
                        self.constraints[eq3.id] = eq3
                                
                                ## To be done
                        eq4 = Constraint(-18, "Na", [[r_var], [z_var], [s_var]], [1,-1,-18])
                        self.constraints[eq4.id] = eq4
                        
                        eq5 = Constraint("Na", 18, [[r_var], [z_var], [s_var]], [1,-1,18])
                        self.constraints[eq5.id] = eq5
                                ## To be done
                            
                    cons1 = Constraint(1, 1, new_equ, new_coeffs)
                    self.constraints[cons1.id] = cons1

                ##########3
                for v in self.dst_boundary[j]:

                    req_routers = self.core_routers

                    z_var = self.vh.getVariable('z', 'z_' + str(v) + "_" + str(e), 2, 18)

                    new_equ = []
                    new_coeffs = []
                    new_equ.append([z_var])
                    new_coeffs.append(1)

                    for v2 in req_routers:
                        if v2 == v:
                            continue
                                                        
                        z_var = self.vh.getVariable('z', 'z_' + str(v2) + '_' + e, 2, 18)
                        s_var = self.vh.getVariable('s', 's_' + str(v2) + '_' + str(v) + '_' + e)
                            
                        r_var = self.vh.getVariable('r', 'r_' + str(count), 0, 18)
                        count = count + 1
                                                 
                        new_equ.append([r_var])
                        new_coeffs.append(-1)
        
                        eq1 = Constraint("Na", 0, [[r_var],[s_var]], [1, -18])
                        self.constraints[eq1.id] = eq1
                                
                        eq2 = Constraint(0, "Na", [[r_var],[s_var]], [1, -2])
                        self.constraints[eq2.id] = eq2
                                
                        eq3 = Constraint("Na", -2, [[r_var], [z_var], [s_var]], [1, -1, -2])
                        self.constraints[eq3.id] = eq3
                                
                                ## To be done
                        eq4 = Constraint(-18, "Na", [[r_var], [z_var], [s_var]], [1,-1,-18])
                        self.constraints[eq4.id] = eq4
                        
                        eq5 = Constraint("Na", 18, [[r_var], [z_var], [s_var]], [1,-1,18])
                        self.constraints[eq5.id] = eq5
                                ## To be done
                            
                    cons1 = Constraint(1, 1, new_equ, new_coeffs)
                    self.constraints[cons1.id] = cons1




            ## For enclaves that are core

            ii = 0
            for e in self.core_enclaves:
                req_routers = list(self.dst_boundary[1]) + list(self.dst_boundary[2]) + list(self.src_boundary[1]) + list(self.src_boundary[2]) + list(self.core_routers)
                boundary = list(self.dst_boundary[1]) + list(self.dst_boundary[2]) + list(self.src_boundary[1]) + list(self.src_boundary[2])

                ## Finds distance of v from e
                for v in req_routers + self.core_enclaves:
                    
                    if v == e:
                        continue

                    z_var = self.vh.getVariable('z', 'z_' + str(v) + "_" + str(e), 2, 18)

                    new_equ = []
                    new_coeffs = []
                    new_equ.append([z_var])
                    new_coeffs.append(1)

                    for v2 in req_routers + [e]:
                        if v2 == v:
                            continue
                        if v in boundary and v2 in boundary:
                            continue

                                
                        z_var = self.vh.getVariable('z', 'z_' + str(v2) + '_' + e, 2, 18)
                        s_var = self.vh.getVariable('s', 's_' + str(v2) + '_' + str(v) + '_' + e, 0, 1)
                                                                             
                        r_var = self.vh.getVariable('r', 'r_' + str(count), 0, 18)
                        count = count + 1
                                                 
                        new_equ.append([r_var])
                        new_coeffs.append(-1)
        
                        eq1 = Constraint("Na", 0, [[r_var],[s_var]], [1, -18])
                        self.constraints[eq1.id] = eq1
                                
                        eq2 = Constraint(0, "Na", [[r_var],[s_var]], [1, -2])
                        self.constraints[eq2.id] = eq2
                                
                        eq3 = Constraint("Na", -2, [[r_var], [z_var], [s_var]], [1, -1, -2])
                        self.constraints[eq3.id] = eq3
                                
                        ## To be done
                        eq4 = Constraint(-18, "Na", [[r_var], [z_var], [s_var]], [1,-1,-18])
                        self.constraints[eq4.id] = eq4
                        
                        eq5 = Constraint("Na", 18, [[r_var], [z_var], [s_var]], [1,-1,18])
                        self.constraints[eq5.id] = eq5
        
                    ## To be done                            
                    cons1 = Constraint(1, 1, new_equ, new_coeffs)
                    self.constraints[cons1.id] = cons1

                

    def addPathConstraintsHelper(self, src_vertices, dst_vertices, s, t):        

        global counter
        for v in src_vertices:                        
            
            v1_var = self.vh.getVariable('v' , 'v_' + str(v) + "_" + str(s) + "_" + str(t), 0, 1)

            l_vars = []
            l_vars.append([v1_var])
            coeff = []
            coeff.append(1)
            
            for v2 in dst_vertices:

                if v2 == v:
                    continue

                v2_var = self.vh.getVariable('v' , 'v_' + str(v2) + '_' + str(s) + '_' + str(t), 0, 1)                
                s_var = self.vh.getVariable('s' , 's_' + str(v) + '_' + str(v2) + '_' + str(s), 0, 1)                
                l_var = self.vh.getVariable('l',  'l_' + str(counter), 0, 1)
                
                counter += 1
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
                        



    ## Case 1 : Source in fixed 1 and dst in fixed 2
    def buildPathConstraints_case1(self):

        count = 0
        global counter
        counter = 0
        
        for i in [1,2]:
            j = 1
            if i == 1:
                j = 2

            for s in self.fixed_enclaves[i]:
                for t in self.fixed_enclaves[j]:
                    ## Constraint 1 : One of the vertices in source boundary has to be on the path from s to t        
                    v_vars = []
                    for v in self.boundary_by_src[s]:
                        v_var = self.vh.getVariable('v', 'v_' + str(v) + "_" + str(s) + "_" + str(t), 0, 1)
                        v_vars.append([v_var])
                    cons = Constraint(1, 1, v_vars, [1]*len(v_vars))
                    self.constraints[cons.id] = cons        

                    ## Constraint 2 : One of the vertices on the dst boundary of second side should be on the path from s to t
                    v_vars = []
                    ##herehere
                    for v in self.boundary_by_dst[t]:
                        v_var = self.vh.getVariable('v', 'v_' + str(v) + "_" + str(s) + "_" + str(t), 0, 1)
                        v_vars.append([v_var])
                    cons = Constraint(1, 1, v_vars, [1]*len(v_vars))
                    self.constraints[cons.id] = cons                

                    ## v_i^{st} = \sum v_j^{st} s_{ij}^s
                    ## case 1
                    ## i is in (src_boundary) and j in core
                    src_vertices = self.boundary_by_src[s]
                    dst_vertices = list(self.core_routers)
                    self.addPathConstraintsHelper(src_vertices, dst_vertices, s, t)                            

                    ## case 2
                    ## i in core, j in (core + dst_boundary[j])
                    src_vertices = self.core_routers
                    dst_vertices = list(self.core_routers) + list(self.boundary_by_dst[t])
                    self.addPathConstraintsHelper(src_vertices, dst_vertices, s, t)
                    

    ## Case 2 : Source in fixed 1 and dst in Core
    def buildPathConstraints_case2(self):

        for i in [1,2]:
            
            for s in self.fixed_enclaves[i]:
                for t in self.core_enclaves:                    

                    ## There is at least one vertex on the source boundary which connects to these enclaves
                    v_vars = []
                    for v in self.boundary_by_src[s]:
                        v_var = self.vh.getVariable('v', 'v_' + str(v) + "_" + str(s) + "_" + str(t), 0, 1)
                        v_vars.append([v_var])
                    cons = Constraint(1, 1, v_vars, [1]*len(v_vars))
                    self.constraints[cons.id] = cons        

                    ## The destination is on the path from src to dst
                    v_var = self.vh.getVariable('v' , 'v_' + str(t) + "_" + str(s) + "_" + str(t), 0, 1)
                    cons = Constraint(1, 1, [[v_var]], [1])
                    self.constraints[cons.id] = cons


                    ## v_i^{st} = \sum v_j^{st} s_{ij}^s
                    ## case 1
                    ## i is in (src_boundary + core) and j in ( core + [t])
                    src_vertices = list(self.src_boundary[s]) + list(self.core_routers)
                    dst_vertices = list(self.core_routers) + [t]
                    self.addPathConstraintsHelper(src_vertices, dst_vertices, s, t)                            


    ## Case 3 : Source in core and dst in fixed 1 or fixed 2
    def buildPathConstraints_case3(self):
        for s in self.core_enclaves:
            for i in [1,2]:
                j = 1
                if i == 1:
                    j = 2

                for t in self.fixed_enclaves[i]:
                    
                    ## the source is on the path from s to t
                    v_var = self.vh.getVariable('v' , 'v_' + str(s) + "_" + str(s) + "_" + str(t))
                    cons = Constraint(1, 1, [[v_var]], [1])
                    self.constraints[cons.id] = cons

                    ## there exists one vertex on the destination boundary which is on the path from s to t
                    v_vars = []
                    for v in list(self.boundary_by_dst[t]):
                        v_var = self.vh.getVariable('v' , 'v_' + str(v) + "_" + str(s) + "_" + str(t), 0, 1)
                        v_vars.append([v_var])
                        
                    cons = Constraint(1, 1, v_vars, [1] * len(v_vars))
                    self.constraints[cons.id] = cons
                    
                    src_vertices = list(self.core_routers) + [s]
                    dst_vertices = list(self.core_routers) + list(self.boundary_by_dst[t])
                    self.addPathConstraintsHelper(src_vertices, dst_vertices, s, t)                    
     
    ## Case 4 : Source in core and dst in core
    def  buildPathConstraints_case4(self):

        for s in self.core_enclaves:
            for t in self.core_enclaves:

                if s == t:
                    continue

                v_var = self.vh.getVariable('v', 'v_' + str(s) + "_" + str(s) + "_" + str(t), 0, 1)
                cons = Constraint(1, 1, [[v_var]], [1])
                self.constraints[cons.id] = cons

                v_var = self.vh.getVariable('v', 'v_' + str(t) + "_" + str(s) + "_" + str(t), 0, 1)
                cons = Constraint(1, 1, [[v_var]], [1])
                self.constraints[cons.id] = cons

                # case 1 : boundary routers
                # outgoing routers = core routers + t
                src_routers =  list(self.dst_boundary[1]) + list(self.dst_boundary[2]) + list(self.src_boundary[1]) + list(self.src_boundary[2])
                dst_routers = list(self.core_routers) + [t]
                self.addPathConstraintsHelper(src_routers, dst_routers, s, t)

                # case 2 :  s
                # outgoing routers = core + boundary
                src_routers =  [s] #list(self.core_routers)
                dst_routers =  list(self.dst_boundary[1]) + list(self.dst_boundary[2]) + list(self.src_boundary[1]) + list(self.src_boundary[2]) + list(self.core_routers)
                self.addPathConstraintsHelper(src_routers, dst_routers, s, t)

                # case 3 : core 
                # outgoing routers = core + [t]
                src_routers =  list(self.core_routers)
                dst_routers =  list(self.dst_boundary[1]) + list(self.dst_boundary[2]) + list(self.src_boundary[1]) + list(self.src_boundary[2]) + list(self.core_routers) + [t]
                self.addPathConstraintsHelper(src_routers, dst_routers, s, t)


    def srcTreeConstraints(self):
        ## For the fixed sources
        for i in [1,2]:
            j = 1
            if i == 1:
                j = 2
                
            for e in self.fixed_enclaves[i]:
                ## For routers in the core - incoming edges from b_i_src and core
                for r2 in self.core_routers:
                    s_vars = []
                    for r1 in (self.core_routers + list(self.boundary_by_src[e])) :
                        if r1 == r2:
                            continue

                        s_var = self.vh.getVariable('s', 's_' + str(r1) + "_" + str(r2) + "_" + str(e), 0, 1)
                        s_vars.append([s_var])

                    cons = Constraint(0, 1, s_vars, [1]*len(s_vars))
                    self.constraints[cons.id] = cons

                ## For routers in the destination boundary of the other half - incoming edges from core
                for r2 in self.dst_boundary[j]:
                    s_vars = []
                    for r1 in self.core_routers + self.core_enclaves:
                        s_var = self.vh.getVariable('s', 's_' + str(r1) + "_" + str(r2) + "_" + str(e), 0,1)
                        s_vars.append([s_var])

                    cons = Constraint(0, 1, s_vars, [1]*len(s_vars))
                    self.constraints[cons.id] = cons
                    

        ## For sources in the core
        for e in self.core_enclaves:

            ## For router in b_i_src and b_i_dst - incoming edges from core routers
            boundary_nodes = list(self.dst_boundary[1]) + list(self.dst_boundary[2]) + list(self.src_boundary[1]) + list(self.src_boundary[2])
            for r2 in boundary_nodes:
                s_vars = []
                for r1 in self.core_routers:
                    s_var = self.vh.getVariable('s', 's_' + str(r1) + "_" + str(r2) + "_" + str(e),0 , 1)
                    s_vars.append([s_var])
                    
                cons = Constraint(0, 1, s_vars, [1]*len(s_vars))
                self.constraints[cons.id] = cons

            ## For router in core - incoming edges from both boundaries + core
            for r2 in self.core_routers:
                s_vars = []
                for r1 in boundary_nodes + self.core_routers:

                    if r1 == r2:
                        continue

                    s_var = self.vh.getVariable('s', 's_' + str(r1) + "_" + str(r2) + "_" + str(e),0 , 1)
                    s_vars.append([s_var])
                    
                cons = Constraint(0, 1, s_vars, [1]*len(s_vars))
                self.constraints[cons.id] = cons
                

    def rdConstraints(self):
        print(self.rd)
        for i in [1,2]:
            j = 1
            if i == 1:
                j = 2

            for e in self.fixed_enclaves[i]:
                distances = self.rd[e]
                dst_enclaves =  list(self.fixed_enclaves[j]) #+ list(self.core_enclaves)
                distances = [x for x in distances if x[0] in dst_enclaves]
                distances.sort(key=lambda x: x[1])

                print("constraint for src ", e, distances)

                for i in range(1, len(distances)):
                    s1 = distances[i-1][0]
                    d1 = distances[i-1][1]
                    s2 = distances[i][0]
                    d2 = distances[i][1]
                

                    z1_var = self.vh.getVariable('z', 'z_' + s1 + '_' + e, 2, 18)
                    z2_var = self.vh.getVariable('z', 'z_' + s2 + '_' + e, 2, 18)

                    if d2 == d1:
                        cons = Constraint(0, "Na", [[z2_var], [z1_var]], [1, -1])
                        self.constraints[cons.id] = cons
                        print(s2 + ">=" + s1)
                    else:
                        o_var = self.vh.getVariable('o' , 'o_' + str(s1) + "_" + str(s2) + "_" + str(e), 0, 2)
                        cons = Constraint(1, "Na", [[z2_var], [z1_var], [o_var]], [1, -1, 1])

                        self.obj.vars.append([o_var])
                        self.obj.coeffs.append(15)

                        self.constraints[cons.id] = cons                                                        
                        print(s2 + ">" + s1)


    def egressConstraints(self):
        for i in [1,2]:
            req_routers_dst = list(self.dst_boundary[i]) + self.core_routers
            req_routers_src = list(self.src_boundary[i]) + self.core_routers
            req_enc = self.var_enclaves[i]
            all_enc = self.e

            j = 1
            if i == 1:
                j = 2

            for e in req_enc:

                ## There is one outgoing edge from the enclave
                s_vars = []        
                for r in req_routers_dst:
                    s_var = self.vh.getVariable('s', 's_' + str(e) + "_" + str(r) + "_" + str(e), 0 ,1)
                    s_vars.append([s_var])
                    
                cons = Constraint(1, 1, s_vars, [1] * len(s_vars))
                self.constraints[cons.id] = cons

                ## There is no incoming edge to itself in its source tree
                s_vars = []        
                for r in req_routers_dst:
                    s_var = self.vh.getVariable('s', 's_' + str(r) + "_" + str(e) + "_" + str(e), 0 ,1)
                    s_vars.append([s_var])
                    
                cons = Constraint(0, 0, s_vars, [1] * len(s_vars))
                self.constraints[cons.id] = cons


            for e in req_enc:
                for src in all_enc:
                    if src == e:
                        continue

                    if src in self.fixed_enclaves[i]:
                        req_routers = list(self.boundary_by_src[e]) + self.core_routers
                    elif src in self.core_enclaves:
                        req_routers = list(self.src_boundary[i]) + self.core_routers + list(self.src_boundary[j]) + list(self.dst_boundary[i]) + list(self.dst_boundary[j])
                    else:
                        req_routers = self.core_routers + list(self.boundary_by_src[j])
                                            

                    ## There is one incoming edge to the enclave from each source on both the sides
                    s_vars = []
                    for r in req_routers:                        
                        s_var = self.vh.getVariable('s', 's_' + str(r) + "_" + str(e) + "_" + str(src), 0, 1)
                        s_vars.append([s_var])

                    cons = Constraint(1, 1, s_vars, [1] * len(s_vars))
                    self.constraints[cons.id] = cons
                                            

                    ## There is no outgoing edge from the enclave in the source tree of all other enclaves
                    s_vars = []
                    for r in req_routers:                        
                        s_var = self.vh.getVariable('s', 's_' + str(e) + "_" + str(r) + "_" + str(src), 0, 1)
                        s_vars.append([s_var])

                    cons = Constraint(0, 0, s_vars, [1] * len(s_vars))
                    self.constraints[cons.id] = cons

                    
                    
                        
                
            
            
