import sys
import os
from operator import itemgetter
from collections import defaultdict
from bs4 import BeautifulSoup as Soup
import networkx as nx
import json
#from gen_dot import *
#from divide_longitude2 import gen_dot
import matplotlib.pyplot as plt
from networkx.drawing.nx_agraph import graphviz_layout
import copy
from graphviz import Graph
import random

dir = str(sys.argv[1])
enc = str(sys.argv[2])

mapping = defaultdict(str)

os.system("cat dict.txt | grep i | grep _ | sed -n '/ /s/  */ /gp' > var.txt")
os.system("sed 's/^[ \t]*//' var.txt > sol.txt")

f = open("sol.txt", "r")
for l in f:
    l = l.strip().split(' ')
    mapping[l[0]] = l[1]
f.close()
    

handle = open(dir + '/res' + enc + '.xml').read()
soup = Soup(handle, 'xml')

def hasNumbers(inputString):
    return any(char.isdigit() for char in inputString)

variables = defaultdict(int)

for var in soup.findAll('variable'):
    var_name = var["name"]
    var_value = round(float(var["value"]))
    variables[var_name] = var_value


### Go through the the orig paths in both the files and update s_vars and mappings

var_enclaves = defaultdict(set)
fixed_enclaves = defaultdict(set)
src_boundary = defaultdict(set)
dst_boundary = defaultdict(set)
core_enclaves = []
boundary_by_dst = defaultdict(list)
all_var_enclaves = set()

for i in [1,2]:
    p = dir
    p = p.split('/')
    p = p[:len(p) - 2]
    p.append(str(i))
    p = '/'.join(p)
    print(p)


    j = 1
    if i == 1:
        j = 2

    fix = []
    f = open(p + '/fix_servers.txt', 'r')            
    for l in f:
        l = l.strip().split(' ')
        for s in l:
            fix.append(s)
            all_var_enclaves.add(s)
            core_enclaves.append(s)
    f.close()
    var_enclaves[i] = set(fix)

    f = open(p + '/orig_path.txt', 'r')
    for l in f:
        l = l.strip().split(' ')
        if l[0] not in var_enclaves[i]:
            fixed_enclaves[i].add(l[0])
                                    
    f.close()
    
    f = open(p + '/orig_path.txt', 'r')
    for l in f:
        l = l.strip().split(" ")
        src = l[0]
        dst = l[-1]
        
        key = (src, l[-3])

        key = (l[2], dst)


        if l[0] in fixed_enclaves[i] and l[-1] in var_enclaves[i]:
            src_boundary[i].add(l[-3])
            
            for jj in range(len(l) - 1):
                r = l[jj] 
                if r == l[-3]:
                    break

                var_name = "s_" + str(l[jj]) + "_" + str(l[jj+1]) + "_" + str(src)
                mapping[var_name] = var_name
                variables[var_name] = 1


        elif l[0] in fixed_enclaves[i] and l[-1] in fixed_enclaves[i]:
            for jj in range(len(l) - 1):
                var_name = "s_" + str(l[jj]) + "_" + str(l[jj+1]) + "_" + str(src)
                mapping[var_name] = var_name
                variables[var_name] = 1

        if l[-1] in fixed_enclaves[i] and l[0] in var_enclaves[i]:
            boundary_by_dst[(l[2], dst)] = l[2:]


for r in boundary_by_dst:
    print(r, boundary_by_dst[r])

for i in [1, 2]:
    j = 1
    if i == 1:
        j = 2

    for s in fixed_enclaves[i]:
        for t in fixed_enclaves[j]:
            counter = 0
            for r in boundary_by_dst:
                if r[1] != t:
                    continue
                counter += 1
                var_name = 'v_' + str(r[0]) + '_' + str(s) + '_' + str(t)
                var_val = 0
                for m in mapping:
                    if mapping[m] == var_name:
                        var_val = variables[m]


                        break

                if var_val == 1:
                    path = boundary_by_dst[r]
                    break

            for count in range(len(path) - 1):

                edge_var = 's_' + path[count] + '_' + path[count + 1] + '_' + str(s)

                variables[edge_var] = 1
                mapping[edge_var] = edge_var



