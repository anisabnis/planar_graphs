import sys
from optimize import *
from VariableHolder import *
from gamsWriter import *
from collections import defaultdict

def hasNumbers(inputString):
    return any(char.isdigit() for char in inputString)


if __name__ == "__main__":
    dir = sys.argv[1]
    no_routers = int(sys.argv[2])
    merge_no = ""#sys.argv[2]
    no_trees = sys.argv[3]
    
    c = dict() 


    f = open(dir + '/' + '4' + '/graph.txt', 'r')
    vertices = set()
    enclaves = set()

    for line in f:
        l = line.strip().split(' ')
        for r in l:
            vertices.add(r)
            if hasNumbers(r) == False:
                enclaves.add(r)
    f.close()


    if '' in enclaves:
        enclaves.remove('')
    if '' in vertices:
        vertices.remove('')


    enclaves = list(enclaves)
    egress_routers = [e + '1' for e in enclaves]
    routers = []

    for i in range(no_routers):
        routers.append('x' + str(i))

    vertices = enclaves + egress_routers + routers

    f = open(dir + '/4/' + 'distances.txt', 'r')
    distances = dict()
    rd = defaultdict(list)

    for line in f:
        l = line.strip().split(' ')
        nl = [l[0], l[1]]
        nl = tuple(nl)
        distances[nl] = [l[2], l[3]]
        src = l[0]
        dst = l[1]
        dist = int(l[2])
        rd[src].append(tuple([dst, dist]))
    f.close()

    vh = VariableHolder()
    objective_fun = objBuilder(vertices, vh, distances, c, dir)
    constraints = ConstraintBuilder(vertices, enclaves, c, distances, vh, dir, objective_fun, rd, no_trees)

    g_writer = gamsWriter(vh, objective_fun, constraints, 'tree.gams')
    g_writer.writeOPT()
    g_writer.close()
    

    
