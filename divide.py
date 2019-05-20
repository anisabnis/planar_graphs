import sys
import networkx as nx
from collections import defaultdict
import copy
import random
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

G = nx.read_gml(topology + '/topology.gml')
G = nx.convert_node_labels_to_integers(G, first_label=0, ordering='default')

print(planarity.is_planar(G))