for i in [1, 2]:
    j = 1
    if i == 1:
        j = 2

    for s in all_var_enclaves:
        for t in fixed_enclaves[i]:
            counter = 0
            for r in boundary_by_dst:
                if r[1] != t:
                    continue

                counter += 1
                var_name = 'v_' + str(r[0]) + '_' + str(s) + '_' + str(t)
                var_val = 0

                for m in mapping:
                    if mapping[m] == var_name:
                        var_val = variables[m]
                        print("here ", var_name, var_val, m, variables[m])                        
                        break

                if var_val == 1:
                    path = boundary_by_dst[r]
                    break

            print(" from ",s," to ",t," goes via ", path)

            for count in range(len(path) - 1):

                edge_var = 's_' + path[count] + '_' + path[count + 1] + '_' + str(s)

                variables[edge_var] = 1
                mapping[edge_var] = edge_var




f = open("variable_values.txt", "w")
for var in variables:
    f.write(str(mapping[var]) + " " + str(variables[var]) + "\n")
f.close()

os.system("cat tree.lst | grep 'VAR ' | grep -v objvar | cut -d ' ' -f 3- | sed -n '/ /s/  */ /gp' | cut -d ' ' -f 1,3 > solution.txt")

trees_s = dict()
trees_d = dict()

all_edges = defaultdict(lambda : defaultdict(float))

all_paths = list()

f = open(dir + '/orig_path.txt')
fi = open(dir + '/o_edges.txt', 'w')
enclaves = set()
orig_edges_ = set()

for l in f:
    l = l.strip().split(' ')
    all_paths.append(l)
    enclaves.add(l[0])

    for i in range(len(l) - 1):
        s = l[i]
        d = l[i + 1]
        fi.write(str(s) + " " + str(d) + "\n")

        ed = ((s,d))
        ed = list(ed)
        ed.sort()
        ed = ((ed[0],ed[1]))
        orig_edges_.add(ed)


print("number of original edges : ", len(orig_edges_))
fi.close()
f.close()

#gen_dot(all_paths, dir, 'orig')

#enclaves = ['a', 'b', 'c', 'd', 'e', 'f']
enclaves = list(enclaves)

for var_name in variables:

    var_map = mapping[var_name]

    if var_map == '':
        continue

    if var_map[0] == 's':
        if variables[var_name] > 0:
            dat = float(variables[var_name])
            var = var_map.split('_')
            src = var[3]
            if src not in enclaves:
                continue

            if src not in trees_s:
                trees_s[src] = list()

            trees_s[src].append(tuple((var[1], var[2])))                                      


print(trees_s)
gg = nx.DiGraph()
for edge in trees_s['b']:
    gg.add_edge(edge[0], edge[1])

nx.draw(gg, with_labels = True, pos=graphviz_layout(gg, prog='dot'), node_color='w')
plt.clf()
#plt.show()


# f = open('solution.txt', 'r')
# for l in f:
#     l = l.strip().split(' ')
    
#     if l[0][0] == 's':
#         if l[1] == '.':
#             continue
#         dat = float(l[1])
        
#         if dat >= 0:
#             var = l[0].split('_')
#             src = var[3]
#             if src not in enclaves :
#                 continue

#             if src not in trees_s:
#                 trees_s[src] = list()

#             trees_s[src].append(tuple((var[1], var[2])))                                      
#             all_edges[src][var[1] + "->" + var[2]] = dat


# #     elif l[0][0] == 'd':
# #         if l[1] == '1.0000':
# #             var = l[0].split('_')
# #             dst = var[3]
# #             if dst not in trees_d:
# #                 trees_d[dst] = list()

# #             trees_d[dst].append(tuple((var[1], var[2])))

# f.close()

json.dump(all_edges, open(dir + 'edges.json', 'w'), indent=1)



f = open(dir + '/graph.txt', 'r')
enclaves = list()
for l in f:
    l = l.split(' ')
    enclaves.extend([e for e in l if hasNumbers(e) == False])
f.close()

# f.close()
for src in trees_s:
    s = sorted(trees_s[src], key=itemgetter(0))
    print("trees_source :", src, s)


all_paths = list()
inf_edges_ = set()
#f = open(dir + '/new_paths.txt' ,'r')
fi = open(dir + '/new_edges.txt' , 'w')
for src in trees_s:
    edges = trees_s[src]
    G = nx.Graph()
    for edge in edges:
