import sys
import networkx as nx
from collections import defaultdict
import copy
import random
from sklearn.cluster import KMeans
import numpy as np
from graphviz import Digraph
from graphviz import Graph

import networkx as nx
import matplotlib.pyplot as plt


from operator import itemgetter
topology = sys.argv[1]
number_of_hosts = sys.argv[2]

G = nx.read_gml('divide/' + topology + '/1/topology.gml')
i = 0
k = 0

servers = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'r', 's']
servers = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p']
G = nx.convert_node_labels_to_integers(G, first_label=0, ordering='default')

routers = copy.deepcopy(G.nodes())
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
        r_pos_dot[routers[i]] = str(x) + "," + str(y) + "!"
    except:
        [x, y] = [30.32667, 76.40028]
        routers_dict[routers[i]].append([x, y])
        router_positions.append([x, y])
        r_pos_dot[routers[i]] = str(x) + "," + str(y) + "!"


random.shuffle(routers)
divide_by = int(len(routers)/int(number_of_hosts))

server_positions = {}
s_positions = []
for i in range(len(routers)):
    i += 1
    if i%(divide_by) == 0:
        G.add_edge(servers[k], routers[i])
        server_positions[servers[k]] = routers_dict[routers[i]]
        s_positions.append(routers_dict[routers[i]][0])
        s_pos_dot[servers[k]] = r_pos_dot[routers[i]]
        k += 1

user_servers = servers[:k]

paths = []
rev_paths = []
for i in range(k):
    for j in [r for r in range(k) if r!= i]:
        s = servers[i]
        t = servers[j]

        s_path = nx.dijkstra_path(G, s, t)
        paths.append(s_path)

indegree = defaultdict(lambda:defaultdict(lambda:0))
outdegree = defaultdict(lambda:defaultdict(lambda:0))


for p in paths:
    for i, r in enumerate(p[1:len(p)-1]):
        if i == 1:
            indegree[r][p[i]] = indegree[r][p[i]] + 1 + 1 + 1

        if i == len(p) - 1:
            outdegree[r][p[i+2]] = outdegree[r][p[i+2]] + 1 + 1 + 1
        
        indegree[r][p[i]] = indegree[r][p[i]] + 1
        outdegree[r][p[i+2]] = outdegree[r][p[i+2]] + 1

two_degree_routers = [r for r in indegree if len(indegree[r]) <= 2 and len(outdegree[r]) <= 2]
# Remove such routers from the paths
new_paths = []
for p in paths:
    np = [i for i in p if i not in two_degree_routers]
    new_paths.append(np)

new_paths_dict = {}
for p in paths:
    s = p[0]
    d = p[-1]
    new_paths_dict[((s,d))] = p


print(s_positions)
lats = [x[1] for x in s_positions]
index = list(range(len(s_positions)))
index.sort(key = lats.__getitem__)

print(user_servers)
print(index)

sortedservers = [user_servers[i] for i in index]
print(sortedservers)

def create_sub_topology(hosts, G):
    paths = []
    rev_paths = []

    for i in range(len(hosts)):
        for j in [r for r in range(len(hosts)) if r!= i]:
            s = hosts[i]
            t = hosts[j]

            s_path = nx.dijkstra_path(G, s, t)
            paths.append(s_path)

    indegree = defaultdict(lambda:defaultdict(lambda:0))
    outdegree = defaultdict(lambda:defaultdict(lambda:0))

    for p in paths:
        for i, r in enumerate(p[1:len(p)-1]):
            if i == 1:
                indegree[r][p[i]] = indegree[r][p[i]] + 1 + 1 + 1

            if i == len(p) - 1:
                outdegree[r][p[i+2]] = outdegree[r][p[i+2]] + 1 + 1 + 1
        
            indegree[r][p[i]] = indegree[r][p[i]] + 1
            outdegree[r][p[i+2]] = outdegree[r][p[i+2]] + 1

    two_degree_routers = [r for r in indegree if len(indegree[r]) <= 2 and len(outdegree[r]) <= 2]
    # Remove such routers from the paths
    new_paths = []
    for p in paths:
        np = [i for i in p if i not in two_degree_routers]
        new_paths.append(np)

    return new_paths


class Tree:
    def __init__(self, id):
        self.id = id
        self.children = list()
        self.plr = list()

    def leafs(self):
        if len(self.children) == 0:
            return [str(self.id)]
        else:
            return [d for c in self.children for d in c.leafs()]

def printTree(tree):
    if len(tree.children) == 0:
        return
    return [printTree(c) for c in tree.children]

def writeCovariance(s, tree, f, d):
    if len(tree.children) == 0:
        return 
    if len(tree.children) > 1:
        req_dsts = [c.leafs()[0] for c in tree.children]
        for i,r1 in enumerate(req_dsts):
            for j,r2 in enumerate(req_dsts):
                if j > i:
                    f.write(s + ' ' + r1 + ' ' + r2 + ' ' + str(d))
                    f.write('\n')
         
    return [writeCovariance(s, c, f, d+2) for c in tree.children]


def gen_dot(paths, dir, option):
    ## Generate a dot file
    nodes = set()
    edges = set()
    
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
            dot.node(str(routers[i]), pos=s_pos_dot[routers[i]])
        else:
            dot.node(str(routers[i]), pos=r_pos_dot[routers[i]])

    for e in edges:
        dot.edge(e[0], e[1])

    dot.render(dir + '/' + str(option) + '/topology.dot')

server_cluster = dict()
print(sortedservers)
server_cluster[0] = sortedservers[:6]
server_cluster[1] = sortedservers[6:]
server_cluster[3] = sortedservers[3:10]
server_cluster[4] = sortedservers

print("server_cluster : ",server_cluster)

top_no = 1

for c in server_cluster:
    paths = create_sub_topology(server_cluster[c], G)
    
    paths = sorted(paths, key=itemgetter(0))

    p_file = open('divide/' + topology + '/' + str(top_no) + '/orig_path.txt', 'w')
    
    all_routers = set()
    
    for p in paths:
        p = [str(x) for x in p]
        for i in p:
            all_routers.add(i)
            
        p_file.write(' '.join(p))
        p_file.write('\n')

    p_file.close()

    f = open('divide/' + topology + '/req_routers.txt', 'w')
    f.write(str(len(all_routers) - (2*k)))
    f.close()


    d_file = open('divide/' + topology +  '/' + str(top_no) + '/distances.txt', 'w')

    i = 0
    for p in paths:
        s = p[0]
        d = p[len(p)-1]
        dist = len(p)
        d_file.write(s + ' ' + d + ' ' + str(dist) + ' ' + str(i))
        d_file.write('\n')
        i = i + 1
    d_file.close()


    trees = dict()
    for p in paths:
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
                

    f = open('divide/' + topology +  '/' + str(top_no) + '/covariance.txt', 'w')
    for s in trees:
        printTree(trees[s])
        writeCovariance(s, trees[s], f, 0)
    f.close()

    f = open('divide/' + topology +  '/' + str(top_no) + '/graph.txt', 'w')
    for s in trees:
        f.write(s + ' ' + s + '1 ' + s + '2 ')
    f.close()

    gen_dot(paths, 'divide/' + topology, str(top_no))

    top_no += 1    

    print(str(i) + " : " + str(len(all_routers)))


