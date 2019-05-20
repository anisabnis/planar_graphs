#!/bin/bash

python3 graph-divide-opt.py divide/tata_8/ 3 6

gams tree.gams

scp -2 tree.mps asabnis@users.deterlab.net:/users/asabnis/cplex/cplex/bin/x86-64_linux/


#ssh -2 asabnis@users.deterlab.net "rm ~/cplex/cplex/bin/x86-64_linux/solution.xml"
#ssh -2 asabnis@users.deterlab.net "cd ~/cplex/cplex/bin/x86-64_linux/; ./cplex -f ./command.txt; cd ../../..;" 
#scp -2 asabnis@users.deterlab.net:~/cplex/cplex/bin/x86-64_linux/solution.xml divide/tata/4/res3.xml


ssh -2 asabnis@ct1.6et1dup.edgect.isi.deterlab.net "rm ~/cplex/cplex/bin/x86-64_linux/solution.xml"
ssh -2 asabnis@ct1.6et1dup.edgect.isi.deterlab.net "cd ~/cplex/cplex/bin/x86-64_linux/; ./cplex -f ./command.txt; cd ../../..;" 
scp -2 asabnis@ct1.6et1dup.edgect.isi.deterlab.net:~/cplex/cplex/bin/x86-64_linux/solution.xml divide/tata_8/4/res3.xml

python3 parsetrees.py divide/tata_8/4/ 3 tata_8
#python3 parse_solution.py divide/tata/4/ 

#python3 gen_dot1.py divide/tata/4/
#fdp divide/tata/4/orig.dot -Tpng -o divide/tata/4/original.png
#fdp divide/tata/4/inf.dot -Tpng -o divide/tata/4/inferred.png

#./gedevo.sh results_partial/$dir$ii/