#        print(edge)
        ed = copy.deepcopy(edge)
        ed = list(ed)
        ed.sort()
        inf_edges_.add((ed[0], ed[1]))
        fi.write(str(edge[0]) + " " + str(edge[1]) + "\n")
        G.add_edge(edge[0], edge[1])

    for dst in trees_s:
        if dst != src:
            try:
                s_path = nx.dijkstra_path(G, src, dst)
                all_paths.append(s_path)
                print(s_path)
            except:
                print("Problematic path : ", src, dst)
fi.close()
print("number of inferred edges " , len(inf_edges_))


f = open(dir + '/new_paths.txt', 'w')
all_paths = sorted(all_paths, key=itemgetter(0))


for path in all_paths:
    f.write(' '.join(path))
    f.write('\n')

f.close()

##################
topology = sys.argv[3]



G = nx.read_gml('divide/' + topology + '/1/topology.gml')
G = nx.convert_node_labels_to_integers(G, first_label=0, ordering='default')
routers = copy.deepcopy(G.nodes())
print("routers 1 : ", routers)

routers = [r for r in routers]
routers_dict = defaultdict(list)
router_positions = []
r_pos_dot = {}
s_pos_dot = {}

for i in range(len(routers)):
    try :
        routers_dict[routers[i]].append([G.node[routers[i]]['Latitude'], G.node[routers[i]]['Longitude']])
        router_positions.append([G.node[routers[i]]['Latitude'], G.node[routers[i]]['Longitude']])
        [x, y] = [G.node[routers[i]]['Latitude'], G.node[routers[i]]['Longitude']]
        r_pos_dot[str(routers[i])] = str(x) + "," + str(y) + "!"
    except:
        [x, y] = [30.32667, 76.40028]
        routers_dict[routers[i]].append([x, y])
        router_positions.append([x, y])
        r_pos_dot[str(routers[i])] = str(x) + "," + str(y) + "!"

random.shuffle(routers)


for p in all_paths:
    s = p[0]
    s1 = p[1]
    r_pos_dot[s] = r_pos_dot[s1]

def gen_dot(paths, dir, option):
    ## Generate a dot file
    nodes = set()
    edges = set()
    servers =[]
    
    dot = Graph(format='png')
    dot.attr('node', labelfontsize='50')
    
    for p in paths:
        s = p[0]
        d = p[-1]
        for i in range(len(p) - 1):
            n1 = p[i]
            n2 = p[i + 1]
            nodes.add(n1)
            edge = [str(n1), str(n2)]
            edge.sort()
            edges.add((str(edge[0]), str(edge[1])))

    routers = [r for r in nodes]

    for i in range(len(routers)):
        if routers[i] in servers:
            dot.node(str(routers[i]), pos=r_pos_dot[routers[i]])
        else:
            dot.node(str(routers[i]), pos=r_pos_dot[routers[i]])

    for e in edges:
        dot.edge(e[0], e[1])

    dot.render(dir + '/' + str(option) + '/topology.dot')


#########

gen_dot(all_paths, dir, 'inf')


f = open(dir + '/new_paths_dst.txt', 'w')
all_paths = sorted(all_paths, key=itemgetter(-1))

for path in all_paths:
    f.write(' '.join(path))
    f.write('\n')

f.close()

## detect rhombuses

adjacencies = defaultdict(set)
for l in all_paths:
    for i in range(len(l) - 1):
        fv = l[i]
        sv = l[i+1]
        
        adjacencies[fv].add(sv)
        adjacencies[sv].add(fv)

f = open(dir + '/adjacencies.txt', 'w')
for fv in adjacencies:
    f.write(fv + ' ' + ' '.join(adjacencies[fv]))
    f.write('\n')
f.close()
    


# for p in paths:
#     edges = paths[p]
#     src = p[0]
#     dst = p[1]
    
#     path = [src]
#     curr_node = src

#     while curr_node != dst:
#         for e in edges:
#             if e[0] == curr_node:
#                 path.append(e[1])
#                 curr_node = e[1]

#     all_paths.append(path)

# all_paths = sorted(all_paths, key=itemgetter(0))

# f = open(dir + '/path.txt' , 'w')
# for path in all_paths:
#     f.write(' '.join(path))
#     f.write('\n')
# f.close()


