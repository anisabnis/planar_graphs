import sys
import networkx as nx
from collections import defaultdict
import copy
import random
from sklearn.cluster import KMeans
import numpy as np
from graphviz import Digraph
from graphviz import Graph
import itertools as it
from networkx.algorithms import bipartite
import planarity

import networkx as nx
import matplotlib.pyplot as plt
from operator import itemgetter
from matplotlib import collections  as mc
topology = sys.argv[1]
number_of_hosts = sys.argv[2]




def plot_graph(G, server_positions, router_positions, servers):
    ## find min lat and min long and subtract it 

#     lats = [router_positions[x][0][0] for x in router_positions]
#     min_lat = min(lats)
#     lats = [server_positions[x][0][0] for x in server_positions]
#     s_min_lat = min(lats)
#     min_lat = min(min_lat, s_min_lat)
    
#     longs = [router_positions[x][0][1] for x in router_positions]
#     min_long = min(longs)
#     longs = [server_positions[x][0][1] for x in server_positions]
#     s_min_long = min(longs)    

#     min_long = min(min_long, s_min_long)

#     for x in router_positions:
#         router_positions[x][0][0] = router_positions[x][0][0] - min_lat
#         router_positions[x][0][1] = router_positions[x][0][1] - min_long
        
#     for x in server_positions:
#         server_positions[x][0][0] = server_positions[x][0][0] - min_lat
#         server_positions[x][0][1] = server_positions[x][0][1] - min_long


#     plot_x = []
#     plot_y = []
#     plot_label = []
#     for x in router_positions :
#         plot_label.append(x)
xx#         plot_x.append(router_positions[x][0][0])
#         plot_y.append(router_positions[x][0][1])

#     for x in server_positions :
#         plot_label.append(str(x))
#         plot_x.append(server_positions[x][0][0])
#         plot_y.append(server_positions[x][0][1])


#     print(plot_label, plot_x, plot_y)

#     fig, ax = plt.subplots()
#     ax.scatter(plot_x, plot_y)
    
#     for i, txt in enumerate(plot_label):
#         ax.annotate(txt, (plot_x, plot_y))

#     plt.show()

    





G = nx.read_gml(topology + '/topology.gml')
G = nx.convert_node_labels_to_integers(G, first_label=0, ordering='default')

routers = copy.deepcopy(G.nodes())
routers = [r for r in routers]
servers = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p']

routers_dict = defaultdict(list)
for i in range(len(routers)):
    try :
        routers_dict[routers[i]].append([G.node[routers[i]]['Latitude'], G.node[routers[i]]['Longitude']])
    except:
        [x, y] = [30.32667, 76.40028]
        routers_dict[routers[i]].append([x, y])


random.shuffle(routers)

divide_by = int(len(routers)/int(number_of_hosts))
server_positions = defaultdict(list)
k = 0
for i in range(len(routers)):
    i += 1
    if i%(divide_by) == 0:
        G.add_edge(servers[k], routers[i])
        server_positions[servers[k]].append([routers_dict[routers[i]][0][0] + 0.5, routers_dict[routers[i]][0][1] + 0.5])
        k += 1

print("Is planar : ", planarity.is_planar(G))

plot_graph(G, server_positions, routers_dict, servers)
