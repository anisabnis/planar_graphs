*  MIP written by GAMS Convert at 05/20/19 13:38:50
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*       5151      383     1868     2900        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*       1862        1        0     1861        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*      13942    13942        0        0
*
NAME          Convert
*
* original model was minimizing
*
ROWS
 N  obj     
 E  e1      
 E  e2      
 E  e3      
 E  e4      
 E  e5      
 E  e6      
 E  e7      
 E  e8      
 E  e9      
 E  e10     
 E  e11     
 E  e12     
 E  e13     
 E  e14     
 E  e15     
 E  e16     
 E  e17     
 E  e18     
 E  e19     
 E  e20     
 E  e21     
 E  e22     
 E  e23     
 E  e24     
 E  e25     
 E  e26     
 E  e27     
 E  e28     
 E  e29     
 E  e30     
 E  e31     
 E  e32     
 L  e33     
 G  e34     
 L  e35     
 G  e36     
 L  e37     
 G  e38     
 G  e39     
 G  e40     
 L  e41     
 G  e42     
 G  e43     
 G  e44     
 L  e45     
 G  e46     
 L  e47     
 G  e48     
 L  e49     
 G  e50     
 G  e51     
 G  e52     
 L  e53     
 G  e54     
 G  e55     
 G  e56     
 L  e57     
 G  e58     
 L  e59     
 G  e60     
 L  e61     
 G  e62     
 G  e63     
 G  e64     
 L  e65     
 G  e66     
 G  e67     
 G  e68     
 L  e69     
 G  e70     
 L  e71     
 G  e72     
 L  e73     
 G  e74     
 G  e75     
 G  e76     
 L  e77     
 G  e78     
 G  e79     
 G  e80     
 L  e81     
 G  e82     
 G  e83     
 G  e84     
 L  e85     
 G  e86     
 G  e87     
 G  e88     
 L  e89     
 G  e90     
 G  e91     
 G  e92     
 L  e93     
 G  e94     
 G  e95     
 G  e96     
 L  e97     
 G  e98     
 L  e99     
 G  e100    
 L  e101    
 G  e102    
 L  e103    
 G  e104    
 L  e105    
 G  e106    
 L  e107    
 G  e108    
 L  e109    
 G  e110    
 G  e111    
 G  e112    
 L  e113    
 G  e114    
 G  e115    
 G  e116    
 L  e117    
 G  e118    
 L  e119    
 G  e120    
 G  e121    
 G  e122    
 L  e123    
 G  e124    
 G  e125    
 G  e126    
 L  e127    
 G  e128    
 G  e129    
 G  e130    
 L  e131    
 G  e132    
 L  e133    
 G  e134    
 L  e135    
 G  e136    
 G  e137    
 G  e138    
 L  e139    
 G  e140    
 G  e141    
 G  e142    
 L  e143    
 G  e144    
 L  e145    
 G  e146    
 G  e147    
 G  e148    
 L  e149    
 G  e150    
 G  e151    
 G  e152    
 L  e153    
 G  e154    
 G  e155    
 G  e156    
 L  e157    
 G  e158    
 G  e159    
 G  e160    
 L  e161    
 G  e162    
 G  e163    
 G  e164    
 L  e165    
 G  e166    
 G  e167    
 G  e168    
 L  e169    
 G  e170    
 L  e171    
 G  e172    
 L  e173    
 G  e174    
 L  e175    
 G  e176    
 L  e177    
 G  e178    
 L  e179    
 G  e180    
 G  e181    
 G  e182    
 L  e183    
 G  e184    
 G  e185    
 G  e186    
 L  e187    
 G  e188    
 G  e189    
 G  e190    
 L  e191    
 G  e192    
 L  e193    
 G  e194    
 G  e195    
 G  e196    
 L  e197    
 G  e198    
 G  e199    
 G  e200    
 L  e201    
 G  e202    
 L  e203    
 G  e204    
 L  e205    
 G  e206    
 L  e207    
 G  e208    
 L  e209    
 G  e210    
 L  e211    
 G  e212    
 L  e213    
 G  e214    
 L  e215    
 G  e216    
 L  e217    
 G  e218    
 L  e219    
 G  e220    
 L  e221    
 G  e222    
 L  e223    
 G  e224    
 L  e225    
 G  e226    
 L  e227    
 G  e228    
 L  e229    
 G  e230    
 L  e231    
 G  e232    
 L  e233    
 G  e234    
 L  e235    
 G  e236    
 L  e237    
 G  e238    
 L  e239    
 G  e240    
 L  e241    
 G  e242    
 L  e243    
 G  e244    
 L  e245    
 G  e246    
 L  e247    
 G  e248    
 L  e249    
 G  e250    
 L  e251    
 G  e252    
 L  e253    
 G  e254    
 L  e255    
 G  e256    
 L  e257    
 G  e258    
 L  e259    
 G  e260    
 L  e261    
 G  e262    
 L  e263    
 G  e264    
 L  e265    
 G  e266    
 L  e267    
 G  e268    
 L  e269    
 G  e270    
 L  e271    
 G  e272    
 L  e273    
 G  e274    
 L  e275    
 G  e276    
 L  e277    
 G  e278    
 L  e279    
 G  e280    
 L  e281    
 G  e282    
 L  e283    
 G  e284    
 L  e285    
 G  e286    
 L  e287    
 G  e288    
 L  e289    
 G  e290    
 L  e291    
 G  e292    
 L  e293    
 G  e294    
 L  e295    
 G  e296    
 G  e297    
 G  e298    
 G  e299    
 G  e300    
 G  e301    
 G  e302    
 G  e303    
 G  e304    
 G  e305    
 G  e306    
 G  e307    
 G  e308    
 L  e309    
 G  e310    
 L  e311    
 G  e312    
 L  e313    
 L  e314    
 G  e315    
 L  e316    
 G  e317    
 L  e318    
 E  e319    
 L  e320    
 G  e321    
 L  e322    
 G  e323    
 L  e324    
 L  e325    
 G  e326    
 L  e327    
 G  e328    
 L  e329    
 E  e330    
 L  e331    
 G  e332    
 L  e333    
 G  e334    
 L  e335    
 L  e336    
 G  e337    
 L  e338    
 G  e339    
 L  e340    
 L  e341    
 G  e342    
 L  e343    
 G  e344    
 L  e345    
 E  e346    
 L  e347    
 G  e348    
 L  e349    
 G  e350    
 L  e351    
 L  e352    
 G  e353    
 L  e354    
 G  e355    
 L  e356    
 L  e357    
 G  e358    
 L  e359    
 G  e360    
 L  e361    
 E  e362    
 L  e363    
 G  e364    
 L  e365    
 G  e366    
 L  e367    
 L  e368    
 G  e369    
 L  e370    
 G  e371    
 L  e372    
 E  e373    
 L  e374    
 G  e375    
 L  e376    
 G  e377    
 L  e378    
 L  e379    
 G  e380    
 L  e381    
 G  e382    
 L  e383    
 E  e384    
 L  e385    
 G  e386    
 L  e387    
 G  e388    
 L  e389    
 L  e390    
 G  e391    
 L  e392    
 G  e393    
 L  e394    
 E  e395    
 L  e396    
 G  e397    
 L  e398    
 G  e399    
 L  e400    
 L  e401    
 G  e402    
 L  e403    
 G  e404    
 L  e405    
 E  e406    
 L  e407    
 G  e408    
 L  e409    
 G  e410    
 L  e411    
 L  e412    
 G  e413    
 L  e414    
 G  e415    
 L  e416    
 L  e417    
 G  e418    
 L  e419    
 G  e420    
 L  e421    
 E  e422    
 L  e423    
 G  e424    
 L  e425    
 G  e426    
 L  e427    
 L  e428    
 G  e429    
 L  e430    
 G  e431    
 L  e432    
 L  e433    
 G  e434    
 L  e435    
 G  e436    
 L  e437    
 E  e438    
 L  e439    
 G  e440    
 L  e441    
 G  e442    
 L  e443    
 L  e444    
 G  e445    
 L  e446    
 G  e447    
 L  e448    
 E  e449    
 L  e450    
 G  e451    
 L  e452    
 G  e453    
 L  e454    
 L  e455    
 G  e456    
 L  e457    
 G  e458    
 L  e459    
 E  e460    
 L  e461    
 G  e462    
 L  e463    
 G  e464    
 L  e465    
 L  e466    
 G  e467    
 L  e468    
 G  e469    
 L  e470    
 E  e471    
 L  e472    
 G  e473    
 L  e474    
 G  e475    
 L  e476    
 L  e477    
 G  e478    
 L  e479    
 G  e480    
 L  e481    
 E  e482    
 L  e483    
 G  e484    
 L  e485    
 G  e486    
 L  e487    
 L  e488    
 G  e489    
 L  e490    
 G  e491    
 L  e492    
 L  e493    
 G  e494    
 L  e495    
 G  e496    
 L  e497    
 E  e498    
 L  e499    
 G  e500    
 L  e501    
 G  e502    
 L  e503    
 L  e504    
 G  e505    
 L  e506    
 G  e507    
 L  e508    
 L  e509    
 G  e510    
 L  e511    
 G  e512    
 L  e513    
 E  e514    
 L  e515    
 G  e516    
 L  e517    
 G  e518    
 L  e519    
 L  e520    
 G  e521    
 L  e522    
 G  e523    
 L  e524    
 E  e525    
 L  e526    
 G  e527    
 L  e528    
 G  e529    
 L  e530    
 L  e531    
 G  e532    
 L  e533    
 G  e534    
 L  e535    
 E  e536    
 L  e537    
 G  e538    
 L  e539    
 G  e540    
 L  e541    
 L  e542    
 G  e543    
 L  e544    
 G  e545    
 L  e546    
 L  e547    
 G  e548    
 L  e549    
 G  e550    
 L  e551    
 E  e552    
 L  e553    
 G  e554    
 L  e555    
 G  e556    
 L  e557    
 L  e558    
 G  e559    
 L  e560    
 G  e561    
 L  e562    
 L  e563    
 G  e564    
 L  e565    
 G  e566    
 L  e567    
 E  e568    
 L  e569    
 G  e570    
 L  e571    
 G  e572    
 L  e573    
 L  e574    
 G  e575    
 L  e576    
 G  e577    
 L  e578    
 L  e579    
 G  e580    
 L  e581    
 G  e582    
 L  e583    
 E  e584    
 L  e585    
 G  e586    
 L  e587    
 G  e588    
 L  e589    
 L  e590    
 G  e591    
 L  e592    
 G  e593    
 L  e594    
 L  e595    
 G  e596    
 L  e597    
 G  e598    
 L  e599    
 E  e600    
 L  e601    
 G  e602    
 L  e603    
 G  e604    
 L  e605    
 L  e606    
 G  e607    
 L  e608    
 G  e609    
 L  e610    
 L  e611    
 G  e612    
 L  e613    
 G  e614    
 L  e615    
 E  e616    
 L  e617    
 G  e618    
 L  e619    
 G  e620    
 L  e621    
 L  e622    
 G  e623    
 L  e624    
 G  e625    
 L  e626    
 L  e627    
 G  e628    
 L  e629    
 G  e630    
 L  e631    
 E  e632    
 L  e633    
 G  e634    
 L  e635    
 G  e636    
 L  e637    
 L  e638    
 G  e639    
 L  e640    
 G  e641    
 L  e642    
 L  e643    
 G  e644    
 L  e645    
 G  e646    
 L  e647    
 E  e648    
 L  e649    
 G  e650    
 L  e651    
 G  e652    
 L  e653    
 L  e654    
 G  e655    
 L  e656    
 G  e657    
 L  e658    
 L  e659    
 G  e660    
 L  e661    
 G  e662    
 L  e663    
 E  e664    
 L  e665    
 G  e666    
 L  e667    
 G  e668    
 L  e669    
 L  e670    
 G  e671    
 L  e672    
 G  e673    
 L  e674    
 L  e675    
 G  e676    
 L  e677    
 G  e678    
 L  e679    
 L  e680    
 G  e681    
 L  e682    
 G  e683    
 L  e684    
 L  e685    
 G  e686    
 L  e687    
 G  e688    
 L  e689    
 L  e690    
 G  e691    
 L  e692    
 G  e693    
 L  e694    
 L  e695    
 G  e696    
 L  e697    
 G  e698    
 L  e699    
 L  e700    
 G  e701    
 L  e702    
 G  e703    
 L  e704    
 L  e705    
 G  e706    
 L  e707    
 G  e708    
 L  e709    
 L  e710    
 G  e711    
 L  e712    
 G  e713    
 L  e714    
 E  e715    
 L  e716    
 G  e717    
 L  e718    
 G  e719    
 L  e720    
 L  e721    
 G  e722    
 L  e723    
 G  e724    
 L  e725    
 L  e726    
 G  e727    
 L  e728    
 G  e729    
 L  e730    
 L  e731    
 G  e732    
 L  e733    
 G  e734    
 L  e735    
 L  e736    
 G  e737    
 L  e738    
 G  e739    
 L  e740    
 L  e741    
 G  e742    
 L  e743    
 G  e744    
 L  e745    
 L  e746    
 G  e747    
 L  e748    
 G  e749    
 L  e750    
 L  e751    
 G  e752    
 L  e753    
 G  e754    
 L  e755    
 L  e756    
 G  e757    
 L  e758    
 G  e759    
 L  e760    
 L  e761    
 G  e762    
 L  e763    
 G  e764    
 L  e765    
 E  e766    
 L  e767    
 G  e768    
 L  e769    
 G  e770    
 L  e771    
 L  e772    
 G  e773    
 L  e774    
 G  e775    
 L  e776    
 L  e777    
 G  e778    
 L  e779    
 G  e780    
 L  e781    
 L  e782    
 G  e783    
 L  e784    
 G  e785    
 L  e786    
 L  e787    
 G  e788    
 L  e789    
 G  e790    
 L  e791    
 L  e792    
 G  e793    
 L  e794    
 G  e795    
 L  e796    
 L  e797    
 G  e798    
 L  e799    
 G  e800    
 L  e801    
 L  e802    
 G  e803    
 L  e804    
 G  e805    
 L  e806    
 L  e807    
 G  e808    
 L  e809    
 G  e810    
 L  e811    
 L  e812    
 G  e813    
 L  e814    
 G  e815    
 L  e816    
 L  e817    
 G  e818    
 L  e819    
 G  e820    
 L  e821    
 E  e822    
 L  e823    
 G  e824    
 L  e825    
 G  e826    
 L  e827    
 L  e828    
 G  e829    
 L  e830    
 G  e831    
 L  e832    
 L  e833    
 G  e834    
 L  e835    
 G  e836    
 L  e837    
 E  e838    
 L  e839    
 G  e840    
 L  e841    
 G  e842    
 L  e843    
 L  e844    
 G  e845    
 L  e846    
 G  e847    
 L  e848    
 L  e849    
 G  e850    
 L  e851    
 G  e852    
 L  e853    
 E  e854    
 L  e855    
 G  e856    
 L  e857    
 G  e858    
 L  e859    
 L  e860    
 G  e861    
 L  e862    
 G  e863    
 L  e864    
 L  e865    
 G  e866    
 L  e867    
 G  e868    
 L  e869    
 E  e870    
 L  e871    
 G  e872    
 L  e873    
 G  e874    
 L  e875    
 L  e876    
 G  e877    
 L  e878    
 G  e879    
 L  e880    
 L  e881    
 G  e882    
 L  e883    
 G  e884    
 L  e885    
 E  e886    
 L  e887    
 G  e888    
 L  e889    
 G  e890    
 L  e891    
 L  e892    
 G  e893    
 L  e894    
 G  e895    
 L  e896    
 L  e897    
 G  e898    
 L  e899    
 G  e900    
 L  e901    
 E  e902    
 L  e903    
 G  e904    
 L  e905    
 G  e906    
 L  e907    
 L  e908    
 G  e909    
 L  e910    
 G  e911    
 L  e912    
 L  e913    
 G  e914    
 L  e915    
 G  e916    
 L  e917    
 E  e918    
 L  e919    
 G  e920    
 L  e921    
 G  e922    
 L  e923    
 L  e924    
 G  e925    
 L  e926    
 G  e927    
 L  e928    
 L  e929    
 G  e930    
 L  e931    
 G  e932    
 L  e933    
 E  e934    
 L  e935    
 G  e936    
 L  e937    
 G  e938    
 L  e939    
 L  e940    
 G  e941    
 L  e942    
 G  e943    
 L  e944    
 L  e945    
 G  e946    
 L  e947    
 G  e948    
 L  e949    
 E  e950    
 L  e951    
 G  e952    
 L  e953    
 G  e954    
 L  e955    
 L  e956    
 G  e957    
 L  e958    
 G  e959    
 L  e960    
 L  e961    
 G  e962    
 L  e963    
 G  e964    
 L  e965    
 L  e966    
 G  e967    
 L  e968    
 G  e969    
 L  e970    
 L  e971    
 G  e972    
 L  e973    
 G  e974    
 L  e975    
 L  e976    
 G  e977    
 L  e978    
 G  e979    
 L  e980    
 L  e981    
 G  e982    
 L  e983    
 G  e984    
 L  e985    
 L  e986    
 G  e987    
 L  e988    
 G  e989    
 L  e990    
 L  e991    
 G  e992    
 L  e993    
 G  e994    
 L  e995    
 L  e996    
 G  e997    
 L  e998    
 G  e999    
 L  e1000   
 E  e1001   
 L  e1002   
 G  e1003   
 L  e1004   
 G  e1005   
 L  e1006   
 L  e1007   
 G  e1008   
 L  e1009   
 G  e1010   
 L  e1011   
 L  e1012   
 G  e1013   
 L  e1014   
 G  e1015   
 L  e1016   
 L  e1017   
 G  e1018   
 L  e1019   
 G  e1020   
 L  e1021   
 L  e1022   
 G  e1023   
 L  e1024   
 G  e1025   
 L  e1026   
 L  e1027   
 G  e1028   
 L  e1029   
 G  e1030   
 L  e1031   
 L  e1032   
 G  e1033   
 L  e1034   
 G  e1035   
 L  e1036   
 L  e1037   
 G  e1038   
 L  e1039   
 G  e1040   
 L  e1041   
 L  e1042   
 G  e1043   
 L  e1044   
 G  e1045   
 L  e1046   
 L  e1047   
 G  e1048   
 L  e1049   
 G  e1050   
 L  e1051   
 E  e1052   
 L  e1053   
 G  e1054   
 L  e1055   
 G  e1056   
 L  e1057   
 L  e1058   
 G  e1059   
 L  e1060   
 G  e1061   
 L  e1062   
 L  e1063   
 G  e1064   
 L  e1065   
 G  e1066   
 L  e1067   
 L  e1068   
 G  e1069   
 L  e1070   
 G  e1071   
 L  e1072   
 L  e1073   
 G  e1074   
 L  e1075   
 G  e1076   
 L  e1077   
 L  e1078   
 G  e1079   
 L  e1080   
 G  e1081   
 L  e1082   
 L  e1083   
 G  e1084   
 L  e1085   
 G  e1086   
 L  e1087   
 L  e1088   
 G  e1089   
 L  e1090   
 G  e1091   
 L  e1092   
 L  e1093   
 G  e1094   
 L  e1095   
 G  e1096   
 L  e1097   
 L  e1098   
 G  e1099   
 L  e1100   
 G  e1101   
 L  e1102   
 L  e1103   
 G  e1104   
 L  e1105   
 G  e1106   
 L  e1107   
 E  e1108   
 L  e1109   
 G  e1110   
 L  e1111   
 G  e1112   
 L  e1113   
 L  e1114   
 G  e1115   
 L  e1116   
 G  e1117   
 L  e1118   
 E  e1119   
 L  e1120   
 G  e1121   
 L  e1122   
 G  e1123   
 L  e1124   
 L  e1125   
 G  e1126   
 L  e1127   
 G  e1128   
 L  e1129   
 E  e1130   
 L  e1131   
 G  e1132   
 L  e1133   
 G  e1134   
 L  e1135   
 L  e1136   
 G  e1137   
 L  e1138   
 G  e1139   
 L  e1140   
 L  e1141   
 G  e1142   
 L  e1143   
 G  e1144   
 L  e1145   
 E  e1146   
 L  e1147   
 G  e1148   
 L  e1149   
 G  e1150   
 L  e1151   
 L  e1152   
 G  e1153   
 L  e1154   
 G  e1155   
 L  e1156   
 L  e1157   
 G  e1158   
 L  e1159   
 G  e1160   
 L  e1161   
 E  e1162   
 L  e1163   
 G  e1164   
 L  e1165   
 G  e1166   
 L  e1167   
 L  e1168   
 G  e1169   
 L  e1170   
 G  e1171   
 L  e1172   
 E  e1173   
 L  e1174   
 G  e1175   
 L  e1176   
 G  e1177   
 L  e1178   
 L  e1179   
 G  e1180   
 L  e1181   
 G  e1182   
 L  e1183   
 E  e1184   
 L  e1185   
 G  e1186   
 L  e1187   
 G  e1188   
 L  e1189   
 L  e1190   
 G  e1191   
 L  e1192   
 G  e1193   
 L  e1194   
 E  e1195   
 L  e1196   
 G  e1197   
 L  e1198   
 G  e1199   
 L  e1200   
 L  e1201   
 G  e1202   
 L  e1203   
 G  e1204   
 L  e1205   
 E  e1206   
 L  e1207   
 G  e1208   
 L  e1209   
 G  e1210   
 L  e1211   
 L  e1212   
 G  e1213   
 L  e1214   
 G  e1215   
 L  e1216   
 L  e1217   
 G  e1218   
 L  e1219   
 G  e1220   
 L  e1221   
 E  e1222   
 L  e1223   
 G  e1224   
 L  e1225   
 G  e1226   
 L  e1227   
 L  e1228   
 G  e1229   
 L  e1230   
 G  e1231   
 L  e1232   
 L  e1233   
 G  e1234   
 L  e1235   
 G  e1236   
 L  e1237   
 E  e1238   
 L  e1239   
 G  e1240   
 L  e1241   
 G  e1242   
 L  e1243   
 L  e1244   
 G  e1245   
 L  e1246   
 G  e1247   
 L  e1248   
 E  e1249   
 L  e1250   
 G  e1251   
 L  e1252   
 G  e1253   
 L  e1254   
 L  e1255   
 G  e1256   
 L  e1257   
 G  e1258   
 L  e1259   
 E  e1260   
 L  e1261   
 G  e1262   
 L  e1263   
 G  e1264   
 L  e1265   
 L  e1266   
 G  e1267   
 L  e1268   
 G  e1269   
 L  e1270   
 E  e1271   
 L  e1272   
 G  e1273   
 L  e1274   
 G  e1275   
 L  e1276   
 L  e1277   
 G  e1278   
 L  e1279   
 G  e1280   
 L  e1281   
 E  e1282   
 L  e1283   
 G  e1284   
 L  e1285   
 G  e1286   
 L  e1287   
 L  e1288   
 G  e1289   
 L  e1290   
 G  e1291   
 L  e1292   
 L  e1293   
 G  e1294   
 L  e1295   
 G  e1296   
 L  e1297   
 E  e1298   
 L  e1299   
 G  e1300   
 L  e1301   
 G  e1302   
 L  e1303   
 L  e1304   
 G  e1305   
 L  e1306   
 G  e1307   
 L  e1308   
 L  e1309   
 G  e1310   
 L  e1311   
 G  e1312   
 L  e1313   
 E  e1314   
 L  e1315   
 G  e1316   
 L  e1317   
 G  e1318   
 L  e1319   
 L  e1320   
 G  e1321   
 L  e1322   
 G  e1323   
 L  e1324   
 E  e1325   
 L  e1326   
 G  e1327   
 L  e1328   
 G  e1329   
 L  e1330   
 L  e1331   
 G  e1332   
 L  e1333   
 G  e1334   
 L  e1335   
 E  e1336   
 L  e1337   
 G  e1338   
 L  e1339   
 G  e1340   
 L  e1341   
 L  e1342   
 G  e1343   
 L  e1344   
 G  e1345   
 L  e1346   
 L  e1347   
 G  e1348   
 L  e1349   
 G  e1350   
 L  e1351   
 E  e1352   
 L  e1353   
 G  e1354   
 L  e1355   
 G  e1356   
 L  e1357   
 L  e1358   
 G  e1359   
 L  e1360   
 G  e1361   
 L  e1362   
 L  e1363   
 G  e1364   
 L  e1365   
 G  e1366   
 L  e1367   
 E  e1368   
 L  e1369   
 G  e1370   
 L  e1371   
 G  e1372   
 L  e1373   
 L  e1374   
 G  e1375   
 L  e1376   
 G  e1377   
 L  e1378   
 L  e1379   
 G  e1380   
 L  e1381   
 G  e1382   
 L  e1383   
 E  e1384   
 L  e1385   
 G  e1386   
 L  e1387   
 G  e1388   
 L  e1389   
 L  e1390   
 G  e1391   
 L  e1392   
 G  e1393   
 L  e1394   
 L  e1395   
 G  e1396   
 L  e1397   
 G  e1398   
 L  e1399   
 E  e1400   
 L  e1401   
 G  e1402   
 L  e1403   
 G  e1404   
 L  e1405   
 L  e1406   
 G  e1407   
 L  e1408   
 G  e1409   
 L  e1410   
 L  e1411   
 G  e1412   
 L  e1413   
 G  e1414   
 L  e1415   
 E  e1416   
 L  e1417   
 G  e1418   
 L  e1419   
 G  e1420   
 L  e1421   
 L  e1422   
 G  e1423   
 L  e1424   
 G  e1425   
 L  e1426   
 L  e1427   
 G  e1428   
 L  e1429   
 G  e1430   
 L  e1431   
 E  e1432   
 L  e1433   
 G  e1434   
 L  e1435   
 G  e1436   
 L  e1437   
 L  e1438   
 G  e1439   
 L  e1440   
 G  e1441   
 L  e1442   
 L  e1443   
 G  e1444   
 L  e1445   
 G  e1446   
 L  e1447   
 E  e1448   
 L  e1449   
 G  e1450   
 L  e1451   
 G  e1452   
 L  e1453   
 L  e1454   
 G  e1455   
 L  e1456   
 G  e1457   
 L  e1458   
 L  e1459   
 G  e1460   
 L  e1461   
 G  e1462   
 L  e1463   
 E  e1464   
 L  e1465   
 G  e1466   
 L  e1467   
 G  e1468   
 L  e1469   
 L  e1470   
 G  e1471   
 L  e1472   
 G  e1473   
 L  e1474   
 L  e1475   
 G  e1476   
 L  e1477   
 G  e1478   
 L  e1479   
 L  e1480   
 G  e1481   
 L  e1482   
 G  e1483   
 L  e1484   
 L  e1485   
 G  e1486   
 L  e1487   
 G  e1488   
 L  e1489   
 L  e1490   
 G  e1491   
 L  e1492   
 G  e1493   
 L  e1494   
 L  e1495   
 G  e1496   
 L  e1497   
 G  e1498   
 L  e1499   
 L  e1500   
 G  e1501   
 L  e1502   
 G  e1503   
 L  e1504   
 L  e1505   
 G  e1506   
 L  e1507   
 G  e1508   
 L  e1509   
 L  e1510   
 G  e1511   
 L  e1512   
 G  e1513   
 L  e1514   
 E  e1515   
 L  e1516   
 G  e1517   
 L  e1518   
 G  e1519   
 L  e1520   
 L  e1521   
 G  e1522   
 L  e1523   
 G  e1524   
 L  e1525   
 L  e1526   
 G  e1527   
 L  e1528   
 G  e1529   
 L  e1530   
 L  e1531   
 G  e1532   
 L  e1533   
 G  e1534   
 L  e1535   
 L  e1536   
 G  e1537   
 L  e1538   
 G  e1539   
 L  e1540   
 L  e1541   
 G  e1542   
 L  e1543   
 G  e1544   
 L  e1545   
 L  e1546   
 G  e1547   
 L  e1548   
 G  e1549   
 L  e1550   
 L  e1551   
 G  e1552   
 L  e1553   
 G  e1554   
 L  e1555   
 L  e1556   
 G  e1557   
 L  e1558   
 G  e1559   
 L  e1560   
 L  e1561   
 G  e1562   
 L  e1563   
 G  e1564   
 L  e1565   
 E  e1566   
 L  e1567   
 G  e1568   
 L  e1569   
 G  e1570   
 L  e1571   
 L  e1572   
 G  e1573   
 L  e1574   
 G  e1575   
 L  e1576   
 L  e1577   
 G  e1578   
 L  e1579   
 G  e1580   
 L  e1581   
 L  e1582   
 G  e1583   
 L  e1584   
 G  e1585   
 L  e1586   
 L  e1587   
 G  e1588   
 L  e1589   
 G  e1590   
 L  e1591   
 L  e1592   
 G  e1593   
 L  e1594   
 G  e1595   
 L  e1596   
 L  e1597   
 G  e1598   
 L  e1599   
 G  e1600   
 L  e1601   
 L  e1602   
 G  e1603   
 L  e1604   
 G  e1605   
 L  e1606   
 L  e1607   
 G  e1608   
 L  e1609   
 G  e1610   
 L  e1611   
 L  e1612   
 G  e1613   
 L  e1614   
 G  e1615   
 L  e1616   
 L  e1617   
 G  e1618   
 L  e1619   
 G  e1620   
 L  e1621   
 E  e1622   
 L  e1623   
 G  e1624   
 L  e1625   
 G  e1626   
 L  e1627   
 L  e1628   
 G  e1629   
 L  e1630   
 G  e1631   
 L  e1632   
 L  e1633   
 G  e1634   
 L  e1635   
 G  e1636   
 L  e1637   
 E  e1638   
 L  e1639   
 G  e1640   
 L  e1641   
 G  e1642   
 L  e1643   
 L  e1644   
 G  e1645   
 L  e1646   
 G  e1647   
 L  e1648   
 L  e1649   
 G  e1650   
 L  e1651   
 G  e1652   
 L  e1653   
 E  e1654   
 L  e1655   
 G  e1656   
 L  e1657   
 G  e1658   
 L  e1659   
 L  e1660   
 G  e1661   
 L  e1662   
 G  e1663   
 L  e1664   
 L  e1665   
 G  e1666   
 L  e1667   
 G  e1668   
 L  e1669   
 E  e1670   
 L  e1671   
 G  e1672   
 L  e1673   
 G  e1674   
 L  e1675   
 L  e1676   
 G  e1677   
 L  e1678   
 G  e1679   
 L  e1680   
 L  e1681   
 G  e1682   
 L  e1683   
 G  e1684   
 L  e1685   
 E  e1686   
 L  e1687   
 G  e1688   
 L  e1689   
 G  e1690   
 L  e1691   
 L  e1692   
 G  e1693   
 L  e1694   
 G  e1695   
 L  e1696   
 L  e1697   
 G  e1698   
 L  e1699   
 G  e1700   
 L  e1701   
 E  e1702   
 L  e1703   
 G  e1704   
 L  e1705   
 G  e1706   
 L  e1707   
 L  e1708   
 G  e1709   
 L  e1710   
 G  e1711   
 L  e1712   
 L  e1713   
 G  e1714   
 L  e1715   
 G  e1716   
 L  e1717   
 E  e1718   
 L  e1719   
 G  e1720   
 L  e1721   
 G  e1722   
 L  e1723   
 L  e1724   
 G  e1725   
 L  e1726   
 G  e1727   
 L  e1728   
 L  e1729   
 G  e1730   
 L  e1731   
 G  e1732   
 L  e1733   
 E  e1734   
 L  e1735   
 G  e1736   
 L  e1737   
 G  e1738   
 L  e1739   
 L  e1740   
 G  e1741   
 L  e1742   
 G  e1743   
 L  e1744   
 L  e1745   
 G  e1746   
 L  e1747   
 G  e1748   
 L  e1749   
 E  e1750   
 L  e1751   
 G  e1752   
 L  e1753   
 G  e1754   
 L  e1755   
 L  e1756   
 G  e1757   
 L  e1758   
 G  e1759   
 L  e1760   
 L  e1761   
 G  e1762   
 L  e1763   
 G  e1764   
 L  e1765   
 L  e1766   
 G  e1767   
 L  e1768   
 G  e1769   
 L  e1770   
 L  e1771   
 G  e1772   
 L  e1773   
 G  e1774   
 L  e1775   
 L  e1776   
 G  e1777   
 L  e1778   
 G  e1779   
 L  e1780   
 L  e1781   
 G  e1782   
 L  e1783   
 G  e1784   
 L  e1785   
 L  e1786   
 G  e1787   
 L  e1788   
 G  e1789   
 L  e1790   
 L  e1791   
 G  e1792   
 L  e1793   
 G  e1794   
 L  e1795   
 L  e1796   
 G  e1797   
 L  e1798   
 G  e1799   
 L  e1800   
 E  e1801   
 L  e1802   
 G  e1803   
 L  e1804   
 G  e1805   
 L  e1806   
 L  e1807   
 G  e1808   
 L  e1809   
 G  e1810   
 L  e1811   
 L  e1812   
 G  e1813   
 L  e1814   
 G  e1815   
 L  e1816   
 L  e1817   
 G  e1818   
 L  e1819   
 G  e1820   
 L  e1821   
 L  e1822   
 G  e1823   
 L  e1824   
 G  e1825   
 L  e1826   
 L  e1827   
 G  e1828   
 L  e1829   
 G  e1830   
 L  e1831   
 L  e1832   
 G  e1833   
 L  e1834   
 G  e1835   
 L  e1836   
 L  e1837   
 G  e1838   
 L  e1839   
 G  e1840   
 L  e1841   
 L  e1842   
 G  e1843   
 L  e1844   
 G  e1845   
 L  e1846   
 L  e1847   
 G  e1848   
 L  e1849   
 G  e1850   
 L  e1851   
 E  e1852   
 L  e1853   
 G  e1854   
 L  e1855   
 G  e1856   
 L  e1857   
 L  e1858   
 G  e1859   
 L  e1860   
 G  e1861   
 L  e1862   
 L  e1863   
 G  e1864   
 L  e1865   
 G  e1866   
 L  e1867   
 L  e1868   
 G  e1869   
 L  e1870   
 G  e1871   
 L  e1872   
 L  e1873   
 G  e1874   
 L  e1875   
 G  e1876   
 L  e1877   
 L  e1878   
 G  e1879   
 L  e1880   
 G  e1881   
 L  e1882   
 L  e1883   
 G  e1884   
 L  e1885   
 G  e1886   
 L  e1887   
 L  e1888   
 G  e1889   
 L  e1890   
 G  e1891   
 L  e1892   
 L  e1893   
 G  e1894   
 L  e1895   
 G  e1896   
 L  e1897   
 L  e1898   
 G  e1899   
 L  e1900   
 G  e1901   
 L  e1902   
 L  e1903   
 G  e1904   
 L  e1905   
 G  e1906   
 L  e1907   
 E  e1908   
 E  e1909   
 E  e1910   
 L  e1911   
 L  e1912   
 G  e1913   
 L  e1914   
 L  e1915   
 G  e1916   
 E  e1917   
 L  e1918   
 L  e1919   
 G  e1920   
 L  e1921   
 L  e1922   
 G  e1923   
 E  e1924   
 L  e1925   
 L  e1926   
 G  e1927   
 L  e1928   
 L  e1929   
 G  e1930   
 E  e1931   
 E  e1932   
 E  e1933   
 L  e1934   
 L  e1935   
 G  e1936   
 L  e1937   
 L  e1938   
 G  e1939   
 E  e1940   
 L  e1941   
 L  e1942   
 G  e1943   
 L  e1944   
 L  e1945   
 G  e1946   
 E  e1947   
 L  e1948   
 L  e1949   
 G  e1950   
 L  e1951   
 L  e1952   
 G  e1953   
 E  e1954   
 E  e1955   
 E  e1956   
 L  e1957   
 L  e1958   
 G  e1959   
 L  e1960   
 L  e1961   
 G  e1962   
 E  e1963   
 L  e1964   
 L  e1965   
 G  e1966   
 L  e1967   
 L  e1968   
 G  e1969   
 E  e1970   
 L  e1971   
 L  e1972   
 G  e1973   
 L  e1974   
 L  e1975   
 G  e1976   
 E  e1977   
 E  e1978   
 E  e1979   
 L  e1980   
 L  e1981   
 G  e1982   
 L  e1983   
 L  e1984   
 G  e1985   
 E  e1986   
 L  e1987   
 L  e1988   
 G  e1989   
 L  e1990   
 L  e1991   
 G  e1992   
 E  e1993   
 L  e1994   
 L  e1995   
 G  e1996   
 L  e1997   
 L  e1998   
 G  e1999   
 E  e2000   
 E  e2001   
 E  e2002   
 L  e2003   
 L  e2004   
 G  e2005   
 L  e2006   
 L  e2007   
 G  e2008   
 E  e2009   
 L  e2010   
 L  e2011   
 G  e2012   
 L  e2013   
 L  e2014   
 G  e2015   
 E  e2016   
 L  e2017   
 L  e2018   
 G  e2019   
 L  e2020   
 L  e2021   
 G  e2022   
 E  e2023   
 E  e2024   
 E  e2025   
 L  e2026   
 L  e2027   
 G  e2028   
 L  e2029   
 L  e2030   
 G  e2031   
 E  e2032   
 L  e2033   
 L  e2034   
 G  e2035   
 L  e2036   
 L  e2037   
 G  e2038   
 E  e2039   
 L  e2040   
 L  e2041   
 G  e2042   
 L  e2043   
 L  e2044   
 G  e2045   
 E  e2046   
 E  e2047   
 E  e2048   
 L  e2049   
 L  e2050   
 G  e2051   
 L  e2052   
 L  e2053   
 G  e2054   
 E  e2055   
 L  e2056   
 L  e2057   
 G  e2058   
 L  e2059   
 L  e2060   
 G  e2061   
 E  e2062   
 L  e2063   
 L  e2064   
 G  e2065   
 L  e2066   
 L  e2067   
 G  e2068   
 E  e2069   
 E  e2070   
 E  e2071   
 L  e2072   
 L  e2073   
 G  e2074   
 L  e2075   
 L  e2076   
 G  e2077   
 E  e2078   
 L  e2079   
 L  e2080   
 G  e2081   
 L  e2082   
 L  e2083   
 G  e2084   
 E  e2085   
 L  e2086   
 L  e2087   
 G  e2088   
 L  e2089   
 L  e2090   
 G  e2091   
 E  e2092   
 E  e2093   
 E  e2094   
 L  e2095   
 L  e2096   
 G  e2097   
 L  e2098   
 L  e2099   
 G  e2100   
 E  e2101   
 L  e2102   
 L  e2103   
 G  e2104   
 L  e2105   
 L  e2106   
 G  e2107   
 E  e2108   
 L  e2109   
 L  e2110   
 G  e2111   
 L  e2112   
 L  e2113   
 G  e2114   
 E  e2115   
 E  e2116   
 E  e2117   
 L  e2118   
 L  e2119   
 G  e2120   
 L  e2121   
 L  e2122   
 G  e2123   
 E  e2124   
 L  e2125   
 L  e2126   
 G  e2127   
 L  e2128   
 L  e2129   
 G  e2130   
 E  e2131   
 L  e2132   
 L  e2133   
 G  e2134   
 L  e2135   
 L  e2136   
 G  e2137   
 E  e2138   
 E  e2139   
 E  e2140   
 L  e2141   
 L  e2142   
 G  e2143   
 L  e2144   
 L  e2145   
 G  e2146   
 E  e2147   
 L  e2148   
 L  e2149   
 G  e2150   
 L  e2151   
 L  e2152   
 G  e2153   
 E  e2154   
 L  e2155   
 L  e2156   
 G  e2157   
 L  e2158   
 L  e2159   
 G  e2160   
 E  e2161   
 E  e2162   
 E  e2163   
 L  e2164   
 L  e2165   
 G  e2166   
 L  e2167   
 L  e2168   
 G  e2169   
 E  e2170   
 L  e2171   
 L  e2172   
 G  e2173   
 L  e2174   
 L  e2175   
 G  e2176   
 E  e2177   
 L  e2178   
 L  e2179   
 G  e2180   
 L  e2181   
 L  e2182   
 G  e2183   
 E  e2184   
 E  e2185   
 E  e2186   
 L  e2187   
 L  e2188   
 G  e2189   
 L  e2190   
 L  e2191   
 G  e2192   
 E  e2193   
 L  e2194   
 L  e2195   
 G  e2196   
 L  e2197   
 L  e2198   
 G  e2199   
 E  e2200   
 L  e2201   
 L  e2202   
 G  e2203   
 L  e2204   
 L  e2205   
 G  e2206   
 E  e2207   
 E  e2208   
 E  e2209   
 L  e2210   
 L  e2211   
 G  e2212   
 L  e2213   
 L  e2214   
 G  e2215   
 E  e2216   
 L  e2217   
 L  e2218   
 G  e2219   
 L  e2220   
 L  e2221   
 G  e2222   
 E  e2223   
 L  e2224   
 L  e2225   
 G  e2226   
 L  e2227   
 L  e2228   
 G  e2229   
 E  e2230   
 E  e2231   
 E  e2232   
 L  e2233   
 L  e2234   
 G  e2235   
 L  e2236   
 L  e2237   
 G  e2238   
 E  e2239   
 L  e2240   
 L  e2241   
 G  e2242   
 L  e2243   
 L  e2244   
 G  e2245   
 E  e2246   
 L  e2247   
 L  e2248   
 G  e2249   
 L  e2250   
 L  e2251   
 G  e2252   
 E  e2253   
 E  e2254   
 E  e2255   
 L  e2256   
 L  e2257   
 G  e2258   
 L  e2259   
 L  e2260   
 G  e2261   
 E  e2262   
 L  e2263   
 L  e2264   
 G  e2265   
 L  e2266   
 L  e2267   
 G  e2268   
 E  e2269   
 L  e2270   
 L  e2271   
 G  e2272   
 L  e2273   
 L  e2274   
 G  e2275   
 E  e2276   
 E  e2277   
 E  e2278   
 L  e2279   
 L  e2280   
 G  e2281   
 L  e2282   
 L  e2283   
 G  e2284   
 E  e2285   
 L  e2286   
 L  e2287   
 G  e2288   
 L  e2289   
 L  e2290   
 G  e2291   
 E  e2292   
 L  e2293   
 L  e2294   
 G  e2295   
 L  e2296   
 L  e2297   
 G  e2298   
 E  e2299   
 E  e2300   
 E  e2301   
 L  e2302   
 L  e2303   
 G  e2304   
 L  e2305   
 L  e2306   
 G  e2307   
 E  e2308   
 L  e2309   
 L  e2310   
 G  e2311   
 L  e2312   
 L  e2313   
 G  e2314   
 E  e2315   
 L  e2316   
 L  e2317   
 G  e2318   
 L  e2319   
 L  e2320   
 G  e2321   
 E  e2322   
 E  e2323   
 E  e2324   
 L  e2325   
 L  e2326   
 G  e2327   
 L  e2328   
 L  e2329   
 G  e2330   
 E  e2331   
 L  e2332   
 L  e2333   
 G  e2334   
 L  e2335   
 L  e2336   
 G  e2337   
 E  e2338   
 E  e2339   
 E  e2340   
 L  e2341   
 L  e2342   
 G  e2343   
 L  e2344   
 L  e2345   
 G  e2346   
 E  e2347   
 L  e2348   
 L  e2349   
 G  e2350   
 L  e2351   
 L  e2352   
 G  e2353   
 E  e2354   
 E  e2355   
 E  e2356   
 L  e2357   
 L  e2358   
 G  e2359   
 L  e2360   
 L  e2361   
 G  e2362   
 E  e2363   
 L  e2364   
 L  e2365   
 G  e2366   
 L  e2367   
 L  e2368   
 G  e2369   
 E  e2370   
 E  e2371   
 E  e2372   
 L  e2373   
 L  e2374   
 G  e2375   
 L  e2376   
 L  e2377   
 G  e2378   
 E  e2379   
 L  e2380   
 L  e2381   
 G  e2382   
 L  e2383   
 L  e2384   
 G  e2385   
 E  e2386   
 E  e2387   
 E  e2388   
 L  e2389   
 L  e2390   
 G  e2391   
 L  e2392   
 L  e2393   
 G  e2394   
 E  e2395   
 L  e2396   
 L  e2397   
 G  e2398   
 L  e2399   
 L  e2400   
 G  e2401   
 E  e2402   
 E  e2403   
 E  e2404   
 L  e2405   
 L  e2406   
 G  e2407   
 L  e2408   
 L  e2409   
 G  e2410   
 E  e2411   
 L  e2412   
 L  e2413   
 G  e2414   
 L  e2415   
 L  e2416   
 G  e2417   
 E  e2418   
 E  e2419   
 E  e2420   
 L  e2421   
 L  e2422   
 G  e2423   
 L  e2424   
 L  e2425   
 G  e2426   
 E  e2427   
 L  e2428   
 L  e2429   
 G  e2430   
 L  e2431   
 L  e2432   
 G  e2433   
 E  e2434   
 E  e2435   
 E  e2436   
 L  e2437   
 L  e2438   
 G  e2439   
 L  e2440   
 L  e2441   
 G  e2442   
 E  e2443   
 L  e2444   
 L  e2445   
 G  e2446   
 L  e2447   
 L  e2448   
 G  e2449   
 E  e2450   
 E  e2451   
 E  e2452   
 L  e2453   
 L  e2454   
 G  e2455   
 L  e2456   
 L  e2457   
 G  e2458   
 E  e2459   
 L  e2460   
 L  e2461   
 G  e2462   
 L  e2463   
 L  e2464   
 G  e2465   
 E  e2466   
 E  e2467   
 E  e2468   
 L  e2469   
 L  e2470   
 G  e2471   
 L  e2472   
 L  e2473   
 G  e2474   
 E  e2475   
 L  e2476   
 L  e2477   
 G  e2478   
 L  e2479   
 L  e2480   
 G  e2481   
 E  e2482   
 E  e2483   
 E  e2484   
 L  e2485   
 L  e2486   
 G  e2487   
 L  e2488   
 L  e2489   
 G  e2490   
 E  e2491   
 L  e2492   
 L  e2493   
 G  e2494   
 L  e2495   
 L  e2496   
 G  e2497   
 E  e2498   
 E  e2499   
 E  e2500   
 L  e2501   
 L  e2502   
 G  e2503   
 L  e2504   
 L  e2505   
 G  e2506   
 E  e2507   
 L  e2508   
 L  e2509   
 G  e2510   
 L  e2511   
 L  e2512   
 G  e2513   
 E  e2514   
 E  e2515   
 E  e2516   
 L  e2517   
 L  e2518   
 G  e2519   
 L  e2520   
 L  e2521   
 G  e2522   
 E  e2523   
 L  e2524   
 L  e2525   
 G  e2526   
 L  e2527   
 L  e2528   
 G  e2529   
 E  e2530   
 L  e2531   
 L  e2532   
 G  e2533   
 L  e2534   
 L  e2535   
 G  e2536   
 L  e2537   
 L  e2538   
 G  e2539   
 E  e2540   
 E  e2541   
 E  e2542   
 L  e2543   
 L  e2544   
 G  e2545   
 L  e2546   
 L  e2547   
 G  e2548   
 E  e2549   
 L  e2550   
 L  e2551   
 G  e2552   
 L  e2553   
 L  e2554   
 G  e2555   
 E  e2556   
 L  e2557   
 L  e2558   
 G  e2559   
 L  e2560   
 L  e2561   
 G  e2562   
 L  e2563   
 L  e2564   
 G  e2565   
 E  e2566   
 E  e2567   
 E  e2568   
 L  e2569   
 L  e2570   
 G  e2571   
 L  e2572   
 L  e2573   
 G  e2574   
 E  e2575   
 L  e2576   
 L  e2577   
 G  e2578   
 L  e2579   
 L  e2580   
 G  e2581   
 E  e2582   
 L  e2583   
 L  e2584   
 G  e2585   
 L  e2586   
 L  e2587   
 G  e2588   
 L  e2589   
 L  e2590   
 G  e2591   
 E  e2592   
 E  e2593   
 E  e2594   
 L  e2595   
 L  e2596   
 G  e2597   
 L  e2598   
 L  e2599   
 G  e2600   
 E  e2601   
 L  e2602   
 L  e2603   
 G  e2604   
 L  e2605   
 L  e2606   
 G  e2607   
 E  e2608   
 L  e2609   
 L  e2610   
 G  e2611   
 L  e2612   
 L  e2613   
 G  e2614   
 L  e2615   
 L  e2616   
 G  e2617   
 E  e2618   
 E  e2619   
 E  e2620   
 L  e2621   
 L  e2622   
 G  e2623   
 L  e2624   
 L  e2625   
 G  e2626   
 E  e2627   
 L  e2628   
 L  e2629   
 G  e2630   
 L  e2631   
 L  e2632   
 G  e2633   
 E  e2634   
 L  e2635   
 L  e2636   
 G  e2637   
 L  e2638   
 L  e2639   
 G  e2640   
 L  e2641   
 L  e2642   
 G  e2643   
 E  e2644   
 E  e2645   
 E  e2646   
 L  e2647   
 L  e2648   
 G  e2649   
 L  e2650   
 L  e2651   
 G  e2652   
 E  e2653   
 L  e2654   
 L  e2655   
 G  e2656   
 L  e2657   
 L  e2658   
 G  e2659   
 E  e2660   
 L  e2661   
 L  e2662   
 G  e2663   
 L  e2664   
 L  e2665   
 G  e2666   
 L  e2667   
 L  e2668   
 G  e2669   
 E  e2670   
 E  e2671   
 E  e2672   
 L  e2673   
 L  e2674   
 G  e2675   
 L  e2676   
 L  e2677   
 G  e2678   
 E  e2679   
 L  e2680   
 L  e2681   
 G  e2682   
 L  e2683   
 L  e2684   
 G  e2685   
 E  e2686   
 L  e2687   
 L  e2688   
 G  e2689   
 L  e2690   
 L  e2691   
 G  e2692   
 L  e2693   
 L  e2694   
 G  e2695   
 E  e2696   
 E  e2697   
 E  e2698   
 L  e2699   
 L  e2700   
 G  e2701   
 L  e2702   
 L  e2703   
 G  e2704   
 E  e2705   
 L  e2706   
 L  e2707   
 G  e2708   
 L  e2709   
 L  e2710   
 G  e2711   
 E  e2712   
 L  e2713   
 L  e2714   
 G  e2715   
 L  e2716   
 L  e2717   
 G  e2718   
 L  e2719   
 L  e2720   
 G  e2721   
 E  e2722   
 E  e2723   
 E  e2724   
 L  e2725   
 L  e2726   
 G  e2727   
 L  e2728   
 L  e2729   
 G  e2730   
 E  e2731   
 L  e2732   
 L  e2733   
 G  e2734   
 L  e2735   
 L  e2736   
 G  e2737   
 E  e2738   
 L  e2739   
 L  e2740   
 G  e2741   
 L  e2742   
 L  e2743   
 G  e2744   
 L  e2745   
 L  e2746   
 G  e2747   
 E  e2748   
 E  e2749   
 E  e2750   
 L  e2751   
 L  e2752   
 G  e2753   
 L  e2754   
 L  e2755   
 G  e2756   
 E  e2757   
 L  e2758   
 L  e2759   
 G  e2760   
 L  e2761   
 L  e2762   
 G  e2763   
 E  e2764   
 L  e2765   
 L  e2766   
 G  e2767   
 L  e2768   
 L  e2769   
 G  e2770   
 L  e2771   
 L  e2772   
 G  e2773   
 E  e2774   
 E  e2775   
 E  e2776   
 L  e2777   
 L  e2778   
 G  e2779   
 L  e2780   
 L  e2781   
 G  e2782   
 E  e2783   
 L  e2784   
 L  e2785   
 G  e2786   
 L  e2787   
 L  e2788   
 G  e2789   
 E  e2790   
 L  e2791   
 L  e2792   
 G  e2793   
 L  e2794   
 L  e2795   
 G  e2796   
 L  e2797   
 L  e2798   
 G  e2799   
 E  e2800   
 E  e2801   
 E  e2802   
 L  e2803   
 L  e2804   
 G  e2805   
 L  e2806   
 L  e2807   
 G  e2808   
 E  e2809   
 L  e2810   
 L  e2811   
 G  e2812   
 L  e2813   
 L  e2814   
 G  e2815   
 E  e2816   
 L  e2817   
 L  e2818   
 G  e2819   
 L  e2820   
 L  e2821   
 G  e2822   
 L  e2823   
 L  e2824   
 G  e2825   
 E  e2826   
 E  e2827   
 E  e2828   
 L  e2829   
 L  e2830   
 G  e2831   
 L  e2832   
 L  e2833   
 G  e2834   
 L  e2835   
 L  e2836   
 G  e2837   
 E  e2838   
 L  e2839   
 L  e2840   
 G  e2841   
 L  e2842   
 L  e2843   
 G  e2844   
 L  e2845   
 L  e2846   
 G  e2847   
 E  e2848   
 L  e2849   
 L  e2850   
 G  e2851   
 L  e2852   
 L  e2853   
 G  e2854   
 L  e2855   
 L  e2856   
 G  e2857   
 E  e2858   
 L  e2859   
 L  e2860   
 G  e2861   
 L  e2862   
 L  e2863   
 G  e2864   
 L  e2865   
 L  e2866   
 G  e2867   
 E  e2868   
 L  e2869   
 L  e2870   
 G  e2871   
 L  e2872   
 L  e2873   
 G  e2874   
 L  e2875   
 L  e2876   
 G  e2877   
 E  e2878   
 L  e2879   
 L  e2880   
 G  e2881   
 L  e2882   
 L  e2883   
 G  e2884   
 L  e2885   
 L  e2886   
 G  e2887   
 E  e2888   
 L  e2889   
 L  e2890   
 G  e2891   
 L  e2892   
 L  e2893   
 G  e2894   
 L  e2895   
 L  e2896   
 G  e2897   
 E  e2898   
 L  e2899   
 L  e2900   
 G  e2901   
 L  e2902   
 L  e2903   
 G  e2904   
 L  e2905   
 L  e2906   
 G  e2907   
 E  e2908   
 L  e2909   
 L  e2910   
 G  e2911   
 L  e2912   
 L  e2913   
 G  e2914   
 L  e2915   
 L  e2916   
 G  e2917   
 L  e2918   
 L  e2919   
 G  e2920   
 L  e2921   
 L  e2922   
 G  e2923   
 L  e2924   
 L  e2925   
 G  e2926   
 L  e2927   
 L  e2928   
 G  e2929   
 L  e2930   
 L  e2931   
 G  e2932   
 L  e2933   
 L  e2934   
 G  e2935   
 L  e2936   
 L  e2937   
 G  e2938   
 E  e2939   
 L  e2940   
 L  e2941   
 G  e2942   
 L  e2943   
 L  e2944   
 G  e2945   
 L  e2946   
 L  e2947   
 G  e2948   
 L  e2949   
 L  e2950   
 G  e2951   
 L  e2952   
 L  e2953   
 G  e2954   
 L  e2955   
 L  e2956   
 G  e2957   
 L  e2958   
 L  e2959   
 G  e2960   
 L  e2961   
 L  e2962   
 G  e2963   
 L  e2964   
 L  e2965   
 G  e2966   
 L  e2967   
 L  e2968   
 G  e2969   
 E  e2970   
 L  e2971   
 L  e2972   
 G  e2973   
 L  e2974   
 L  e2975   
 G  e2976   
 L  e2977   
 L  e2978   
 G  e2979   
 L  e2980   
 L  e2981   
 G  e2982   
 L  e2983   
 L  e2984   
 G  e2985   
 L  e2986   
 L  e2987   
 G  e2988   
 L  e2989   
 L  e2990   
 G  e2991   
 L  e2992   
 L  e2993   
 G  e2994   
 L  e2995   
 L  e2996   
 G  e2997   
 L  e2998   
 L  e2999   
 G  e3000   
 E  e3001   
 E  e3002   
 E  e3003   
 L  e3004   
 L  e3005   
 G  e3006   
 L  e3007   
 L  e3008   
 G  e3009   
 L  e3010   
 L  e3011   
 G  e3012   
 E  e3013   
 L  e3014   
 L  e3015   
 G  e3016   
 L  e3017   
 L  e3018   
 G  e3019   
 L  e3020   
 L  e3021   
 G  e3022   
 E  e3023   
 L  e3024   
 L  e3025   
 G  e3026   
 L  e3027   
 L  e3028   
 G  e3029   
 L  e3030   
 L  e3031   
 G  e3032   
 E  e3033   
 L  e3034   
 L  e3035   
 G  e3036   
 L  e3037   
 L  e3038   
 G  e3039   
 L  e3040   
 L  e3041   
 G  e3042   
 E  e3043   
 L  e3044   
 L  e3045   
 G  e3046   
 L  e3047   
 L  e3048   
 G  e3049   
 L  e3050   
 L  e3051   
 G  e3052   
 E  e3053   
 L  e3054   
 L  e3055   
 G  e3056   
 L  e3057   
 L  e3058   
 G  e3059   
 L  e3060   
 L  e3061   
 G  e3062   
 E  e3063   
 L  e3064   
 L  e3065   
 G  e3066   
 L  e3067   
 L  e3068   
 G  e3069   
 L  e3070   
 L  e3071   
 G  e3072   
 E  e3073   
 L  e3074   
 L  e3075   
 G  e3076   
 L  e3077   
 L  e3078   
 G  e3079   
 L  e3080   
 L  e3081   
 G  e3082   
 E  e3083   
 L  e3084   
 L  e3085   
 G  e3086   
 L  e3087   
 L  e3088   
 G  e3089   
 L  e3090   
 L  e3091   
 G  e3092   
 L  e3093   
 L  e3094   
 G  e3095   
 L  e3096   
 L  e3097   
 G  e3098   
 L  e3099   
 L  e3100   
 G  e3101   
 L  e3102   
 L  e3103   
 G  e3104   
 L  e3105   
 L  e3106   
 G  e3107   
 L  e3108   
 L  e3109   
 G  e3110   
 L  e3111   
 L  e3112   
 G  e3113   
 E  e3114   
 L  e3115   
 L  e3116   
 G  e3117   
 L  e3118   
 L  e3119   
 G  e3120   
 L  e3121   
 L  e3122   
 G  e3123   
 L  e3124   
 L  e3125   
 G  e3126   
 L  e3127   
 L  e3128   
 G  e3129   
 L  e3130   
 L  e3131   
 G  e3132   
 L  e3133   
 L  e3134   
 G  e3135   
 L  e3136   
 L  e3137   
 G  e3138   
 L  e3139   
 L  e3140   
 G  e3141   
 L  e3142   
 L  e3143   
 G  e3144   
 E  e3145   
 L  e3146   
 L  e3147   
 G  e3148   
 L  e3149   
 L  e3150   
 G  e3151   
 L  e3152   
 L  e3153   
 G  e3154   
 L  e3155   
 L  e3156   
 G  e3157   
 L  e3158   
 L  e3159   
 G  e3160   
 L  e3161   
 L  e3162   
 G  e3163   
 L  e3164   
 L  e3165   
 G  e3166   
 L  e3167   
 L  e3168   
 G  e3169   
 L  e3170   
 L  e3171   
 G  e3172   
 L  e3173   
 L  e3174   
 G  e3175   
 E  e3176   
 L  e3177   
 G  e3178   
 L  e3179   
 G  e3180   
 L  e3181   
 G  e3182   
 L  e3183   
 G  e3184   
 L  e3185   
 G  e3186   
 L  e3187   
 G  e3188   
 L  e3189   
 G  e3190   
 L  e3191   
 G  e3192   
 L  e3193   
 G  e3194   
 L  e3195   
 G  e3196   
 L  e3197   
 G  e3198   
 L  e3199   
 G  e3200   
 L  e3201   
 G  e3202   
 L  e3203   
 G  e3204   
 L  e3205   
 G  e3206   
 L  e3207   
 G  e3208   
 L  e3209   
 G  e3210   
 L  e3211   
 G  e3212   
 L  e3213   
 G  e3214   
 L  e3215   
 G  e3216   
 L  e3217   
 G  e3218   
 L  e3219   
 G  e3220   
 L  e3221   
 G  e3222   
 L  e3223   
 G  e3224   
 L  e3225   
 G  e3226   
 L  e3227   
 G  e3228   
 L  e3229   
 G  e3230   
 L  e3231   
 G  e3232   
 L  e3233   
 G  e3234   
 L  e3235   
 G  e3236   
 L  e3237   
 G  e3238   
 L  e3239   
 G  e3240   
 L  e3241   
 G  e3242   
 L  e3243   
 G  e3244   
 L  e3245   
 G  e3246   
 L  e3247   
 G  e3248   
 L  e3249   
 G  e3250   
 L  e3251   
 G  e3252   
 L  e3253   
 G  e3254   
 L  e3255   
 G  e3256   
 L  e3257   
 G  e3258   
 L  e3259   
 G  e3260   
 L  e3261   
 G  e3262   
 L  e3263   
 G  e3264   
 L  e3265   
 G  e3266   
 L  e3267   
 G  e3268   
 L  e3269   
 G  e3270   
 L  e3271   
 G  e3272   
 L  e3273   
 G  e3274   
 L  e3275   
 G  e3276   
 L  e3277   
 G  e3278   
 L  e3279   
 G  e3280   
 L  e3281   
 G  e3282   
 L  e3283   
 G  e3284   
 L  e3285   
 G  e3286   
 L  e3287   
 G  e3288   
 L  e3289   
 G  e3290   
 L  e3291   
 G  e3292   
 L  e3293   
 G  e3294   
 L  e3295   
 G  e3296   
 L  e3297   
 G  e3298   
 L  e3299   
 G  e3300   
 L  e3301   
 G  e3302   
 L  e3303   
 G  e3304   
 L  e3305   
 G  e3306   
 L  e3307   
 G  e3308   
 L  e3309   
 G  e3310   
 L  e3311   
 G  e3312   
 L  e3313   
 L  e3314   
 G  e3315   
 L  e3316   
 L  e3317   
 G  e3318   
 L  e3319   
 L  e3320   
 G  e3321   
 L  e3322   
 L  e3323   
 G  e3324   
 L  e3325   
 L  e3326   
 G  e3327   
 L  e3328   
 G  e3329   
 L  e3330   
 L  e3331   
 G  e3332   
 L  e3333   
 L  e3334   
 G  e3335   
 L  e3336   
 L  e3337   
 G  e3338   
 L  e3339   
 L  e3340   
 G  e3341   
 L  e3342   
 L  e3343   
 G  e3344   
 L  e3345   
 G  e3346   
 L  e3347   
 L  e3348   
 G  e3349   
 L  e3350   
 L  e3351   
 G  e3352   
 L  e3353   
 L  e3354   
 G  e3355   
 L  e3356   
 L  e3357   
 G  e3358   
 L  e3359   
 L  e3360   
 G  e3361   
 L  e3362   
 G  e3363   
 L  e3364   
 L  e3365   
 G  e3366   
 L  e3367   
 L  e3368   
 G  e3369   
 L  e3370   
 L  e3371   
 G  e3372   
 L  e3373   
 L  e3374   
 G  e3375   
 L  e3376   
 L  e3377   
 G  e3378   
 L  e3379   
 G  e3380   
 L  e3381   
 L  e3382   
 G  e3383   
 L  e3384   
 L  e3385   
 G  e3386   
 L  e3387   
 L  e3388   
 G  e3389   
 L  e3390   
 L  e3391   
 G  e3392   
 L  e3393   
 L  e3394   
 G  e3395   
 L  e3396   
 G  e3397   
 L  e3398   
 L  e3399   
 G  e3400   
 L  e3401   
 L  e3402   
 G  e3403   
 L  e3404   
 L  e3405   
 G  e3406   
 L  e3407   
 L  e3408   
 G  e3409   
 L  e3410   
 L  e3411   
 G  e3412   
 L  e3413   
 G  e3414   
 L  e3415   
 L  e3416   
 G  e3417   
 L  e3418   
 L  e3419   
 G  e3420   
 L  e3421   
 L  e3422   
 G  e3423   
 L  e3424   
 L  e3425   
 G  e3426   
 L  e3427   
 L  e3428   
 G  e3429   
 L  e3430   
 G  e3431   
 L  e3432   
 L  e3433   
 G  e3434   
 L  e3435   
 L  e3436   
 G  e3437   
 L  e3438   
 L  e3439   
 G  e3440   
 L  e3441   
 L  e3442   
 G  e3443   
 L  e3444   
 L  e3445   
 G  e3446   
 L  e3447   
 G  e3448   
 L  e3449   
 L  e3450   
 G  e3451   
 L  e3452   
 L  e3453   
 G  e3454   
 L  e3455   
 L  e3456   
 G  e3457   
 L  e3458   
 L  e3459   
 G  e3460   
 L  e3461   
 L  e3462   
 G  e3463   
 L  e3464   
 G  e3465   
 L  e3466   
 L  e3467   
 G  e3468   
 L  e3469   
 L  e3470   
 G  e3471   
 L  e3472   
 L  e3473   
 G  e3474   
 L  e3475   
 L  e3476   
 G  e3477   
 L  e3478   
 L  e3479   
 G  e3480   
 L  e3481   
 G  e3482   
 L  e3483   
 G  e3484   
 L  e3485   
 G  e3486   
 L  e3487   
 G  e3488   
 L  e3489   
 G  e3490   
 L  e3491   
 L  e3492   
 G  e3493   
 L  e3494   
 L  e3495   
 G  e3496   
 L  e3497   
 L  e3498   
 G  e3499   
 L  e3500   
 L  e3501   
 G  e3502   
 L  e3503   
 L  e3504   
 G  e3505   
 L  e3506   
 G  e3507   
 L  e3508   
 L  e3509   
 G  e3510   
 L  e3511   
 L  e3512   
 G  e3513   
 L  e3514   
 L  e3515   
 G  e3516   
 L  e3517   
 L  e3518   
 G  e3519   
 L  e3520   
 L  e3521   
 G  e3522   
 L  e3523   
 G  e3524   
 L  e3525   
 L  e3526   
 G  e3527   
 L  e3528   
 L  e3529   
 G  e3530   
 L  e3531   
 L  e3532   
 G  e3533   
 L  e3534   
 L  e3535   
 G  e3536   
 L  e3537   
 L  e3538   
 G  e3539   
 L  e3540   
 G  e3541   
 L  e3542   
 L  e3543   
 G  e3544   
 L  e3545   
 L  e3546   
 G  e3547   
 L  e3548   
 L  e3549   
 G  e3550   
 L  e3551   
 L  e3552   
 G  e3553   
 L  e3554   
 L  e3555   
 G  e3556   
 L  e3557   
 G  e3558   
 L  e3559   
 L  e3560   
 G  e3561   
 L  e3562   
 L  e3563   
 G  e3564   
 L  e3565   
 L  e3566   
 G  e3567   
 L  e3568   
 L  e3569   
 G  e3570   
 L  e3571   
 L  e3572   
 G  e3573   
 L  e3574   
 G  e3575   
 L  e3576   
 L  e3577   
 G  e3578   
 L  e3579   
 L  e3580   
 G  e3581   
 L  e3582   
 L  e3583   
 G  e3584   
 L  e3585   
 L  e3586   
 G  e3587   
 L  e3588   
 L  e3589   
 G  e3590   
 L  e3591   
 G  e3592   
 L  e3593   
 L  e3594   
 G  e3595   
 L  e3596   
 L  e3597   
 G  e3598   
 L  e3599   
 L  e3600   
 G  e3601   
 L  e3602   
 L  e3603   
 G  e3604   
 L  e3605   
 L  e3606   
 G  e3607   
 L  e3608   
 G  e3609   
 L  e3610   
 L  e3611   
 G  e3612   
 L  e3613   
 L  e3614   
 G  e3615   
 L  e3616   
 L  e3617   
 G  e3618   
 L  e3619   
 L  e3620   
 G  e3621   
 L  e3622   
 L  e3623   
 G  e3624   
 L  e3625   
 G  e3626   
 L  e3627   
 L  e3628   
 G  e3629   
 L  e3630   
 L  e3631   
 G  e3632   
 L  e3633   
 L  e3634   
 G  e3635   
 L  e3636   
 L  e3637   
 G  e3638   
 L  e3639   
 L  e3640   
 G  e3641   
 L  e3642   
 G  e3643   
 L  e3644   
 L  e3645   
 G  e3646   
 L  e3647   
 L  e3648   
 G  e3649   
 L  e3650   
 L  e3651   
 G  e3652   
 L  e3653   
 L  e3654   
 G  e3655   
 L  e3656   
 L  e3657   
 G  e3658   
 L  e3659   
 G  e3660   
 L  e3661   
 G  e3662   
 L  e3663   
 G  e3664   
 L  e3665   
 G  e3666   
 L  e3667   
 G  e3668   
 L  e3669   
 L  e3670   
 G  e3671   
 L  e3672   
 L  e3673   
 G  e3674   
 L  e3675   
 L  e3676   
 G  e3677   
 L  e3678   
 L  e3679   
 G  e3680   
 L  e3681   
 L  e3682   
 G  e3683   
 L  e3684   
 G  e3685   
 L  e3686   
 L  e3687   
 G  e3688   
 L  e3689   
 L  e3690   
 G  e3691   
 L  e3692   
 L  e3693   
 G  e3694   
 L  e3695   
 L  e3696   
 G  e3697   
 L  e3698   
 L  e3699   
 G  e3700   
 L  e3701   
 G  e3702   
 L  e3703   
 L  e3704   
 G  e3705   
 L  e3706   
 L  e3707   
 G  e3708   
 L  e3709   
 L  e3710   
 G  e3711   
 L  e3712   
 L  e3713   
 G  e3714   
 L  e3715   
 L  e3716   
 G  e3717   
 L  e3718   
 G  e3719   
 L  e3720   
 L  e3721   
 G  e3722   
 L  e3723   
 L  e3724   
 G  e3725   
 L  e3726   
 L  e3727   
 G  e3728   
 L  e3729   
 L  e3730   
 G  e3731   
 L  e3732   
 L  e3733   
 G  e3734   
 L  e3735   
 G  e3736   
 L  e3737   
 L  e3738   
 G  e3739   
 L  e3740   
 L  e3741   
 G  e3742   
 L  e3743   
 L  e3744   
 G  e3745   
 L  e3746   
 L  e3747   
 G  e3748   
 L  e3749   
 L  e3750   
 G  e3751   
 L  e3752   
 G  e3753   
 L  e3754   
 L  e3755   
 G  e3756   
 L  e3757   
 L  e3758   
 G  e3759   
 L  e3760   
 L  e3761   
 G  e3762   
 L  e3763   
 L  e3764   
 G  e3765   
 L  e3766   
 L  e3767   
 G  e3768   
 L  e3769   
 G  e3770   
 L  e3771   
 L  e3772   
 G  e3773   
 L  e3774   
 L  e3775   
 G  e3776   
 L  e3777   
 L  e3778   
 G  e3779   
 L  e3780   
 L  e3781   
 G  e3782   
 L  e3783   
 L  e3784   
 G  e3785   
 L  e3786   
 G  e3787   
 L  e3788   
 L  e3789   
 G  e3790   
 L  e3791   
 L  e3792   
 G  e3793   
 L  e3794   
 L  e3795   
 G  e3796   
 L  e3797   
 L  e3798   
 G  e3799   
 L  e3800   
 L  e3801   
 G  e3802   
 L  e3803   
 G  e3804   
 L  e3805   
 L  e3806   
 G  e3807   
 L  e3808   
 L  e3809   
 G  e3810   
 L  e3811   
 L  e3812   
 G  e3813   
 L  e3814   
 L  e3815   
 G  e3816   
 L  e3817   
 L  e3818   
 G  e3819   
 L  e3820   
 G  e3821   
 L  e3822   
 L  e3823   
 G  e3824   
 L  e3825   
 L  e3826   
 G  e3827   
 L  e3828   
 L  e3829   
 G  e3830   
 L  e3831   
 L  e3832   
 G  e3833   
 L  e3834   
 L  e3835   
 G  e3836   
 L  e3837   
 G  e3838   
 L  e3839   
 G  e3840   
 L  e3841   
 G  e3842   
 L  e3843   
 G  e3844   
 L  e3845   
 G  e3846   
 L  e3847   
 L  e3848   
 G  e3849   
 L  e3850   
 L  e3851   
 G  e3852   
 L  e3853   
 L  e3854   
 G  e3855   
 L  e3856   
 L  e3857   
 G  e3858   
 L  e3859   
 L  e3860   
 G  e3861   
 L  e3862   
 G  e3863   
 L  e3864   
 L  e3865   
 G  e3866   
 L  e3867   
 L  e3868   
 G  e3869   
 L  e3870   
 L  e3871   
 G  e3872   
 L  e3873   
 L  e3874   
 G  e3875   
 L  e3876   
 L  e3877   
 G  e3878   
 L  e3879   
 G  e3880   
 L  e3881   
 L  e3882   
 G  e3883   
 L  e3884   
 L  e3885   
 G  e3886   
 L  e3887   
 L  e3888   
 G  e3889   
 L  e3890   
 L  e3891   
 G  e3892   
 L  e3893   
 L  e3894   
 G  e3895   
 L  e3896   
 G  e3897   
 L  e3898   
 L  e3899   
 G  e3900   
 L  e3901   
 L  e3902   
 G  e3903   
 L  e3904   
 L  e3905   
 G  e3906   
 L  e3907   
 L  e3908   
 G  e3909   
 L  e3910   
 L  e3911   
 G  e3912   
 L  e3913   
 G  e3914   
 L  e3915   
 L  e3916   
 G  e3917   
 L  e3918   
 L  e3919   
 G  e3920   
 L  e3921   
 L  e3922   
 G  e3923   
 L  e3924   
 L  e3925   
 G  e3926   
 L  e3927   
 L  e3928   
 G  e3929   
 L  e3930   
 G  e3931   
 L  e3932   
 L  e3933   
 G  e3934   
 L  e3935   
 L  e3936   
 G  e3937   
 L  e3938   
 L  e3939   
 G  e3940   
 L  e3941   
 L  e3942   
 G  e3943   
 L  e3944   
 L  e3945   
 G  e3946   
 L  e3947   
 G  e3948   
 L  e3949   
 L  e3950   
 G  e3951   
 L  e3952   
 L  e3953   
 G  e3954   
 L  e3955   
 L  e3956   
 G  e3957   
 L  e3958   
 L  e3959   
 G  e3960   
 L  e3961   
 L  e3962   
 G  e3963   
 L  e3964   
 G  e3965   
 L  e3966   
 L  e3967   
 G  e3968   
 L  e3969   
 L  e3970   
 G  e3971   
 L  e3972   
 L  e3973   
 G  e3974   
 L  e3975   
 L  e3976   
 G  e3977   
 L  e3978   
 L  e3979   
 G  e3980   
 L  e3981   
 G  e3982   
 L  e3983   
 L  e3984   
 G  e3985   
 L  e3986   
 L  e3987   
 G  e3988   
 L  e3989   
 L  e3990   
 G  e3991   
 L  e3992   
 L  e3993   
 G  e3994   
 L  e3995   
 L  e3996   
 G  e3997   
 L  e3998   
 G  e3999   
 L  e4000   
 L  e4001   
 G  e4002   
 L  e4003   
 L  e4004   
 G  e4005   
 L  e4006   
 L  e4007   
 G  e4008   
 L  e4009   
 L  e4010   
 G  e4011   
 L  e4012   
 L  e4013   
 G  e4014   
 L  e4015   
 G  e4016   
 L  e4017   
 G  e4018   
 L  e4019   
 G  e4020   
 L  e4021   
 G  e4022   
 L  e4023   
 G  e4024   
 L  e4025   
 L  e4026   
 G  e4027   
 L  e4028   
 L  e4029   
 G  e4030   
 L  e4031   
 L  e4032   
 G  e4033   
 L  e4034   
 L  e4035   
 G  e4036   
 L  e4037   
 L  e4038   
 G  e4039   
 L  e4040   
 G  e4041   
 L  e4042   
 L  e4043   
 G  e4044   
 L  e4045   
 L  e4046   
 G  e4047   
 L  e4048   
 L  e4049   
 G  e4050   
 L  e4051   
 L  e4052   
 G  e4053   
 L  e4054   
 L  e4055   
 G  e4056   
 L  e4057   
 G  e4058   
 L  e4059   
 L  e4060   
 G  e4061   
 L  e4062   
 L  e4063   
 G  e4064   
 L  e4065   
 L  e4066   
 G  e4067   
 L  e4068   
 L  e4069   
 G  e4070   
 L  e4071   
 L  e4072   
 G  e4073   
 L  e4074   
 G  e4075   
 L  e4076   
 L  e4077   
 G  e4078   
 L  e4079   
 L  e4080   
 G  e4081   
 L  e4082   
 L  e4083   
 G  e4084   
 L  e4085   
 L  e4086   
 G  e4087   
 L  e4088   
 L  e4089   
 G  e4090   
 L  e4091   
 G  e4092   
 L  e4093   
 L  e4094   
 G  e4095   
 L  e4096   
 L  e4097   
 G  e4098   
 L  e4099   
 L  e4100   
 G  e4101   
 L  e4102   
 L  e4103   
 G  e4104   
 L  e4105   
 L  e4106   
 G  e4107   
 L  e4108   
 G  e4109   
 L  e4110   
 L  e4111   
 G  e4112   
 L  e4113   
 L  e4114   
 G  e4115   
 L  e4116   
 L  e4117   
 G  e4118   
 L  e4119   
 L  e4120   
 G  e4121   
 L  e4122   
 L  e4123   
 G  e4124   
 L  e4125   
 G  e4126   
 L  e4127   
 L  e4128   
 G  e4129   
 L  e4130   
 L  e4131   
 G  e4132   
 L  e4133   
 L  e4134   
 G  e4135   
 L  e4136   
 L  e4137   
 G  e4138   
 L  e4139   
 L  e4140   
 G  e4141   
 L  e4142   
 G  e4143   
 L  e4144   
 L  e4145   
 G  e4146   
 L  e4147   
 L  e4148   
 G  e4149   
 L  e4150   
 L  e4151   
 G  e4152   
 L  e4153   
 L  e4154   
 G  e4155   
 L  e4156   
 L  e4157   
 G  e4158   
 L  e4159   
 G  e4160   
 L  e4161   
 L  e4162   
 G  e4163   
 L  e4164   
 L  e4165   
 G  e4166   
 L  e4167   
 L  e4168   
 G  e4169   
 L  e4170   
 L  e4171   
 G  e4172   
 L  e4173   
 L  e4174   
 G  e4175   
 L  e4176   
 G  e4177   
 L  e4178   
 L  e4179   
 G  e4180   
 L  e4181   
 L  e4182   
 G  e4183   
 L  e4184   
 L  e4185   
 G  e4186   
 L  e4187   
 L  e4188   
 G  e4189   
 L  e4190   
 L  e4191   
 G  e4192   
 L  e4193   
 G  e4194   
 L  e4195   
 G  e4196   
 L  e4197   
 G  e4198   
 L  e4199   
 G  e4200   
 L  e4201   
 G  e4202   
 L  e4203   
 L  e4204   
 G  e4205   
 L  e4206   
 L  e4207   
 G  e4208   
 L  e4209   
 L  e4210   
 G  e4211   
 L  e4212   
 L  e4213   
 G  e4214   
 L  e4215   
 L  e4216   
 G  e4217   
 L  e4218   
 G  e4219   
 L  e4220   
 L  e4221   
 G  e4222   
 L  e4223   
 L  e4224   
 G  e4225   
 L  e4226   
 L  e4227   
 G  e4228   
 L  e4229   
 L  e4230   
 G  e4231   
 L  e4232   
 L  e4233   
 G  e4234   
 L  e4235   
 G  e4236   
 L  e4237   
 L  e4238   
 G  e4239   
 L  e4240   
 L  e4241   
 G  e4242   
 L  e4243   
 L  e4244   
 G  e4245   
 L  e4246   
 L  e4247   
 G  e4248   
 L  e4249   
 L  e4250   
 G  e4251   
 L  e4252   
 G  e4253   
 L  e4254   
 L  e4255   
 G  e4256   
 L  e4257   
 L  e4258   
 G  e4259   
 L  e4260   
 L  e4261   
 G  e4262   
 L  e4263   
 L  e4264   
 G  e4265   
 L  e4266   
 L  e4267   
 G  e4268   
 L  e4269   
 G  e4270   
 L  e4271   
 L  e4272   
 G  e4273   
 L  e4274   
 L  e4275   
 G  e4276   
 L  e4277   
 L  e4278   
 G  e4279   
 L  e4280   
 L  e4281   
 G  e4282   
 L  e4283   
 L  e4284   
 G  e4285   
 L  e4286   
 G  e4287   
 L  e4288   
 L  e4289   
 G  e4290   
 L  e4291   
 L  e4292   
 G  e4293   
 L  e4294   
 L  e4295   
 G  e4296   
 L  e4297   
 L  e4298   
 G  e4299   
 L  e4300   
 L  e4301   
 G  e4302   
 L  e4303   
 G  e4304   
 L  e4305   
 L  e4306   
 G  e4307   
 L  e4308   
 L  e4309   
 G  e4310   
 L  e4311   
 L  e4312   
 G  e4313   
 L  e4314   
 L  e4315   
 G  e4316   
 L  e4317   
 L  e4318   
 G  e4319   
 L  e4320   
 G  e4321   
 L  e4322   
 L  e4323   
 G  e4324   
 L  e4325   
 L  e4326   
 G  e4327   
 L  e4328   
 L  e4329   
 G  e4330   
 L  e4331   
 L  e4332   
 G  e4333   
 L  e4334   
 L  e4335   
 G  e4336   
 L  e4337   
 G  e4338   
 L  e4339   
 L  e4340   
 G  e4341   
 L  e4342   
 L  e4343   
 G  e4344   
 L  e4345   
 L  e4346   
 G  e4347   
 L  e4348   
 L  e4349   
 G  e4350   
 L  e4351   
 L  e4352   
 G  e4353   
 L  e4354   
 G  e4355   
 L  e4356   
 L  e4357   
 G  e4358   
 L  e4359   
 L  e4360   
 G  e4361   
 L  e4362   
 L  e4363   
 G  e4364   
 L  e4365   
 L  e4366   
 G  e4367   
 L  e4368   
 L  e4369   
 G  e4370   
 L  e4371   
 G  e4372   
 L  e4373   
 L  e4374   
 G  e4375   
 L  e4376   
 L  e4377   
 G  e4378   
 L  e4379   
 L  e4380   
 G  e4381   
 L  e4382   
 L  e4383   
 G  e4384   
 L  e4385   
 L  e4386   
 G  e4387   
 L  e4388   
 L  e4389   
 G  e4390   
 L  e4391   
 L  e4392   
 G  e4393   
 L  e4394   
 G  e4395   
 L  e4396   
 L  e4397   
 G  e4398   
 L  e4399   
 L  e4400   
 G  e4401   
 L  e4402   
 L  e4403   
 G  e4404   
 L  e4405   
 L  e4406   
 G  e4407   
 L  e4408   
 L  e4409   
 G  e4410   
 L  e4411   
 L  e4412   
 G  e4413   
 L  e4414   
 G  e4415   
 L  e4416   
 L  e4417   
 G  e4418   
 L  e4419   
 L  e4420   
 G  e4421   
 L  e4422   
 L  e4423   
 G  e4424   
 L  e4425   
 L  e4426   
 G  e4427   
 L  e4428   
 L  e4429   
 G  e4430   
 L  e4431   
 L  e4432   
 G  e4433   
 L  e4434   
 L  e4435   
 G  e4436   
 L  e4437   
 G  e4438   
 L  e4439   
 L  e4440   
 G  e4441   
 L  e4442   
 L  e4443   
 G  e4444   
 L  e4445   
 L  e4446   
 G  e4447   
 L  e4448   
 L  e4449   
 G  e4450   
 L  e4451   
 L  e4452   
 G  e4453   
 L  e4454   
 L  e4455   
 G  e4456   
 L  e4457   
 G  e4458   
 L  e4459   
 L  e4460   
 G  e4461   
 L  e4462   
 G  e4463   
 L  e4464   
 L  e4465   
 G  e4466   
 L  e4467   
 G  e4468   
 L  e4469   
 L  e4470   
 G  e4471   
 L  e4472   
 G  e4473   
 L  e4474   
 L  e4475   
 G  e4476   
 L  e4477   
 G  e4478   
 L  e4479   
 L  e4480   
 G  e4481   
 L  e4482   
 G  e4483   
 L  e4484   
 L  e4485   
 G  e4486   
 L  e4487   
 G  e4488   
 L  e4489   
 L  e4490   
 G  e4491   
 L  e4492   
 G  e4493   
 L  e4494   
 L  e4495   
 G  e4496   
 L  e4497   
 G  e4498   
 L  e4499   
 L  e4500   
 G  e4501   
 L  e4502   
 G  e4503   
 L  e4504   
 L  e4505   
 G  e4506   
 L  e4507   
 G  e4508   
 L  e4509   
 L  e4510   
 G  e4511   
 L  e4512   
 G  e4513   
 L  e4514   
 L  e4515   
 G  e4516   
 L  e4517   
 G  e4518   
 L  e4519   
 L  e4520   
 G  e4521   
 L  e4522   
 G  e4523   
 L  e4524   
 L  e4525   
 G  e4526   
 L  e4527   
 G  e4528   
 L  e4529   
 L  e4530   
 G  e4531   
 L  e4532   
 G  e4533   
 L  e4534   
 L  e4535   
 G  e4536   
 L  e4537   
 G  e4538   
 L  e4539   
 L  e4540   
 G  e4541   
 L  e4542   
 L  e4543   
 G  e4544   
 L  e4545   
 G  e4546   
 L  e4547   
 L  e4548   
 G  e4549   
 L  e4550   
 L  e4551   
 G  e4552   
 L  e4553   
 G  e4554   
 L  e4555   
 L  e4556   
 G  e4557   
 L  e4558   
 L  e4559   
 G  e4560   
 L  e4561   
 G  e4562   
 L  e4563   
 L  e4564   
 G  e4565   
 L  e4566   
 L  e4567   
 G  e4568   
 L  e4569   
 G  e4570   
 L  e4571   
 L  e4572   
 G  e4573   
 L  e4574   
 G  e4575   
 L  e4576   
 L  e4577   
 G  e4578   
 L  e4579   
 G  e4580   
 L  e4581   
 L  e4582   
 G  e4583   
 L  e4584   
 G  e4585   
 L  e4586   
 L  e4587   
 G  e4588   
 L  e4589   
 G  e4590   
 L  e4591   
 L  e4592   
 G  e4593   
 L  e4594   
 L  e4595   
 G  e4596   
 L  e4597   
 G  e4598   
 L  e4599   
 L  e4600   
 G  e4601   
 L  e4602   
 L  e4603   
 G  e4604   
 L  e4605   
 G  e4606   
 L  e4607   
 L  e4608   
 G  e4609   
 L  e4610   
 L  e4611   
 G  e4612   
 L  e4613   
 G  e4614   
 L  e4615   
 L  e4616   
 G  e4617   
 L  e4618   
 L  e4619   
 G  e4620   
 L  e4621   
 G  e4622   
 L  e4623   
 L  e4624   
 G  e4625   
 L  e4626   
 G  e4627   
 L  e4628   
 L  e4629   
 G  e4630   
 L  e4631   
 G  e4632   
 L  e4633   
 L  e4634   
 G  e4635   
 L  e4636   
 G  e4637   
 L  e4638   
 L  e4639   
 G  e4640   
 L  e4641   
 G  e4642   
 L  e4643   
 L  e4644   
 G  e4645   
 L  e4646   
 G  e4647   
 L  e4648   
 L  e4649   
 G  e4650   
 L  e4651   
 G  e4652   
 L  e4653   
 L  e4654   
 G  e4655   
 L  e4656   
 G  e4657   
 L  e4658   
 L  e4659   
 G  e4660   
 L  e4661   
 G  e4662   
 L  e4663   
 L  e4664   
 G  e4665   
 L  e4666   
 G  e4667   
 L  e4668   
 L  e4669   
 G  e4670   
 L  e4671   
 G  e4672   
 L  e4673   
 L  e4674   
 G  e4675   
 L  e4676   
 G  e4677   
 L  e4678   
 L  e4679   
 G  e4680   
 L  e4681   
 G  e4682   
 L  e4683   
 L  e4684   
 G  e4685   
 L  e4686   
 G  e4687   
 L  e4688   
 L  e4689   
 G  e4690   
 L  e4691   
 G  e4692   
 L  e4693   
 L  e4694   
 G  e4695   
 L  e4696   
 L  e4697   
 G  e4698   
 L  e4699   
 L  e4700   
 G  e4701   
 L  e4702   
 L  e4703   
 G  e4704   
 L  e4705   
 L  e4706   
 G  e4707   
 L  e4708   
 L  e4709   
 G  e4710   
 L  e4711   
 L  e4712   
 G  e4713   
 L  e4714   
 G  e4715   
 L  e4716   
 L  e4717   
 G  e4718   
 L  e4719   
 L  e4720   
 G  e4721   
 L  e4722   
 L  e4723   
 G  e4724   
 L  e4725   
 L  e4726   
 G  e4727   
 L  e4728   
 L  e4729   
 G  e4730   
 L  e4731   
 L  e4732   
 G  e4733   
 L  e4734   
 G  e4735   
 L  e4736   
 L  e4737   
 G  e4738   
 L  e4739   
 L  e4740   
 G  e4741   
 L  e4742   
 L  e4743   
 G  e4744   
 L  e4745   
 L  e4746   
 G  e4747   
 L  e4748   
 L  e4749   
 G  e4750   
 L  e4751   
 L  e4752   
 G  e4753   
 L  e4754   
 L  e4755   
 G  e4756   
 L  e4757   
 G  e4758   
 L  e4759   
 L  e4760   
 G  e4761   
 L  e4762   
 L  e4763   
 G  e4764   
 L  e4765   
 L  e4766   
 G  e4767   
 L  e4768   
 L  e4769   
 G  e4770   
 L  e4771   
 L  e4772   
 G  e4773   
 L  e4774   
 L  e4775   
 G  e4776   
 L  e4777   
 G  e4778   
 L  e4779   
 L  e4780   
 G  e4781   
 L  e4782   
 G  e4783   
 L  e4784   
 L  e4785   
 G  e4786   
 L  e4787   
 G  e4788   
 L  e4789   
 L  e4790   
 G  e4791   
 L  e4792   
 G  e4793   
 L  e4794   
 L  e4795   
 G  e4796   
 L  e4797   
 G  e4798   
 L  e4799   
 L  e4800   
 G  e4801   
 L  e4802   
 G  e4803   
 L  e4804   
 L  e4805   
 G  e4806   
 L  e4807   
 G  e4808   
 L  e4809   
 L  e4810   
 G  e4811   
 L  e4812   
 G  e4813   
 L  e4814   
 L  e4815   
 G  e4816   
 L  e4817   
 G  e4818   
 L  e4819   
 L  e4820   
 G  e4821   
 L  e4822   
 G  e4823   
 L  e4824   
 L  e4825   
 G  e4826   
 L  e4827   
 G  e4828   
 L  e4829   
 L  e4830   
 G  e4831   
 L  e4832   
 G  e4833   
 L  e4834   
 L  e4835   
 G  e4836   
 L  e4837   
 G  e4838   
 L  e4839   
 L  e4840   
 G  e4841   
 L  e4842   
 G  e4843   
 L  e4844   
 L  e4845   
 G  e4846   
 L  e4847   
 G  e4848   
 L  e4849   
 L  e4850   
 G  e4851   
 L  e4852   
 G  e4853   
 L  e4854   
 L  e4855   
 G  e4856   
 L  e4857   
 G  e4858   
 L  e4859   
 L  e4860   
 G  e4861   
 L  e4862   
 L  e4863   
 G  e4864   
 L  e4865   
 G  e4866   
 L  e4867   
 L  e4868   
 G  e4869   
 L  e4870   
 L  e4871   
 G  e4872   
 L  e4873   
 G  e4874   
 L  e4875   
 L  e4876   
 G  e4877   
 L  e4878   
 L  e4879   
 G  e4880   
 L  e4881   
 G  e4882   
 L  e4883   
 L  e4884   
 G  e4885   
 L  e4886   
 L  e4887   
 G  e4888   
 L  e4889   
 G  e4890   
 L  e4891   
 L  e4892   
 G  e4893   
 L  e4894   
 G  e4895   
 L  e4896   
 L  e4897   
 G  e4898   
 L  e4899   
 G  e4900   
 L  e4901   
 L  e4902   
 G  e4903   
 L  e4904   
 G  e4905   
 L  e4906   
 L  e4907   
 G  e4908   
 L  e4909   
 G  e4910   
 L  e4911   
 L  e4912   
 G  e4913   
 L  e4914   
 L  e4915   
 G  e4916   
 L  e4917   
 G  e4918   
 L  e4919   
 L  e4920   
 G  e4921   
 L  e4922   
 L  e4923   
 G  e4924   
 L  e4925   
 G  e4926   
 L  e4927   
 L  e4928   
 G  e4929   
 L  e4930   
 L  e4931   
 G  e4932   
 L  e4933   
 G  e4934   
 L  e4935   
 L  e4936   
 G  e4937   
 L  e4938   
 L  e4939   
 G  e4940   
 L  e4941   
 G  e4942   
 L  e4943   
 L  e4944   
 G  e4945   
 L  e4946   
 G  e4947   
 L  e4948   
 L  e4949   
 G  e4950   
 L  e4951   
 G  e4952   
 L  e4953   
 L  e4954   
 G  e4955   
 L  e4956   
 G  e4957   
 L  e4958   
 L  e4959   
 G  e4960   
 L  e4961   
 G  e4962   
 L  e4963   
 L  e4964   
 G  e4965   
 L  e4966   
 G  e4967   
 L  e4968   
 L  e4969   
 G  e4970   
 L  e4971   
 G  e4972   
 L  e4973   
 L  e4974   
 G  e4975   
 L  e4976   
 G  e4977   
 L  e4978   
 L  e4979   
 G  e4980   
 L  e4981   
 G  e4982   
 L  e4983   
 L  e4984   
 G  e4985   
 L  e4986   
 G  e4987   
 L  e4988   
 L  e4989   
 G  e4990   
 L  e4991   
 G  e4992   
 L  e4993   
 L  e4994   
 G  e4995   
 L  e4996   
 G  e4997   
 L  e4998   
 L  e4999   
 G  e5000   
 L  e5001   
 G  e5002   
 L  e5003   
 L  e5004   
 G  e5005   
 L  e5006   
 G  e5007   
 L  e5008   
 L  e5009   
 G  e5010   
 L  e5011   
 G  e5012   
 E  e5013   
 E  e5014   
 E  e5015   
 E  e5016   
 E  e5017   
 E  e5018   
 E  e5019   
 E  e5020   
 E  e5021   
 E  e5022   
 E  e5023   
 E  e5024   
 E  e5025   
 E  e5026   
 E  e5027   
 E  e5028   
 E  e5029   
 E  e5030   
 E  e5031   
 E  e5032   
 E  e5033   
 E  e5034   
 E  e5035   
 E  e5036   
 G  e5037   
 L  e5038   
 G  e5039   
 L  e5040   
 G  e5041   
 L  e5042   
 G  e5043   
 L  e5044   
 G  e5045   
 L  e5046   
 G  e5047   
 L  e5048   
 G  e5049   
 L  e5050   
 G  e5051   
 L  e5052   
 G  e5053   
 L  e5054   
 G  e5055   
 L  e5056   
 G  e5057   
 L  e5058   
 G  e5059   
 L  e5060   
 G  e5061   
 L  e5062   
 G  e5063   
 L  e5064   
 G  e5065   
 L  e5066   
 G  e5067   
 L  e5068   
 E  e5069   
 E  e5070   
 E  e5071   
 E  e5072   
 L  e5073   
 G  e5074   
 L  e5075   
 G  e5076   
 L  e5077   
 G  e5078   
 E  e5079   
 E  e5080   
 L  e5081   
 G  e5082   
 L  e5083   
 G  e5084   
 L  e5085   
 G  e5086   
 E  e5087   
 E  e5088   
 L  e5089   
 G  e5090   
 L  e5091   
 G  e5092   
 L  e5093   
 G  e5094   
 E  e5095   
 E  e5096   
 L  e5097   
 G  e5098   
 L  e5099   
 G  e5100   
 L  e5101   
 G  e5102   
 E  e5103   
 E  e5104   
 L  e5105   
 G  e5106   
 L  e5107   
 G  e5108   
 L  e5109   
 G  e5110   
 E  e5111   
 E  e5112   
 L  e5113   
 G  e5114   
 L  e5115   
 G  e5116   
 L  e5117   
 G  e5118   
 E  e5119   
 E  e5120   
 L  e5121   
 G  e5122   
 L  e5123   
 G  e5124   
 L  e5125   
 G  e5126   
 E  e5127   
 E  e5128   
 L  e5129   
 G  e5130   
 L  e5131   
 G  e5132   
 L  e5133   
 G  e5134   
 E  e5135   
 E  e5136   
 L  e5137   
 G  e5138   
 L  e5139   
 G  e5140   
 L  e5141   
 G  e5142   
 E  e5143   
 E  e5144   
 L  e5145   
 G  e5146   
 L  e5147   
 G  e5148   
 L  e5149   
 G  e5150   
 E  e5151   
COLUMNS
    MARK1     'MARKER'                 'INTORG'
    i1        e5151               -5
    i2        e301                -1
    i2        e5022                1
    i2        e5151               -5
    i3        e299                -1
    i3        e5019                1
    i3        e5151               -5
    i4        e297                -1
    i4        e5016                1
    i4        e5151               -5
    i5        e5151               -5
    i6        e5151               -5
    i7        e5151               -5
    i8        e5151               -5
    i9        e5151               -5
    i10       e5151               -5
    i11       e5151               -5
    i12       e304                 1
    i12       e5029                1
    i12       e5151               -5
    i13       e307                 1
    i13       e308                -1
    i13       e5035                1
    i13       e5151               -5
    i14       e305                 1
    i14       e306                -1
    i14       e5032                1
    i14       e5151               -5
    i15       e498                 1
    i15       e5151               -5
    i16       e422                 1
    i16       e5151               -5
    i17       e346                 1
    i17       e5151               -5
    i18       e1108                1
    i18       e1908                1
    i18       e5151               -5
    i19       e1146                1
    i19       e5151               -5
    i20       e1298                1
    i20       e5151               -5
    i21       e1222                1
    i21       e5151               -5
    i22       e5151               -5
    i23       e301                 1
    i23       e302                -1
    i23       e5023                1
    i23       e5151               -5
    i24       e300                 1
    i24       e5020                1
    i24       e5151               -5
    i25       e298                 1
    i25       e5017                1
    i25       e5151               -5
    i26       e5151               -5
    i27       e5151               -5
    i28       e5151               -5
    i29       e5151               -5
    i30       e302                 1
    i30       e5024                1
    i30       e5151               -5
    i31       e299                 1
    i31       e300                -1
    i31       e5021                1
    i31       e5151               -5
    i32       e297                 1
    i32       e298                -1
    i32       e5018                1
    i32       e5151               -5
    i33       e5151               -5
    i34       e5151               -5
    i35       e5151               -5
    i36       e822                 1
    i36       e1622                1
    i36       e5151               -5
    i37       e514                 1
    i37       e5151               -5
    i38       e438                 1
    i38       e5151               -5
    i39       e362                 1
    i39       e5151               -5
    i40       e1162                1
    i40       e5151               -5
    i41       e1314                1
    i41       e5151               -5
    i42       e1238                1
    i42       e5151               -5
    i43       e5151               -5
    i44       e5151               -5
    i45       e5151               -5
    i46       e5151               -5
    i47       e303                 1
    i47       e304                -1
    i47       e5030                1
    i47       e5151               -5
    i48       e308                 1
    i48       e5036                1
    i48       e5151               -5
    i49       e306                 1
    i49       e5033                1
    i49       e5151               -5
    i50       e5151               -5
    i51       e5151               -5
    i52       e5151               -5
    i53       e5151               -5
    i54       e303                -1
    i54       e5028                1
    i54       e5151               -5
    i55       e307                -1
    i55       e5034                1
    i55       e5151               -5
    i56       e305                -1
    i56       e5031                1
    i56       e5151               -5
    i57       e1                   1
    i57       e97                  1
    i57       e98                  1
    i57       e547               -18
    i57       e548                -2
    i57       e549                -2
    i57       e550               -18
    i57       e551                18
    i57       e611               -18
    i57       e612                -2
    i57       e613                -2
    i57       e614               -18
    i57       e615                18
    i57       e1347              -18
    i57       e1348               -2
    i57       e1349               -2
    i57       e1350              -18
    i57       e1351               18
    i57       e1411              -18
    i57       e1412               -2
    i57       e1413               -2
    i57       e1414              -18
    i57       e1415               18
    i57       e2563               -1
    i57       e2565               -1
    i57       e2589               -1
    i57       e2591               -1
    i57       e2909               -1
    i57       e2911               -1
    i57       e2921               -1
    i57       e2923               -1
    i57       e3534               -1
    i57       e3536               -1
    i57       e3712               -1
    i57       e3714               -1
    i57       e4963               -1
    i57       e4965               -1
    i57       e4983               -1
    i57       e4985               -1
    i57       e5087                1
    i57       e5089                1
    i57       e5090                1
    i57       e5119                1
    i57       e5121                1
    i57       e5122                1
    i58       e1                   1
    i58       e99                  1
    i58       e100                 1
    i58       e563               -18
    i58       e564                -2
    i58       e565                -2
    i58       e566               -18
    i58       e567                18
    i58       e627               -18
    i58       e628                -2
    i58       e629                -2
    i58       e630               -18
    i58       e631                18
    i58       e1363              -18
    i58       e1364               -2
    i58       e1365               -2
    i58       e1366              -18
    i58       e1367               18
    i58       e1427              -18
    i58       e1428               -2
    i58       e1429               -2
    i58       e1430              -18
    i58       e1431               18
    i58       e2537               -1
    i58       e2539               -1
    i58       e2912               -1
    i58       e2914               -1
    i58       e2924               -1
    i58       e2926               -1
    i58       e3356               -1
    i58       e3358               -1
    i58       e4968               -1
    i58       e4970               -1
    i58       e4988               -1
    i58       e4990               -1
    i58       e5095                1
    i58       e5097                1
    i58       e5098                1
    i58       e5127                1
    i58       e5129                1
    i58       e5130                1
    i59       e1                   1
    i59       e201                 1
    i59       e202                 1
    i59       e710               -18
    i59       e711                -2
    i59       e712                -2
    i59       e713               -18
    i59       e714                18
    i59       e1510              -18
    i59       e1511               -2
    i59       e1512               -2
    i59       e1513              -18
    i59       e1514               18
    i59       e2531               -1
    i59       e2533               -1
    i59       e2557               -1
    i59       e2559               -1
    i59       e2583               -1
    i59       e2585               -1
    i59       e2609               -1
    i59       e2611               -1
    i59       e2635               -1
    i59       e2637               -1
    i59       e2661               -1
    i59       e2663               -1
    i59       e2933               -1
    i59       e2935               -1
    i59       e3424               -1
    i59       e3426               -1
    i59       e3602               -1
    i59       e3604               -1
    i59       e3780               -1
    i59       e3782               -1
    i59       e3958               -1
    i59       e3960               -1
    i59       e4136               -1
    i59       e4138               -1
    i59       e4314               -1
    i59       e4316               -1
    i59       e5003               -1
    i59       e5005               -1
    i59       e5061               -1
    i59       e5062                1
    i59       e5071                1
    i59       e5073                1
    i59       e5074                1
    i60       e1                   1
    i60       e203                 1
    i60       e204                 1
    i60       e761               -18
    i60       e762                -2
    i60       e763                -2
    i60       e764               -18
    i60       e765                18
    i60       e1561              -18
    i60       e1562               -2
    i60       e1563               -2
    i60       e1564              -18
    i60       e1565               18
    i60       e2534               -1
    i60       e2536               -1
    i60       e2560               -1
    i60       e2562               -1
    i60       e2586               -1
    i60       e2588               -1
    i60       e2612               -1
    i60       e2614               -1
    i60       e2638               -1
    i60       e2640               -1
    i60       e2664               -1
    i60       e2666               -1
    i60       e2936               -1
    i60       e2938               -1
    i60       e3441               -1
    i60       e3443               -1
    i60       e3619               -1
    i60       e3621               -1
    i60       e3797               -1
    i60       e3799               -1
    i60       e3975               -1
    i60       e3977               -1
    i60       e4153               -1
    i60       e4155               -1
    i60       e4331               -1
    i60       e4333               -1
    i60       e5008               -1
    i60       e5010               -1
    i60       e5063               -1
    i60       e5064                1
    i60       e5079                1
    i60       e5081                1
    i60       e5082                1
    i61       e2                   1
    i61       e5091                1
    i61       e5092                1
    i61       e5123                1
    i61       e5124                1
    i62       e2                   1
    i62       e5099                1
    i62       e5100                1
    i62       e5131                1
    i62       e5132                1
    i63       e2                   1
    i63       e5075                1
    i63       e5076                1
    i64       e2                   1
    i64       e5083                1
    i64       e5084                1
    i65       e3                   1
    i65       e183                 1
    i65       e184                 1
    i65       e336               -18
    i65       e337                -2
    i65       e338                -2
    i65       e339               -18
    i65       e340                18
    i65       e2328               -1
    i65       e2330               -1
    i65       e4716               -1
    i65       e4718               -1
    i66       e3                   1
    i66       e193                 1
    i66       e194                 1
    i66       e341               -18
    i66       e342                -2
    i66       e343                -2
    i66       e344               -18
    i66       e345                18
    i66       e2335               -1
    i66       e2337               -1
    i66       e4759               -1
    i66       e4761               -1
    i67       e4                   1
    i67       e3949               -1
    i67       e3951               -1
    i67       e4127               -1
    i67       e4129               -1
    i67       e4305               -1
    i67       e4307               -1
    i68       e4                   1
    i68       e3966               -1
    i68       e3968               -1
    i68       e4144               -1
    i68       e4146               -1
    i68       e4322               -1
    i68       e4324               -1
    i69       e5                   1
    i69       e183                 1
    i69       e184                 1
    i69       e488               -18
    i69       e489                -2
    i69       e490                -2
    i69       e491               -18
    i69       e492                18
    i69       e2392               -1
    i69       e2394               -1
    i69       e4719               -1
    i69       e4721               -1
    i70       e5                   1
    i70       e193                 1
    i70       e194                 1
    i70       e493               -18
    i70       e494                -2
    i70       e495                -2
    i70       e496               -18
    i70       e497                18
    i70       e2399               -1
    i70       e2401               -1
    i70       e4762               -1
    i70       e4764               -1
    i71       e6                   1
    i71       e3955               -1
    i71       e3957               -1
    i71       e4133               -1
    i71       e4135               -1
    i71       e4311               -1
    i71       e4313               -1
    i72       e6                   1
    i72       e3972               -1
    i72       e3974               -1
    i72       e4150               -1
    i72       e4152               -1
    i72       e4328               -1
    i72       e4330               -1
    i73       e7                   2
    i73       e37                  1
    i73       e38                  1
    i73       e61                  1
    i73       e62                  1
    i73       e1053              -18
    i73       e1054               -2
    i73       e1055               -2
    i73       e1056              -18
    i73       e1057               18
    i73       e1073              -18
    i73       e1074               -2
    i73       e1075               -2
    i73       e1076              -18
    i73       e1077               18
    i73       e1853              -18
    i73       e1854               -2
    i73       e1855               -2
    i73       e1856              -18
    i73       e1857               18
    i73       e1873              -18
    i73       e1874               -2
    i73       e1875               -2
    i73       e1876              -18
    i73       e1877               18
    i73       e3010               -1
    i73       e3012               -1
    i73       e3050               -1
    i73       e3052               -1
    i74       e7                   2
    i74       e49                  1
    i74       e50                  1
    i74       e73                  1
    i74       e74                  1
    i74       e1058              -18
    i74       e1059               -2
    i74       e1060               -2
    i74       e1061              -18
    i74       e1062               18
    i74       e1078              -18
    i74       e1079               -2
    i74       e1080               -2
    i74       e1081              -18
    i74       e1082               18
    i74       e1858              -18
    i74       e1859               -2
    i74       e1860               -2
    i74       e1861              -18
    i74       e1862               18
    i74       e1878              -18
    i74       e1879               -2
    i74       e1880               -2
    i74       e1881              -18
    i74       e1882               18
    i74       e3020               -1
    i74       e3022               -1
    i74       e3060               -1
    i74       e3062               -1
    i75       e7                   1
    i75       e183                 1
    i75       e184                 1
    i75       e1093              -18
    i75       e1094               -2
    i75       e1095               -2
    i75       e1096              -18
    i75       e1097               18
    i75       e1893              -18
    i75       e1894               -2
    i75       e1895               -2
    i75       e1896              -18
    i75       e1897               18
    i75       e3142               -1
    i75       e3144               -1
    i75       e5065                1
    i75       e5066              -20
    i76       e7                   1
    i76       e193                 1
    i76       e194                 1
    i76       e1098              -18
    i76       e1099               -2
    i76       e1100               -2
    i76       e1101              -18
    i76       e1102               18
    i76       e1898              -18
    i76       e1899               -2
    i76       e1900               -2
    i76       e1901              -18
    i76       e1902               18
    i76       e3173               -1
    i76       e3175               -1
    i76       e5067                1
    i76       e5068              -20
    i77       e7                   2
    i77       e109                 1
    i77       e110                 1
    i77       e135                 1
    i77       e136                 1
    i77       e1063              -18
    i77       e1064               -2
    i77       e1065               -2
    i77       e1066              -18
    i77       e1067               18
    i77       e1083              -18
    i77       e1084               -2
    i77       e1085               -2
    i77       e1086              -18
    i77       e1087               18
    i77       e1863              -18
    i77       e1864               -2
    i77       e1865               -2
    i77       e1866              -18
    i77       e1867               18
    i77       e1883              -18
    i77       e1884               -2
    i77       e1885               -2
    i77       e1886              -18
    i77       e1887               18
    i77       e3030               -1
    i77       e3032               -1
    i77       e3070               -1
    i77       e3072               -1
    i78       e7                   2
    i78       e123                 1
    i78       e124                 1
    i78       e149                 1
    i78       e150                 1
    i78       e1068              -18
    i78       e1069               -2
    i78       e1070               -2
    i78       e1071              -18
    i78       e1072               18
    i78       e1088              -18
    i78       e1089               -2
    i78       e1090               -2
    i78       e1091              -18
    i78       e1092               18
    i78       e1868              -18
    i78       e1869               -2
    i78       e1870               -2
    i78       e1871              -18
    i78       e1872               18
    i78       e1888              -18
    i78       e1889               -2
    i78       e1890               -2
    i78       e1891              -18
    i78       e1892               18
    i78       e3040               -1
    i78       e3042               -1
    i78       e3080               -1
    i78       e3082               -1
    i79       e8                   2
    i79       e97                  1
    i79       e98                  1
    i79       e3537               -1
    i79       e3539               -1
    i79       e3715               -1
    i79       e3717               -1
    i80       e8                   2
    i80       e99                  1
    i80       e100                 1
    i80       e3359               -1
    i80       e3361               -1
    i81       e8                   1
    i81       e3427               -1
    i81       e3429               -1
    i81       e3605               -1
    i81       e3607               -1
    i81       e3783               -1
    i81       e3785               -1
    i81       e3961               -1
    i81       e3963               -1
    i81       e4139               -1
    i81       e4141               -1
    i81       e4317               -1
    i81       e4319               -1
    i81       e5065               -1
    i81       e5066                1
    i82       e8                   1
    i82       e3444               -1
    i82       e3446               -1
    i82       e3622               -1
    i82       e3624               -1
    i82       e3800               -1
    i82       e3802               -1
    i82       e3978               -1
    i82       e3980               -1
    i82       e4156               -1
    i82       e4158               -1
    i82       e4334               -1
    i82       e4336               -1
    i82       e5067               -1
    i82       e5068                1
    i83       e8                   2
    i83       e171                 1
    i83       e172                 1
    i83       e4071               -1
    i83       e4073               -1
    i83       e4249               -1
    i83       e4251               -1
    i84       e8                   2
    i84       e173                 1
    i84       e174                 1
    i84       e3893               -1
    i84       e3895               -1
    i85       e9                   1
    i85       e183                 1
    i85       e184                 1
    i85       e1288              -18
    i85       e1289               -2
    i85       e1290               -2
    i85       e1291              -18
    i85       e1292               18
    i85       e2488               -1
    i85       e2490               -1
    i85       e4722               -1
    i85       e4724               -1
    i86       e9                   1
    i86       e193                 1
    i86       e194                 1
    i86       e1293              -18
    i86       e1294               -2
    i86       e1295               -2
    i86       e1296              -18
    i86       e1297               18
    i86       e2495               -1
    i86       e2497               -1
    i86       e4765               -1
    i86       e4767               -1
    i87       e10                  1
    i87       e3421               -1
    i87       e3423               -1
    i87       e3599               -1
    i87       e3601               -1
    i87       e3777               -1
    i87       e3779               -1
    i88       e10                  1
    i88       e3438               -1
    i88       e3440               -1
    i88       e3616               -1
    i88       e3618               -1
    i88       e3794               -1
    i88       e3796               -1
    i89       e11                  1
    i89       e183                 1
    i89       e184                 1
    i89       e1136              -18
    i89       e1137               -2
    i89       e1138               -2
    i89       e1139              -18
    i89       e1140               18
    i89       e2424               -1
    i89       e2426               -1
    i89       e4725               -1
    i89       e4727               -1
    i90       e11                  1
    i90       e193                 1
    i90       e194                 1
    i90       e1141              -18
    i90       e1142               -2
    i90       e1143               -2
    i90       e1144              -18
    i90       e1145               18
    i90       e2431               -1
    i90       e2433               -1
    i90       e4768               -1
    i90       e4770               -1
    i91       e12                  1
    i91       e3415               -1
    i91       e3417               -1
    i91       e3593               -1
    i91       e3595               -1
    i91       e3771               -1
    i91       e3773               -1
    i92       e12                  1
    i92       e3432               -1
    i92       e3434               -1
    i92       e3610               -1
    i92       e3612               -1
    i92       e3788               -1
    i92       e3790               -1
    i93       e13                  1
    i93       e183                 1
    i93       e184                 1
    i93       e412               -18
    i93       e413                -2
    i93       e414                -2
    i93       e415               -18
    i93       e416                18
    i93       e2360               -1
    i93       e2362               -1
    i93       e4728               -1
    i93       e4730               -1
    i94       e13                  1
    i94       e193                 1
    i94       e194                 1
    i94       e417               -18
    i94       e418                -2
    i94       e419                -2
    i94       e420               -18
    i94       e421                18
    i94       e2367               -1
    i94       e2369               -1
    i94       e4771               -1
    i94       e4773               -1
    i95       e14                  1
    i95       e3952               -1
    i95       e3954               -1
    i95       e4130               -1
    i95       e4132               -1
    i95       e4308               -1
    i95       e4310               -1
    i96       e14                  1
    i96       e3969               -1
    i96       e3971               -1
    i96       e4147               -1
    i96       e4149               -1
    i96       e4325               -1
    i96       e4327               -1
    i97       e15                  1
    i97       e183                 1
    i97       e184                 1
    i97       e1212              -18
    i97       e1213               -2
    i97       e1214               -2
    i97       e1215              -18
    i97       e1216               18
    i97       e2456               -1
    i97       e2458               -1
    i97       e4731               -1
    i97       e4733               -1
    i98       e15                  1
    i98       e193                 1
    i98       e194                 1
    i98       e1217              -18
    i98       e1218               -2
    i98       e1219               -2
    i98       e1220              -18
    i98       e1221               18
    i98       e2463               -1
    i98       e2465               -1
    i98       e4774               -1
    i98       e4776               -1
    i99       e16                  1
    i99       e3418               -1
    i99       e3420               -1
    i99       e3596               -1
    i99       e3598               -1
    i99       e3774               -1
    i99       e3776               -1
    i100      e16                  1
    i100      e3435               -1
    i100      e3437               -1
    i100      e3613               -1
    i100      e3615               -1
    i100      e3791               -1
    i100      e3793               -1
    i101      e17                  1
    i101      e175                 1
    i101      e176                 1
    i101      e865               -18
    i101      e866                -2
    i101      e867                -2
    i101      e868               -18
    i101      e869                18
    i101      e929               -18
    i101      e930                -2
    i101      e931                -2
    i101      e932               -18
    i101      e933                18
    i101      e1665              -18
    i101      e1666               -2
    i101      e1667               -2
    i101      e1668              -18
    i101      e1669               18
    i101      e1729              -18
    i101      e1730               -2
    i101      e1731               -2
    i101      e1732              -18
    i101      e1733               18
    i101      e2797               -1
    i101      e2799               -1
    i101      e2823               -1
    i101      e2825               -1
    i101      e3090               -1
    i101      e3092               -1
    i101      e3102               -1
    i101      e3104               -1
    i101      e4088               -1
    i101      e4090               -1
    i101      e4266               -1
    i101      e4268               -1
    i101      e4653               -1
    i101      e4655               -1
    i101      e4673               -1
    i101      e4675               -1
    i101      e5104                1
    i101      e5105                1
    i101      e5106                1
    i101      e5136                1
    i101      e5137                1
    i101      e5138                1
    i102      e17                  1
    i102      e177                 1
    i102      e178                 1
    i102      e881               -18
    i102      e882                -2
    i102      e883                -2
    i102      e884               -18
    i102      e885                18
    i102      e945               -18
    i102      e946                -2
    i102      e947                -2
    i102      e948               -18
    i102      e949                18
    i102      e1681              -18
    i102      e1682               -2
    i102      e1683               -2
    i102      e1684              -18
    i102      e1685               18
    i102      e1745              -18
    i102      e1746               -2
    i102      e1747               -2
    i102      e1748              -18
    i102      e1749               18
    i102      e2771               -1
    i102      e2773               -1
    i102      e3093               -1
    i102      e3095               -1
    i102      e3105               -1
    i102      e3107               -1
    i102      e3910               -1
    i102      e3912               -1
    i102      e4658               -1
    i102      e4660               -1
    i102      e4678               -1
    i102      e4680               -1
    i102      e5112                1
    i102      e5113                1
    i102      e5114                1
    i102      e5144                1
    i102      e5145                1
    i102      e5146                1
    i103      e17                  1
    i103      e205                 1
    i103      e206                 1
    i103      e996               -18
    i103      e997                -2
    i103      e998                -2
    i103      e999               -18
    i103      e1000               18
    i103      e1796              -18
    i103      e1797               -2
    i103      e1798               -2
    i103      e1799              -18
    i103      e1800               18
    i103      e2687               -1
    i103      e2689               -1
    i103      e2713               -1
    i103      e2715               -1
    i103      e2739               -1
    i103      e2741               -1
    i103      e2765               -1
    i103      e2767               -1
    i103      e2791               -1
    i103      e2793               -1
    i103      e2817               -1
    i103      e2819               -1
    i103      e3108               -1
    i103      e3110               -1
    i103      e3461               -1
    i103      e3463               -1
    i103      e3639               -1
    i103      e3641               -1
    i103      e3817               -1
    i103      e3819               -1
    i103      e3995               -1
    i103      e3997               -1
    i103      e4173               -1
    i103      e4175               -1
    i103      e4351               -1
    i103      e4353               -1
    i103      e4683               -1
    i103      e4685               -1
    i103      e5065               -1
    i103      e5066                1
    i103      e5072                1
    i103      e5073                1
    i103      e5074                1
    i104      e17                  1
    i104      e207                 1
    i104      e208                 1
    i104      e1047              -18
    i104      e1048               -2
    i104      e1049               -2
    i104      e1050              -18
    i104      e1051               18
    i104      e1847              -18
    i104      e1848               -2
    i104      e1849               -2
    i104      e1850              -18
    i104      e1851               18
    i104      e2690               -1
    i104      e2692               -1
    i104      e2716               -1
    i104      e2718               -1
    i104      e2742               -1
    i104      e2744               -1
    i104      e2768               -1
    i104      e2770               -1
    i104      e2794               -1
    i104      e2796               -1
    i104      e2820               -1
    i104      e2822               -1
    i104      e3111               -1
    i104      e3113               -1
    i104      e3478               -1
    i104      e3480               -1
    i104      e3656               -1
    i104      e3658               -1
    i104      e3834               -1
    i104      e3836               -1
    i104      e4012               -1
    i104      e4014               -1
    i104      e4190               -1
    i104      e4192               -1
    i104      e4368               -1
    i104      e4370               -1
    i104      e4688               -1
    i104      e4690               -1
    i104      e5067               -1
    i104      e5068                1
    i104      e5080                1
    i104      e5081                1
    i104      e5082                1
    i105      e18                  1
    i105      e5107                1
    i105      e5108                1
    i105      e5139                1
    i105      e5140                1
    i106      e18                  1
    i106      e5115                1
    i106      e5116                1
    i106      e5147                1
    i106      e5148                1
    i107      e18                  1
    i107      e5075                1
    i107      e5076                1
    i108      e18                  1
    i108      e5083                1
    i108      e5084                1
    i109      e19                  1
    i109      e187                 1
    i109      e188                 1
    i109      e352               -18
    i109      e353                -2
    i109      e354                -2
    i109      e355               -18
    i109      e356                18
    i109      e2344               -1
    i109      e2346               -1
    i109      e4396               -1
    i109      e4398               -1
    i110      e19                  1
    i110      e197                 1
    i110      e198                 1
    i110      e357               -18
    i110      e358                -2
    i110      e359                -2
    i110      e360               -18
    i110      e361                18
    i110      e2351               -1
    i110      e2353               -1
    i110      e4439               -1
    i110      e4441               -1
    i111      e20                  1
    i111      e3983               -1
    i111      e3985               -1
    i111      e4161               -1
    i111      e4163               -1
    i111      e4339               -1
    i111      e4341               -1
    i112      e20                  1
    i112      e4000               -1
    i112      e4002               -1
    i112      e4178               -1
    i112      e4180               -1
    i112      e4356               -1
    i112      e4358               -1
    i113      e21                  1
    i113      e187                 1
    i113      e188                 1
    i113      e504               -18
    i113      e505                -2
    i113      e506                -2
    i113      e507               -18
    i113      e508                18
    i113      e2408               -1
    i113      e2410               -1
    i113      e4399               -1
    i113      e4401               -1
    i114      e21                  1
    i114      e197                 1
    i114      e198                 1
    i114      e509               -18
    i114      e510                -2
    i114      e511                -2
    i114      e512               -18
    i114      e513                18
    i114      e2415               -1
    i114      e2417               -1
    i114      e4442               -1
    i114      e4444               -1
    i115      e22                  1
    i115      e3989               -1
    i115      e3991               -1
    i115      e4167               -1
    i115      e4169               -1
    i115      e4345               -1
    i115      e4347               -1
    i116      e22                  1
    i116      e4006               -1
    i116      e4008               -1
    i116      e4184               -1
    i116      e4186               -1
    i116      e4362               -1
    i116      e4364               -1
    i117      e23                  1
    i117      e187                 1
    i117      e188                 1
    i117      e1304              -18
    i117      e1305               -2
    i117      e1306               -2
    i117      e1307              -18
    i117      e1308               18
    i117      e2504               -1
    i117      e2506               -1
    i117      e4402               -1
    i117      e4404               -1
    i118      e23                  1
    i118      e197                 1
    i118      e198                 1
    i118      e1309              -18
    i118      e1310               -2
    i118      e1311               -2
    i118      e1312              -18
    i118      e1313               18
    i118      e2511               -1
    i118      e2513               -1
    i118      e4445               -1
    i118      e4447               -1
    i119      e24                  1
    i119      e3455               -1
    i119      e3457               -1
    i119      e3633               -1
    i119      e3635               -1
    i119      e3811               -1
    i119      e3813               -1
    i120      e24                  1
    i120      e3472               -1
    i120      e3474               -1
    i120      e3650               -1
    i120      e3652               -1
    i120      e3828               -1
    i120      e3830               -1
    i121      e25                  2
    i121      e113                 1
    i121      e114                 1
    i121      e139                 1
    i121      e140                 1
    i121      e777               -18
    i121      e778                -2
    i121      e779                -2
    i121      e780               -18
    i121      e781                18
    i121      e797               -18
    i121      e798                -2
    i121      e799                -2
    i121      e800               -18
    i121      e801                18
    i121      e1577              -18
    i121      e1578               -2
    i121      e1579               -2
    i121      e1580              -18
    i121      e1581               18
    i121      e1597              -18
    i121      e1598               -2
    i121      e1599               -2
    i121      e1600              -18
    i121      e1601               18
    i121      e2855               -1
    i121      e2857               -1
    i121      e2895               -1
    i121      e2897               -1
    i122      e25                  2
    i122      e127                 1
    i122      e128                 1
    i122      e153                 1
    i122      e154                 1
    i122      e782               -18
    i122      e783                -2
    i122      e784                -2
    i122      e785               -18
    i122      e786                18
    i122      e802               -18
    i122      e803                -2
    i122      e804                -2
    i122      e805               -18
    i122      e806                18
    i122      e1582              -18
    i122      e1583               -2
    i122      e1584               -2
    i122      e1585              -18
    i122      e1586               18
    i122      e1602              -18
    i122      e1603               -2
    i122      e1604               -2
    i122      e1605              -18
    i122      e1606               18
    i122      e2865               -1
    i122      e2867               -1
    i122      e2905               -1
    i122      e2907               -1
    i123      e25                  1
    i123      e187                 1
    i123      e188                 1
    i123      e807               -18
    i123      e808                -2
    i123      e809                -2
    i123      e810               -18
    i123      e811                18
    i123      e1607              -18
    i123      e1608               -2
    i123      e1609               -2
    i123      e1610              -18
    i123      e1611               18
    i123      e2967               -1
    i123      e2969               -1
    i123      e5061                1
    i123      e5062              -20
    i124      e25                  1
    i124      e197                 1
    i124      e198                 1
    i124      e812               -18
    i124      e813                -2
    i124      e814                -2
    i124      e815               -18
    i124      e816                18
    i124      e1612              -18
    i124      e1613               -2
    i124      e1614               -2
    i124      e1615              -18
    i124      e1616               18
    i124      e2998               -1
    i124      e3000               -1
    i124      e5063                1
    i124      e5064              -20
    i125      e25                  2
    i125      e41                  1
    i125      e42                  1
    i125      e65                  1
    i125      e66                  1
    i125      e767               -18
    i125      e768                -2
    i125      e769                -2
    i125      e770               -18
    i125      e771                18
    i125      e787               -18
    i125      e788                -2
    i125      e789                -2
    i125      e790               -18
    i125      e791                18
    i125      e1567              -18
    i125      e1568               -2
    i125      e1569               -2
    i125      e1570              -18
    i125      e1571               18
    i125      e1587              -18
    i125      e1588               -2
    i125      e1589               -2
    i125      e1590              -18
    i125      e1591               18
    i125      e2835               -1
    i125      e2837               -1
    i125      e2875               -1
    i125      e2877               -1
    i126      e25                  2
    i126      e53                  1
    i126      e54                  1
    i126      e77                  1
    i126      e78                  1
    i126      e772               -18
    i126      e773                -2
    i126      e774                -2
    i126      e775               -18
    i126      e776                18
    i126      e792               -18
    i126      e793                -2
    i126      e794                -2
    i126      e795               -18
    i126      e796                18
    i126      e1572              -18
    i126      e1573               -2
    i126      e1574               -2
    i126      e1575              -18
    i126      e1576               18
    i126      e1592              -18
    i126      e1593               -2
    i126      e1594               -2
    i126      e1595              -18
    i126      e1596               18
    i126      e2845               -1
    i126      e2847               -1
    i126      e2885               -1
    i126      e2887               -1
    i127      e26                  2
    i127      e175                 1
    i127      e176                 1
    i127      e4085               -1
    i127      e4087               -1
    i127      e4263               -1
    i127      e4265               -1
    i128      e26                  2
    i128      e177                 1
    i128      e178                 1
    i128      e3907               -1
    i128      e3909               -1
    i129      e26                  1
    i129      e3458               -1
    i129      e3460               -1
    i129      e3636               -1
    i129      e3638               -1
    i129      e3814               -1
    i129      e3816               -1
    i129      e3992               -1
    i129      e3994               -1
    i129      e4170               -1
    i129      e4172               -1
    i129      e4348               -1
    i129      e4350               -1
    i129      e5061               -1
    i129      e5062                1
    i130      e26                  1
    i130      e3475               -1
    i130      e3477               -1
    i130      e3653               -1
    i130      e3655               -1
    i130      e3831               -1
    i130      e3833               -1
    i130      e4009               -1
    i130      e4011               -1
    i130      e4187               -1
    i130      e4189               -1
    i130      e4365               -1
    i130      e4367               -1
    i130      e5063               -1
    i130      e5064                1
    i131      e26                  2
    i131      e101                 1
    i131      e102                 1
    i131      e3551               -1
    i131      e3553               -1
    i131      e3729               -1
    i131      e3731               -1
    i132      e26                  2
    i132      e103                 1
    i132      e104                 1
    i132      e3373               -1
    i132      e3375               -1
    i133      e27                  1
    i133      e187                 1
    i133      e188                 1
    i133      e1152              -18
    i133      e1153               -2
    i133      e1154               -2
    i133      e1155              -18
    i133      e1156               18
    i133      e2440               -1
    i133      e2442               -1
    i133      e4405               -1
    i133      e4407               -1
    i134      e27                  1
    i134      e197                 1
    i134      e198                 1
    i134      e1157              -18
    i134      e1158               -2
    i134      e1159               -2
    i134      e1160              -18
    i134      e1161               18
    i134      e2447               -1
    i134      e2449               -1
    i134      e4448               -1
    i134      e4450               -1
    i135      e28                  1
    i135      e3449               -1
    i135      e3451               -1
    i135      e3627               -1
    i135      e3629               -1
    i135      e3805               -1
    i135      e3807               -1
    i136      e28                  1
    i136      e3466               -1
    i136      e3468               -1
    i136      e3644               -1
    i136      e3646               -1
    i136      e3822               -1
    i136      e3824               -1
    i137      e29                  1
    i137      e187                 1
    i137      e188                 1
    i137      e428               -18
    i137      e429                -2
    i137      e430                -2
    i137      e431               -18
    i137      e432                18
    i137      e2376               -1
    i137      e2378               -1
    i137      e4408               -1
    i137      e4410               -1
    i138      e29                  1
    i138      e197                 1
    i138      e198                 1
    i138      e433               -18
    i138      e434                -2
    i138      e435                -2
    i138      e436               -18
    i138      e437                18
    i138      e2383               -1
    i138      e2385               -1
    i138      e4451               -1
    i138      e4453               -1
    i139      e30                  1
    i139      e3986               -1
    i139      e3988               -1
    i139      e4164               -1
    i139      e4166               -1
    i139      e4342               -1
    i139      e4344               -1
    i140      e30                  1
    i140      e4003               -1
    i140      e4005               -1
    i140      e4181               -1
    i140      e4183               -1
    i140      e4359               -1
    i140      e4361               -1
    i141      e31                  1
    i141      e187                 1
    i141      e188                 1
    i141      e1228              -18
    i141      e1229               -2
    i141      e1230               -2
    i141      e1231              -18
    i141      e1232               18
    i141      e2472               -1
    i141      e2474               -1
    i141      e4411               -1
    i141      e4413               -1
    i142      e31                  1
    i142      e197                 1
    i142      e198                 1
    i142      e1233              -18
    i142      e1234               -2
    i142      e1235               -2
    i142      e1236              -18
    i142      e1237               18
    i142      e2479               -1
    i142      e2481               -1
    i142      e4454               -1
    i142      e4456               -1
    i143      e32                  1
    i143      e3452               -1
    i143      e3454               -1
    i143      e3630               -1
    i143      e3632               -1
    i143      e3808               -1
    i143      e3810               -1
    i144      e32                  1
    i144      e3469               -1
    i144      e3471               -1
    i144      e3647               -1
    i144      e3649               -1
    i144      e3825               -1
    i144      e3827               -1
    i145      e33                  1
    i145      e34                  1
    i145      e217                 1
    i145      e218                 1
    i145      e385               -18
    i145      e386                -2
    i145      e387                -2
    i145      e388               -18
    i145      e389                18
    i145      e1980               -1
    i145      e1982               -1
    i145      e2003               -1
    i145      e2005               -1
    i145      e2026               -1
    i145      e2028               -1
    i145      e4539               -1
    i145      e4541               -1
    i145      e4859               -1
    i145      e4861               -1
    i145      e5041               -1
    i145      e5042                1
    i146      e33                  1
    i146      e34                  1
    i146      e225                 1
    i146      e226                 1
    i146      e461               -18
    i146      e462                -2
    i146      e463                -2
    i146      e464               -18
    i146      e465                18
    i146      e2049               -1
    i146      e2051               -1
    i146      e2072               -1
    i146      e2074               -1
    i146      e2095               -1
    i146      e2097               -1
    i146      e4542               -1
    i146      e4544               -1
    i146      e4862               -1
    i146      e4864               -1
    i146      e5045               -1
    i146      e5046                1
    i147      e33                  1
    i147      e34                  1
    i147      e57                  1
    i147      e58                  1
    i147      e273                 2
    i147      e274                 2
    i147      e665               -18
    i147      e666                -2
    i147      e667                -2
    i147      e668               -18
    i147      e669                18
    i147      e685               -18
    i147      e686                -2
    i147      e687                -2
    i147      e688               -18
    i147      e689                18
    i147      e1465              -18
    i147      e1466               -2
    i147      e1467               -2
    i147      e1468              -18
    i147      e1469               18
    i147      e1485              -18
    i147      e1486               -2
    i147      e1487               -2
    i147      e1488              -18
    i147      e1489               18
    i147      e2829               -1
    i147      e2831               -1
    i147      e2869               -1
    i147      e2871               -1
    i147      e5061               -2
    i147      e5062                2
    i148      e33                  1
    i148      e34                  1
    i148      e57                  1
    i148      e58                  1
    i148      e293                 2
    i148      e294                 2
    i148      e951               -18
    i148      e952                -2
    i148      e953                -2
    i148      e954               -18
    i148      e955                18
    i148      e971               -18
    i148      e972                -2
    i148      e973                -2
    i148      e974               -18
    i148      e975                18
    i148      e1751              -18
    i148      e1752               -2
    i148      e1753               -2
    i148      e1754              -18
    i148      e1755               18
    i148      e1771              -18
    i148      e1772               -2
    i148      e1773               -2
    i148      e1774              -18
    i148      e1775               18
    i148      e3004               -1
    i148      e3006               -1
    i148      e3044               -1
    i148      e3046               -1
    i148      e5065               -2
    i148      e5066                2
    i149      e33                 -5
    i149      e34                 -5
    i149      e57                 -3
    i149      e58                 -3
    i149      e83                  1
    i149      e84                 -1
    i149      e5151              -10
    i150      e35                  1
    i150      e36                  1
    i150      e219                 1
    i150      e220                 1
    i150      e396               -18
    i150      e397                -2
    i150      e398                -2
    i150      e399               -18
    i150      e400                18
    i150      e1983               -1
    i150      e1985               -1
    i150      e2006               -1
    i150      e2008               -1
    i150      e2029               -1
    i150      e2031               -1
    i150      e4547               -1
    i150      e4549               -1
    i150      e4867               -1
    i150      e4869               -1
    i150      e5043               -1
    i150      e5044                1
    i151      e35                  1
    i151      e36                  1
    i151      e227                 1
    i151      e228                 1
    i151      e472               -18
    i151      e473                -2
    i151      e474                -2
    i151      e475               -18
    i151      e476                18
    i151      e2052               -1
    i151      e2054               -1
    i151      e2075               -1
    i151      e2077               -1
    i151      e2098               -1
    i151      e2100               -1
    i151      e4550               -1
    i151      e4552               -1
    i151      e4870               -1
    i151      e4872               -1
    i151      e5047               -1
    i151      e5048                1
    i152      e35                  1
    i152      e36                  1
    i152      e59                  1
    i152      e60                  1
    i152      e275                 2
    i152      e276                 2
    i152      e716               -18
    i152      e717                -2
    i152      e718                -2
    i152      e719               -18
    i152      e720                18
    i152      e736               -18
    i152      e737                -2
    i152      e738                -2
    i152      e739               -18
    i152      e740                18
    i152      e1516              -18
    i152      e1517               -2
    i152      e1518               -2
    i152      e1519              -18
    i152      e1520               18
    i152      e1536              -18
    i152      e1537               -2
    i152      e1538               -2
    i152      e1539              -18
    i152      e1540               18
    i152      e2832               -1
    i152      e2834               -1
    i152      e2872               -1
    i152      e2874               -1
    i152      e5063               -2
    i152      e5064                2
    i153      e35                  1
    i153      e36                  1
    i153      e59                  1
    i153      e60                  1
    i153      e295                 2
    i153      e296                 2
    i153      e1002              -18
    i153      e1003               -2
    i153      e1004               -2
    i153      e1005              -18
    i153      e1006               18
    i153      e1022              -18
    i153      e1023               -2
    i153      e1024               -2
    i153      e1025              -18
    i153      e1026               18
    i153      e1802              -18
    i153      e1803               -2
    i153      e1804               -2
    i153      e1805              -18
    i153      e1806               18
    i153      e1822              -18
    i153      e1823               -2
    i153      e1824               -2
    i153      e1825              -18
    i153      e1826               18
    i153      e3007               -1
    i153      e3009               -1
    i153      e3047               -1
    i153      e3049               -1
    i153      e5067               -2
    i153      e5068                2
    i154      e35                 -5
    i154      e36                 -5
    i154      e59                 -3
    i154      e60                 -3
    i154      e91                  1
    i154      e92                 -1
    i154      e5151              -10
    i155      e37                  1
    i155      e38                  1
    i155      e407               -18
    i155      e408                -2
    i155      e409                -2
    i155      e410               -18
    i155      e411                18
    i155      e4555               -1
    i155      e4557               -1
    i155      e4875               -1
    i155      e4877               -1
    i156      e37                  1
    i156      e38                  1
    i156      e483               -18
    i156      e484                -2
    i156      e485                -2
    i156      e486               -18
    i156      e487                18
    i156      e4558               -1
    i156      e4560               -1
    i156      e4878               -1
    i156      e4880               -1
    i157      e37                 -4
    i157      e38                 -4
    i157      e39                 -1
    i157      e40                  1
    i157      e61                 -2
    i157      e62                 -2
    i157      e63                 -1
    i157      e64                  1
    i157      e5151              -10
    i158      e39                  1
    i158      e40                 -1
    i158      e63                  1
    i158      e64                 -1
    i158      e97                 -6
    i158      e98                 -6
    i158      e5151               -5
    i159      e39                  1
    i159      e40                  1
    i159      e63                  1
    i159      e64                  1
    i159      e5151              -30
    i160      e41                  1
    i160      e42                  1
    i160      e423               -18
    i160      e424                -2
    i160      e425                -2
    i160      e426               -18
    i160      e427                18
    i160      e4563               -1
    i160      e4565               -1
    i160      e4883               -1
    i160      e4885               -1
    i161      e41                  1
    i161      e42                  1
    i161      e499               -18
    i161      e500                -2
    i161      e501                -2
    i161      e502               -18
    i161      e503                18
    i161      e4566               -1
    i161      e4568               -1
    i161      e4886               -1
    i161      e4888               -1
    i162      e41                 -4
    i162      e42                 -4
    i162      e43                 -1
    i162      e44                  1
    i162      e65                 -2
    i162      e66                 -2
    i162      e67                 -1
    i162      e68                  1
    i162      e5151              -10
    i163      e43                  1
    i163      e44                 -1
    i163      e67                  1
    i163      e68                 -1
    i163      e101                -6
    i163      e102                -6
    i163      e5151               -5
    i164      e43                  1
    i164      e44                  1
    i164      e67                  1
    i164      e68                  1
    i164      e5151              -30
    i165      e45                  1
    i165      e46                  1
    i165      e209                 1
    i165      e210                 1
    i165      e309               -18
    i165      e310                -2
    i165      e311                -2
    i165      e312               -18
    i165      e313                18
    i165      e1911               -1
    i165      e1913               -1
    i165      e1934               -1
    i165      e1936               -1
    i165      e1957               -1
    i165      e1959               -1
    i165      e4571               -1
    i165      e4573               -1
    i165      e4891               -1
    i165      e4893               -1
    i165      e5037               -1
    i165      e5038                1
    i166      e45                  1
    i166      e46                  1
    i166      e69                  1
    i166      e70                  1
    i166      e273                 2
    i166      e274                 2
    i166      e670               -18
    i166      e671                -2
    i166      e672                -2
    i166      e673               -18
    i166      e674                18
    i166      e690               -18
    i166      e691                -2
    i166      e692                -2
    i166      e693               -18
    i166      e694                18
    i166      e1470              -18
    i166      e1471               -2
    i166      e1472               -2
    i166      e1473              -18
    i166      e1474               18
    i166      e1490              -18
    i166      e1491               -2
    i166      e1492               -2
    i166      e1493              -18
    i166      e1494               18
    i166      e2839               -1
    i166      e2841               -1
    i166      e2879               -1
    i166      e2881               -1
    i166      e5061               -2
    i166      e5062                2
    i167      e45                  1
    i167      e46                  1
    i167      e69                  1
    i167      e70                  1
    i167      e293                 2
    i167      e294                 2
    i167      e956               -18
    i167      e957                -2
    i167      e958                -2
    i167      e959               -18
    i167      e960                18
    i167      e976               -18
    i167      e977                -2
    i167      e978                -2
    i167      e979               -18
    i167      e980                18
    i167      e1756              -18
    i167      e1757               -2
    i167      e1758               -2
    i167      e1759              -18
    i167      e1760               18
    i167      e1776              -18
    i167      e1777               -2
    i167      e1778               -2
    i167      e1779              -18
    i167      e1780               18
    i167      e3014               -1
    i167      e3016               -1
    i167      e3054               -1
    i167      e3056               -1
    i167      e5065               -2
    i167      e5066                2
    i168      e45                 -4
    i168      e46                 -4
    i168      e69                 -3
    i168      e70                 -3
    i168      e87                  1
    i168      e88                 -1
    i168      e5151              -10
    i169      e47                  1
    i169      e48                  1
    i169      e211                 1
    i169      e212                 1
    i169      e320               -18
    i169      e321                -2
    i169      e322                -2
    i169      e323               -18
    i169      e324                18
    i169      e1914               -1
    i169      e1916               -1
    i169      e1937               -1
    i169      e1939               -1
    i169      e1960               -1
    i169      e1962               -1
    i169      e4576               -1
    i169      e4578               -1
    i169      e4896               -1
    i169      e4898               -1
    i169      e5039               -1
    i169      e5040                1
    i170      e47                  1
    i170      e48                  1
    i170      e71                  1
    i170      e72                  1
    i170      e275                 2
    i170      e276                 2
    i170      e721               -18
    i170      e722                -2
    i170      e723                -2
    i170      e724               -18
    i170      e725                18
    i170      e741               -18
    i170      e742                -2
    i170      e743                -2
    i170      e744               -18
    i170      e745                18
    i170      e1521              -18
    i170      e1522               -2
    i170      e1523               -2
    i170      e1524              -18
    i170      e1525               18
    i170      e1541              -18
    i170      e1542               -2
    i170      e1543               -2
    i170      e1544              -18
    i170      e1545               18
    i170      e2842               -1
    i170      e2844               -1
    i170      e2882               -1
    i170      e2884               -1
    i170      e5063               -2
    i170      e5064                2
    i171      e47                  1
    i171      e48                  1
    i171      e71                  1
    i171      e72                  1
    i171      e295                 2
    i171      e296                 2
    i171      e1007              -18
    i171      e1008               -2
    i171      e1009               -2
    i171      e1010              -18
    i171      e1011               18
    i171      e1027              -18
    i171      e1028               -2
    i171      e1029               -2
    i171      e1030              -18
    i171      e1031               18
    i171      e1807              -18
    i171      e1808               -2
    i171      e1809               -2
    i171      e1810              -18
    i171      e1811               18
    i171      e1827              -18
    i171      e1828               -2
    i171      e1829               -2
    i171      e1830              -18
    i171      e1831               18
    i171      e3017               -1
    i171      e3019               -1
    i171      e3057               -1
    i171      e3059               -1
    i171      e5067               -2
    i171      e5068                2
    i172      e47                 -4
    i172      e48                 -4
    i172      e71                 -3
    i172      e72                 -3
    i172      e95                  1
    i172      e96                 -1
    i172      e5151              -10
    i173      e49                  1
    i173      e50                  1
    i173      e331               -18
    i173      e332                -2
    i173      e333                -2
    i173      e334               -18
    i173      e335                18
    i173      e4581               -1
    i173      e4583               -1
    i173      e4901               -1
    i173      e4903               -1
    i174      e49                 -3
    i174      e50                 -3
    i174      e51                 -1
    i174      e52                  1
    i174      e73                 -2
    i174      e74                 -2
    i174      e75                 -1
    i174      e76                  1
    i174      e5151              -10
    i175      e51                  1
    i175      e52                 -1
    i175      e75                  1
    i175      e76                 -1
    i175      e99                 -6
    i175      e100                -6
    i175      e5151               -5
    i176      e51                  1
    i176      e52                  1
    i176      e75                  1
    i176      e76                  1
    i176      e5151              -30
    i177      e53                  1
    i177      e54                  1
    i177      e347               -18
    i177      e348                -2
    i177      e349                -2
    i177      e350               -18
    i177      e351                18
    i177      e4586               -1
    i177      e4588               -1
    i177      e4906               -1
    i177      e4908               -1
    i178      e53                 -3
    i178      e54                 -3
    i178      e55                 -1
    i178      e56                  1
    i178      e77                 -2
    i178      e78                 -2
    i178      e79                 -1
    i178      e80                  1
    i178      e5151              -10
    i179      e55                  1
    i179      e56                 -1
    i179      e79                  1
    i179      e80                 -1
    i179      e103                -6
    i179      e104                -6
    i179      e5151               -5
    i180      e55                  1
    i180      e56                  1
    i180      e79                  1
    i180      e80                  1
    i180      e5151              -30
    i181      e81                  1
    i181      e82                  1
    i181      e237                 1
    i181      e238                 1
    i181      e1163              -18
    i181      e1164               -2
    i181      e1165               -2
    i181      e1166              -18
    i181      e1167               18
    i181      e2151               -1
    i181      e2153               -1
    i181      e2174               -1
    i181      e2176               -1
    i181      e3491               -1
    i181      e3493               -1
    i181      e3669               -1
    i181      e3671               -1
    i181      e5049                1
    i181      e5050              -20
    i182      e81                  1
    i182      e82                  1
    i182      e245                 1
    i182      e246                 1
    i182      e1239              -18
    i182      e1240               -2
    i182      e1241               -2
    i182      e1242              -18
    i182      e1243               18
    i182      e2220               -1
    i182      e2222               -1
    i182      e2243               -1
    i182      e2245               -1
    i182      e3494               -1
    i182      e3496               -1
    i182      e3672               -1
    i182      e3674               -1
    i182      e5053                1
    i182      e5054              -20
    i183      e81                  1
    i183      e82                  1
    i183      e253                 1
    i183      e254                 1
    i183      e1315              -18
    i183      e1316               -2
    i183      e1317               -2
    i183      e1318              -18
    i183      e1319               18
    i183      e2289               -1
    i183      e2291               -1
    i183      e2312               -1
    i183      e2314               -1
    i183      e3497               -1
    i183      e3499               -1
    i183      e3675               -1
    i183      e3677               -1
    i183      e5057                1
    i183      e5058              -20
    i184      e81                  1
    i184      e82                  1
    i184      e257                 1
    i184      e258                 1
    i184      e265                 1
    i184      e266                 1
    i184      e537               -18
    i184      e538                -2
    i184      e539                -2
    i184      e540               -18
    i184      e541                18
    i184      e601               -18
    i184      e602                -2
    i184      e603                -2
    i184      e604               -18
    i184      e605                18
    i184      e1337              -18
    i184      e1338               -2
    i184      e1339               -2
    i184      e1340              -18
    i184      e1341               18
    i184      e1401              -18
    i184      e1402               -2
    i184      e1403               -2
    i184      e1404              -18
    i184      e1405               18
    i184      e2546               -1
    i184      e2548               -1
    i184      e2572               -1
    i184      e2574               -1
    i184      e2940               -1
    i184      e2942               -1
    i184      e2952               -1
    i184      e2954               -1
    i184      e3500               -1
    i184      e3502               -1
    i184      e3678               -1
    i184      e3680               -1
    i184      e4779               -1
    i184      e4781               -1
    i184      e4799               -1
    i184      e4801               -1
    i184      e5061                2
    i184      e5062              -40
    i185      e81                  1
    i185      e82                  1
    i185      e277                 1
    i185      e278                 1
    i185      e285                 1
    i185      e286                 1
    i185      e823               -18
    i185      e824                -2
    i185      e825                -2
    i185      e826               -18
    i185      e827                18
    i185      e887               -18
    i185      e888                -2
    i185      e889                -2
    i185      e890               -18
    i185      e891                18
    i185      e1623              -18
    i185      e1624               -2
    i185      e1625               -2
    i185      e1626              -18
    i185      e1627               18
    i185      e1687              -18
    i185      e1688               -2
    i185      e1689               -2
    i185      e1690              -18
    i185      e1691               18
    i185      e2702               -1
    i185      e2704               -1
    i185      e2728               -1
    i185      e2730               -1
    i185      e3115               -1
    i185      e3117               -1
    i185      e3127               -1
    i185      e3129               -1
    i185      e3503               -1
    i185      e3505               -1
    i185      e3681               -1
    i185      e3683               -1
    i185      e4459               -1
    i185      e4461               -1
    i185      e4479               -1
    i185      e4481               -1
    i185      e5065                2
    i185      e5066              -40
    i186      e81                 -6
    i186      e82                 -6
    i186      e83                 -1
    i186      e84                  1
    i186      e5151               -5
    i187      e83                  1
    i187      e84                  1
    i187      e5151              -15
    i188      e85                  1
    i188      e86                  1
    i188      e239                 1
    i188      e240                 1
    i188      e1174              -18
    i188      e1175               -2
    i188      e1176               -2
    i188      e1177              -18
    i188      e1178               18
    i188      e2128               -1
    i188      e2130               -1
    i188      e3313               -1
    i188      e3315               -1
    i188      e5049                1
    i188      e5050              -20
    i189      e85                  1
    i189      e86                  1
    i189      e247                 1
    i189      e248                 1
    i189      e1250              -18
    i189      e1251               -2
    i189      e1252               -2
    i189      e1253              -18
    i189      e1254               18
    i189      e2197               -1
    i189      e2199               -1
    i189      e3316               -1
    i189      e3318               -1
    i189      e5053                1
    i189      e5054              -20
    i190      e85                  1
    i190      e86                  1
    i190      e255                 1
    i190      e256                 1
    i190      e1326              -18
    i190      e1327               -2
    i190      e1328               -2
    i190      e1329              -18
    i190      e1330               18
    i190      e2266               -1
    i190      e2268               -1
    i190      e3319               -1
    i190      e3321               -1
    i190      e5057                1
    i190      e5058              -20
    i191      e85                  1
    i191      e86                  1
    i191      e259                 1
    i191      e260                 1
    i191      e267                 1
    i191      e268                 1
    i191      e553               -18
    i191      e554                -2
    i191      e555                -2
    i191      e556               -18
    i191      e557                18
    i191      e617               -18
    i191      e618                -2
    i191      e619                -2
    i191      e620               -18
    i191      e621                18
    i191      e1353              -18
    i191      e1354               -2
    i191      e1355               -2
    i191      e1356              -18
    i191      e1357               18
    i191      e1417              -18
    i191      e1418               -2
    i191      e1419               -2
    i191      e1420              -18
    i191      e1421               18
    i191      e2520               -1
    i191      e2522               -1
    i191      e2943               -1
    i191      e2945               -1
    i191      e2955               -1
    i191      e2957               -1
    i191      e3322               -1
    i191      e3324               -1
    i191      e4784               -1
    i191      e4786               -1
    i191      e4804               -1
    i191      e4806               -1
    i191      e5061                2
    i191      e5062              -40
    i192      e85                  1
    i192      e86                  1
    i192      e279                 1
    i192      e280                 1
    i192      e287                 1
    i192      e288                 1
    i192      e839               -18
    i192      e840                -2
    i192      e841                -2
    i192      e842               -18
    i192      e843                18
    i192      e903               -18
    i192      e904                -2
    i192      e905                -2
    i192      e906               -18
    i192      e907                18
    i192      e1639              -18
    i192      e1640               -2
    i192      e1641               -2
    i192      e1642              -18
    i192      e1643               18
    i192      e1703              -18
    i192      e1704               -2
    i192      e1705               -2
    i192      e1706              -18
    i192      e1707               18
    i192      e2676               -1
    i192      e2678               -1
    i192      e3118               -1
    i192      e3120               -1
    i192      e3130               -1
    i192      e3132               -1
    i192      e3325               -1
    i192      e3327               -1
    i192      e4464               -1
    i192      e4466               -1
    i192      e4484               -1
    i192      e4486               -1
    i192      e5065                2
    i192      e5066              -40
    i193      e85                 -6
    i193      e86                 -6
    i193      e87                 -1
    i193      e88                  1
    i193      e5151               -5
    i194      e87                  1
    i194      e88                  1
    i194      e5151              -15
    i195      e89                  1
    i195      e90                  1
    i195      e237                 1
    i195      e238                 1
    i195      e1168              -18
    i195      e1169               -2
    i195      e1170               -2
    i195      e1171              -18
    i195      e1172               18
    i195      e2158               -1
    i195      e2160               -1
    i195      e2181               -1
    i195      e2183               -1
    i195      e3508               -1
    i195      e3510               -1
    i195      e3686               -1
    i195      e3688               -1
    i195      e5051                1
    i195      e5052              -20
    i196      e89                  1
    i196      e90                  1
    i196      e245                 1
    i196      e246                 1
    i196      e1244              -18
    i196      e1245               -2
    i196      e1246               -2
    i196      e1247              -18
    i196      e1248               18
    i196      e2227               -1
    i196      e2229               -1
    i196      e2250               -1
    i196      e2252               -1
    i196      e3511               -1
    i196      e3513               -1
    i196      e3689               -1
    i196      e3691               -1
    i196      e5055                1
    i196      e5056              -20
    i197      e89                  1
    i197      e90                  1
    i197      e253                 1
    i197      e254                 1
    i197      e1320              -18
    i197      e1321               -2
    i197      e1322               -2
    i197      e1323              -18
    i197      e1324               18
    i197      e2296               -1
    i197      e2298               -1
    i197      e2319               -1
    i197      e2321               -1
    i197      e3514               -1
    i197      e3516               -1
    i197      e3692               -1
    i197      e3694               -1
    i197      e5059                1
    i197      e5060              -20
    i198      e89                  1
    i198      e90                  1
    i198      e257                 1
    i198      e258                 1
    i198      e265                 1
    i198      e266                 1
    i198      e542               -18
    i198      e543                -2
    i198      e544                -2
    i198      e545               -18
    i198      e546                18
    i198      e606               -18
    i198      e607                -2
    i198      e608                -2
    i198      e609               -18
    i198      e610                18
    i198      e1342              -18
    i198      e1343               -2
    i198      e1344               -2
    i198      e1345              -18
    i198      e1346               18
    i198      e1406              -18
    i198      e1407               -2
    i198      e1408               -2
    i198      e1409              -18
    i198      e1410               18
    i198      e2553               -1
    i198      e2555               -1
    i198      e2579               -1
    i198      e2581               -1
    i198      e2971               -1
    i198      e2973               -1
    i198      e2983               -1
    i198      e2985               -1
    i198      e3517               -1
    i198      e3519               -1
    i198      e3695               -1
    i198      e3697               -1
    i198      e4819               -1
    i198      e4821               -1
    i198      e4839               -1
    i198      e4841               -1
    i198      e5063                2
    i198      e5064              -40
    i199      e89                  1
    i199      e90                  1
    i199      e277                 1
    i199      e278                 1
    i199      e285                 1
    i199      e286                 1
    i199      e828               -18
    i199      e829                -2
    i199      e830                -2
    i199      e831               -18
    i199      e832                18
    i199      e892               -18
    i199      e893                -2
    i199      e894                -2
    i199      e895               -18
    i199      e896                18
    i199      e1628              -18
    i199      e1629               -2
    i199      e1630               -2
    i199      e1631              -18
    i199      e1632               18
    i199      e1692              -18
    i199      e1693               -2
    i199      e1694               -2
    i199      e1695              -18
    i199      e1696               18
    i199      e2709               -1
    i199      e2711               -1
    i199      e2735               -1
    i199      e2737               -1
    i199      e3146               -1
    i199      e3148               -1
    i199      e3158               -1
    i199      e3160               -1
    i199      e3520               -1
    i199      e3522               -1
    i199      e3698               -1
    i199      e3700               -1
    i199      e4499               -1
    i199      e4501               -1
    i199      e4519               -1
    i199      e4521               -1
    i199      e5067                2
    i199      e5068              -40
    i200      e89                 -6
    i200      e90                 -6
    i200      e91                 -1
    i200      e92                  1
    i200      e5151               -5
    i201      e91                  1
    i201      e92                  1
    i201      e5151              -15
    i202      e93                  1
    i202      e94                  1
    i202      e239                 1
    i202      e240                 1
    i202      e1179              -18
    i202      e1180               -2
    i202      e1181               -2
    i202      e1182              -18
    i202      e1183               18
    i202      e2135               -1
    i202      e2137               -1
    i202      e3330               -1
    i202      e3332               -1
    i202      e5051                1
    i202      e5052              -20
    i203      e93                  1
    i203      e94                  1
    i203      e247                 1
    i203      e248                 1
    i203      e1255              -18
    i203      e1256               -2
    i203      e1257               -2
    i203      e1258              -18
    i203      e1259               18
    i203      e2204               -1
    i203      e2206               -1
    i203      e3333               -1
    i203      e3335               -1
    i203      e5055                1
    i203      e5056              -20
    i204      e93                  1
    i204      e94                  1
    i204      e255                 1
    i204      e256                 1
    i204      e1331              -18
    i204      e1332               -2
    i204      e1333               -2
    i204      e1334              -18
    i204      e1335               18
    i204      e2273               -1
    i204      e2275               -1
    i204      e3336               -1
    i204      e3338               -1
    i204      e5059                1
    i204      e5060              -20
    i205      e93                  1
    i205      e94                  1
    i205      e259                 1
    i205      e260                 1
    i205      e267                 1
    i205      e268                 1
    i205      e558               -18
    i205      e559                -2
    i205      e560                -2
    i205      e561               -18
    i205      e562                18
    i205      e622               -18
    i205      e623                -2
    i205      e624                -2
    i205      e625               -18
    i205      e626                18
    i205      e1358              -18
    i205      e1359               -2
    i205      e1360               -2
    i205      e1361              -18
    i205      e1362               18
    i205      e1422              -18
    i205      e1423               -2
    i205      e1424               -2
    i205      e1425              -18
    i205      e1426               18
    i205      e2527               -1
    i205      e2529               -1
    i205      e2974               -1
    i205      e2976               -1
    i205      e2986               -1
    i205      e2988               -1
    i205      e3339               -1
    i205      e3341               -1
    i205      e4824               -1
    i205      e4826               -1
    i205      e4844               -1
    i205      e4846               -1
    i205      e5063                2
    i205      e5064              -40
    i206      e93                  1
    i206      e94                  1
    i206      e279                 1
    i206      e280                 1
    i206      e287                 1
    i206      e288                 1
    i206      e844               -18
    i206      e845                -2
    i206      e846                -2
    i206      e847               -18
    i206      e848                18
    i206      e908               -18
    i206      e909                -2
    i206      e910                -2
    i206      e911               -18
    i206      e912                18
    i206      e1644              -18
    i206      e1645               -2
    i206      e1646               -2
    i206      e1647              -18
    i206      e1648               18
    i206      e1708              -18
    i206      e1709               -2
    i206      e1710               -2
    i206      e1711              -18
    i206      e1712               18
    i206      e2683               -1
    i206      e2685               -1
    i206      e3149               -1
    i206      e3151               -1
    i206      e3161               -1
    i206      e3163               -1
    i206      e3342               -1
    i206      e3344               -1
    i206      e4504               -1
    i206      e4506               -1
    i206      e4524               -1
    i206      e4526               -1
    i206      e5067                2
    i206      e5068              -40
    i207      e93                 -6
    i207      e94                 -6
    i207      e95                 -1
    i207      e96                  1
    i207      e5151               -5
    i208      e95                  1
    i208      e96                  1
    i208      e5151              -15
    i209      e97                  1
    i209      e98                  1
    i209      e237                 1
    i209      e238                 1
    i209      e3525               -1
    i209      e3527               -1
    i209      e3703               -1
    i209      e3705               -1
    i210      e97                  1
    i210      e98                  1
    i210      e245                 1
    i210      e246                 1
    i210      e3528               -1
    i210      e3530               -1
    i210      e3706               -1
    i210      e3708               -1
    i211      e97                  1
    i211      e98                  1
    i211      e253                 1
    i211      e254                 1
    i211      e3531               -1
    i211      e3533               -1
    i211      e3709               -1
    i211      e3711               -1
    i212      e99                  1
    i212      e100                 1
    i212      e239                 1
    i212      e240                 1
    i212      e3347               -1
    i212      e3349               -1
    i213      e99                  1
    i213      e100                 1
    i213      e247                 1
    i213      e248                 1
    i213      e3350               -1
    i213      e3352               -1
    i214      e99                  1
    i214      e100                 1
    i214      e255                 1
    i214      e256                 1
    i214      e3353               -1
    i214      e3355               -1
    i215      e101                 1
    i215      e102                 1
    i215      e237                 1
    i215      e238                 1
    i215      e3542               -1
    i215      e3544               -1
    i215      e3720               -1
    i215      e3722               -1
    i216      e101                 1
    i216      e102                 1
    i216      e245                 1
    i216      e246                 1
    i216      e3545               -1
    i216      e3547               -1
    i216      e3723               -1
    i216      e3725               -1
    i217      e101                 1
    i217      e102                 1
    i217      e253                 1
    i217      e254                 1
    i217      e3548               -1
    i217      e3550               -1
    i217      e3726               -1
    i217      e3728               -1
    i218      e101                 1
    i218      e102                 1
    i218      e833               -18
    i218      e834                -2
    i218      e835                -2
    i218      e836               -18
    i218      e837                18
    i218      e897               -18
    i218      e898                -2
    i218      e899                -2
    i218      e900               -18
    i218      e901                18
    i218      e1633              -18
    i218      e1634               -2
    i218      e1635               -2
    i218      e1636              -18
    i218      e1637               18
    i218      e1697              -18
    i218      e1698               -2
    i218      e1699               -2
    i218      e1700              -18
    i218      e1701               18
    i218      e2719               -1
    i218      e2721               -1
    i218      e2745               -1
    i218      e2747               -1
    i218      e3084               -1
    i218      e3086               -1
    i218      e3096               -1
    i218      e3098               -1
    i218      e3554               -1
    i218      e3556               -1
    i218      e3732               -1
    i218      e3734               -1
    i218      e4643               -1
    i218      e4645               -1
    i218      e4663               -1
    i218      e4665               -1
    i218      e5088                1
    i218      e5089                1
    i218      e5090                1
    i218      e5120                1
    i218      e5121                1
    i218      e5122                1
    i219      e103                 1
    i219      e104                 1
    i219      e239                 1
    i219      e240                 1
    i219      e3364               -1
    i219      e3366               -1
    i220      e103                 1
    i220      e104                 1
    i220      e247                 1
    i220      e248                 1
    i220      e3367               -1
    i220      e3369               -1
    i221      e103                 1
    i221      e104                 1
    i221      e255                 1
    i221      e256                 1
    i221      e3370               -1
    i221      e3372               -1
    i222      e103                 1
    i222      e104                 1
    i222      e849               -18
    i222      e850                -2
    i222      e851                -2
    i222      e852               -18
    i222      e853                18
    i222      e913               -18
    i222      e914                -2
    i222      e915                -2
    i222      e916               -18
    i222      e917                18
    i222      e1649              -18
    i222      e1650               -2
    i222      e1651               -2
    i222      e1652              -18
    i222      e1653               18
    i222      e1713              -18
    i222      e1714               -2
    i222      e1715               -2
    i222      e1716              -18
    i222      e1717               18
    i222      e2693               -1
    i222      e2695               -1
    i222      e3087               -1
    i222      e3089               -1
    i222      e3099               -1
    i222      e3101               -1
    i222      e3376               -1
    i222      e3378               -1
    i222      e4648               -1
    i222      e4650               -1
    i222      e4668               -1
    i222      e4670               -1
    i222      e5096                1
    i222      e5097                1
    i222      e5098                1
    i222      e5128                1
    i222      e5129                1
    i222      e5130                1
    i223      e105                 1
    i223      e106                 1
    i223      e241                 1
    i223      e242                 1
    i223      e1185              -18
    i223      e1186               -2
    i223      e1187               -2
    i223      e1188              -18
    i223      e1189               18
    i223      e2187               -1
    i223      e2189               -1
    i223      e2210               -1
    i223      e2212               -1
    i223      e2233               -1
    i223      e2235               -1
    i223      e4591               -1
    i223      e4593               -1
    i223      e4911               -1
    i223      e4913               -1
    i223      e5053               -1
    i223      e5054                1
    i224      e105                 1
    i224      e106                 1
    i224      e249                 1
    i224      e250                 1
    i224      e1261              -18
    i224      e1262               -2
    i224      e1263               -2
    i224      e1264              -18
    i224      e1265               18
    i224      e2256               -1
    i224      e2258               -1
    i224      e2279               -1
    i224      e2281               -1
    i224      e2302               -1
    i224      e2304               -1
    i224      e4594               -1
    i224      e4596               -1
    i224      e4914               -1
    i224      e4916               -1
    i224      e5057               -1
    i224      e5058                1
    i225      e105                 1
    i225      e106                 1
    i225      e131                 1
    i225      e132                 1
    i225      e273                 2
    i225      e274                 2
    i225      e675               -18
    i225      e676                -2
    i225      e677                -2
    i225      e678               -18
    i225      e679                18
    i225      e695               -18
    i225      e696                -2
    i225      e697                -2
    i225      e698               -18
    i225      e699                18
    i225      e1475              -18
    i225      e1476               -2
    i225      e1477               -2
    i225      e1478              -18
    i225      e1479               18
    i225      e1495              -18
    i225      e1496               -2
    i225      e1497               -2
    i225      e1498              -18
    i225      e1499               18
    i225      e2849               -1
    i225      e2851               -1
    i225      e2889               -1
    i225      e2891               -1
    i225      e5061               -2
    i225      e5062                2
    i226      e105                 1
    i226      e106                 1
    i226      e131                 1
    i226      e132                 1
    i226      e293                 2
    i226      e294                 2
    i226      e961               -18
    i226      e962                -2
    i226      e963                -2
    i226      e964               -18
    i226      e965                18
    i226      e981               -18
    i226      e982                -2
    i226      e983                -2
    i226      e984               -18
    i226      e985                18
    i226      e1761              -18
    i226      e1762               -2
    i226      e1763               -2
    i226      e1764              -18
    i226      e1765               18
    i226      e1781              -18
    i226      e1782               -2
    i226      e1783               -2
    i226      e1784              -18
    i226      e1785               18
    i226      e3024               -1
    i226      e3026               -1
    i226      e3064               -1
    i226      e3066               -1
    i226      e5065               -2
    i226      e5066                2
    i227      e105                -5
    i227      e106                -5
    i227      e131                -3
    i227      e132                -3
    i227      e159                 1
    i227      e160                -1
    i227      e5151              -10
    i228      e107                 1
    i228      e108                 1
    i228      e243                 1
    i228      e244                 1
    i228      e1196              -18
    i228      e1197               -2
    i228      e1198               -2
    i228      e1199              -18
    i228      e1200               18
    i228      e2190               -1
    i228      e2192               -1
    i228      e2213               -1
    i228      e2215               -1
    i228      e2236               -1
    i228      e2238               -1
    i228      e4599               -1
    i228      e4601               -1
    i228      e4919               -1
    i228      e4921               -1
    i228      e5055               -1
    i228      e5056                1
    i229      e107                 1
    i229      e108                 1
    i229      e251                 1
    i229      e252                 1
    i229      e1272              -18
    i229      e1273               -2
    i229      e1274               -2
    i229      e1275              -18
    i229      e1276               18
    i229      e2259               -1
    i229      e2261               -1
    i229      e2282               -1
    i229      e2284               -1
    i229      e2305               -1
    i229      e2307               -1
    i229      e4602               -1
    i229      e4604               -1
    i229      e4922               -1
    i229      e4924               -1
    i229      e5059               -1
    i229      e5060                1
    i230      e107                 1
    i230      e108                 1
    i230      e133                 1
    i230      e134                 1
    i230      e275                 2
    i230      e276                 2
    i230      e726               -18
    i230      e727                -2
    i230      e728                -2
    i230      e729               -18
    i230      e730                18
    i230      e746               -18
    i230      e747                -2
    i230      e748                -2
    i230      e749               -18
    i230      e750                18
    i230      e1526              -18
    i230      e1527               -2
    i230      e1528               -2
    i230      e1529              -18
    i230      e1530               18
    i230      e1546              -18
    i230      e1547               -2
    i230      e1548               -2
    i230      e1549              -18
    i230      e1550               18
    i230      e2852               -1
    i230      e2854               -1
    i230      e2892               -1
    i230      e2894               -1
    i230      e5063               -2
    i230      e5064                2
    i231      e107                 1
    i231      e108                 1
    i231      e133                 1
    i231      e134                 1
    i231      e295                 2
    i231      e296                 2
    i231      e1012              -18
    i231      e1013               -2
    i231      e1014               -2
    i231      e1015              -18
    i231      e1016               18
    i231      e1032              -18
    i231      e1033               -2
    i231      e1034               -2
    i231      e1035              -18
    i231      e1036               18
    i231      e1812              -18
    i231      e1813               -2
    i231      e1814               -2
    i231      e1815              -18
    i231      e1816               18
    i231      e1832              -18
    i231      e1833               -2
    i231      e1834               -2
    i231      e1835              -18
    i231      e1836               18
    i231      e3027               -1
    i231      e3029               -1
    i231      e3067               -1
    i231      e3069               -1
    i231      e5067               -2
    i231      e5068                2
    i232      e107                -5
    i232      e108                -5
    i232      e133                -3
    i232      e134                -3
    i232      e167                 1
    i232      e168                -1
    i232      e5151              -10
    i233      e109                 1
    i233      e110                 1
    i233      e1207              -18
    i233      e1208               -2
    i233      e1209               -2
    i233      e1210              -18
    i233      e1211               18
    i233      e4607               -1
    i233      e4609               -1
    i233      e4927               -1
    i233      e4929               -1
    i234      e109                 1
    i234      e110                 1
    i234      e1283              -18
    i234      e1284               -2
    i234      e1285               -2
    i234      e1286              -18
    i234      e1287               18
    i234      e4610               -1
    i234      e4612               -1
    i234      e4930               -1
    i234      e4932               -1
    i235      e109                -4
    i235      e110                -4
    i235      e111                -1
    i235      e112                 1
    i235      e135                -2
    i235      e136                -2
    i235      e137                -1
    i235      e138                 1
    i235      e5151              -10
    i236      e111                 1
    i236      e112                -1
    i236      e137                 1
    i236      e138                -1
    i236      e171                -6
    i236      e172                -6
    i236      e5151               -5
    i237      e111                 1
    i237      e112                 1
    i237      e137                 1
    i237      e138                 1
    i237      e5151              -30
    i238      e113                 1
    i238      e114                 1
    i238      e1223              -18
    i238      e1224               -2
    i238      e1225               -2
    i238      e1226              -18
    i238      e1227               18
    i238      e4615               -1
    i238      e4617               -1
    i238      e4935               -1
    i238      e4937               -1
    i239      e113                 1
    i239      e114                 1
    i239      e1299              -18
    i239      e1300               -2
    i239      e1301               -2
    i239      e1302              -18
    i239      e1303               18
    i239      e4618               -1
    i239      e4620               -1
    i239      e4938               -1
    i239      e4940               -1
    i240      e113                -4
    i240      e114                -4
    i240      e115                -1
    i240      e116                 1
    i240      e139                -2
    i240      e140                -2
    i240      e141                -1
    i240      e142                 1
    i240      e5151              -10
    i241      e115                 1
    i241      e116                -1
    i241      e141                 1
    i241      e142                -1
    i241      e175                -6
    i241      e176                -6
    i241      e5151               -5
    i242      e115                 1
    i242      e116                 1
    i242      e141                 1
    i242      e142                 1
    i242      e5151              -30
    i243      e117                 1
    i243      e118                 1
    i243      e233                 1
    i243      e234                 1
    i243      e1109              -18
    i243      e1110               -2
    i243      e1111               -2
    i243      e1112              -18
    i243      e1113               18
    i243      e2118               -1
    i243      e2120               -1
    i243      e2141               -1
    i243      e2143               -1
    i243      e2164               -1
    i243      e2166               -1
    i243      e4623               -1
    i243      e4625               -1
    i243      e4943               -1
    i243      e4945               -1
    i243      e5049               -1
    i243      e5050                1
    i244      e117                 1
    i244      e118                 1
    i244      e143                 1
    i244      e144                 1
    i244      e273                 2
    i244      e274                 2
    i244      e680               -18
    i244      e681                -2
    i244      e682                -2
    i244      e683               -18
    i244      e684                18
    i244      e700               -18
    i244      e701                -2
    i244      e702                -2
    i244      e703               -18
    i244      e704                18
    i244      e1480              -18
    i244      e1481               -2
    i244      e1482               -2
    i244      e1483              -18
    i244      e1484               18
    i244      e1500              -18
    i244      e1501               -2
    i244      e1502               -2
    i244      e1503              -18
    i244      e1504               18
    i244      e2859               -1
    i244      e2861               -1
    i244      e2899               -1
    i244      e2901               -1
    i244      e5061               -2
    i244      e5062                2
    i245      e117                 1
    i245      e118                 1
    i245      e143                 1
    i245      e144                 1
    i245      e293                 2
    i245      e294                 2
    i245      e966               -18
    i245      e967                -2
    i245      e968                -2
    i245      e969               -18
    i245      e970                18
    i245      e986               -18
    i245      e987                -2
    i245      e988                -2
    i245      e989               -18
    i245      e990                18
    i245      e1766              -18
    i245      e1767               -2
    i245      e1768               -2
    i245      e1769              -18
    i245      e1770               18
    i245      e1786              -18
    i245      e1787               -2
    i245      e1788               -2
    i245      e1789              -18
    i245      e1790               18
    i245      e3034               -1
    i245      e3036               -1
    i245      e3074               -1
    i245      e3076               -1
    i245      e5065               -2
    i245      e5066                2
    i246      e117                -4
    i246      e118                -4
    i246      e143                -3
    i246      e144                -3
    i246      e163                 1
    i246      e164                -1
    i246      e5151              -10
    i247      e119                 1
    i247      e120                 1
    i247      e235                 1
    i247      e236                 1
    i247      e1120              -18
    i247      e1121               -2
    i247      e1122               -2
    i247      e1123              -18
    i247      e1124               18
    i247      e2121               -1
    i247      e2123               -1
    i247      e2144               -1
    i247      e2146               -1
    i247      e2167               -1
    i247      e2169               -1
    i247      e4628               -1
    i247      e4630               -1
    i247      e4948               -1
    i247      e4950               -1
    i247      e5051               -1
    i247      e5052                1
    i248      e119                 1
    i248      e120                 1
    i248      e145                 1
    i248      e146                 1
    i248      e275                 2
    i248      e276                 2
    i248      e731               -18
    i248      e732                -2
    i248      e733                -2
    i248      e734               -18
    i248      e735                18
    i248      e751               -18
    i248      e752                -2
    i248      e753                -2
    i248      e754               -18
    i248      e755                18
    i248      e1531              -18
    i248      e1532               -2
    i248      e1533               -2
    i248      e1534              -18
    i248      e1535               18
    i248      e1551              -18
    i248      e1552               -2
    i248      e1553               -2
    i248      e1554              -18
    i248      e1555               18
    i248      e2862               -1
    i248      e2864               -1
    i248      e2902               -1
    i248      e2904               -1
    i248      e5063               -2
    i248      e5064                2
    i249      e119                 1
    i249      e120                 1
    i249      e145                 1
    i249      e146                 1
    i249      e295                 2
    i249      e296                 2
    i249      e1017              -18
    i249      e1018               -2
    i249      e1019               -2
    i249      e1020              -18
    i249      e1021               18
    i249      e1037              -18
    i249      e1038               -2
    i249      e1039               -2
    i249      e1040              -18
    i249      e1041               18
    i249      e1817              -18
    i249      e1818               -2
    i249      e1819               -2
    i249      e1820              -18
    i249      e1821               18
    i249      e1837              -18
    i249      e1838               -2
    i249      e1839               -2
    i249      e1840              -18
    i249      e1841               18
    i249      e3037               -1
    i249      e3039               -1
    i249      e3077               -1
    i249      e3079               -1
    i249      e5067               -2
    i249      e5068                2
    i250      e119                -4
    i250      e120                -4
    i250      e121                -1
    i250      e122                 1
    i250      e145                -3
    i250      e146                -3
    i250      e147                -1
    i250      e148                 1
    i250      e5151              -10
    i251      e121                 1
    i251      e122                -1
    i251      e147                 1
    i251      e148                -1
    i251      e169                -6
    i251      e170                -6
    i251      e5151               -5
    i252      e121                 1
    i252      e122                 1
    i252      e147                 1
    i252      e148                 1
    i252      e5151              -30
    i253      e123                 1
    i253      e124                 1
    i253      e1131              -18
    i253      e1132               -2
    i253      e1133               -2
    i253      e1134              -18
    i253      e1135               18
    i253      e4633               -1
    i253      e4635               -1
    i253      e4953               -1
    i253      e4955               -1
    i254      e123                -3
    i254      e124                -3
    i254      e125                -1
    i254      e126                 1
    i254      e149                -2
    i254      e150                -2
    i254      e151                -1
    i254      e152                 1
    i254      e5151              -10
    i255      e125                 1
    i255      e126                -1
    i255      e151                 1
    i255      e152                -1
    i255      e173                -6
    i255      e174                -6
    i255      e5151               -5
    i256      e125                 1
    i256      e126                 1
    i256      e151                 1
    i256      e152                 1
    i256      e5151              -30
    i257      e127                 1
    i257      e128                 1
    i257      e1147              -18
    i257      e1148               -2
    i257      e1149               -2
    i257      e1150              -18
    i257      e1151               18
    i257      e4638               -1
    i257      e4640               -1
    i257      e4958               -1
    i257      e4960               -1
    i258      e127                -3
    i258      e128                -3
    i258      e129                -1
    i258      e130                 1
    i258      e153                -2
    i258      e154                -2
    i258      e155                -1
    i258      e156                 1
    i258      e5151              -10
    i259      e129                 1
    i259      e130                -1
    i259      e155                 1
    i259      e156                -1
    i259      e177                -6
    i259      e178                -6
    i259      e5151               -5
    i260      e129                 1
    i260      e130                 1
    i260      e155                 1
    i260      e156                 1
    i260      e5151              -30
    i261      e157                 1
    i261      e158                 1
    i261      e213                 1
    i261      e214                 1
    i261      e363               -18
    i261      e364                -2
    i261      e365                -2
    i261      e366               -18
    i261      e367                18
    i261      e1944               -1
    i261      e1946               -1
    i261      e1967               -1
    i261      e1969               -1
    i261      e4025               -1
    i261      e4027               -1
    i261      e4203               -1
    i261      e4205               -1
    i261      e5037                1
    i261      e5038              -20
    i262      e157                 1
    i262      e158                 1
    i262      e221                 1
    i262      e222                 1
    i262      e439               -18
    i262      e440                -2
    i262      e441                -2
    i262      e442               -18
    i262      e443                18
    i262      e2013               -1
    i262      e2015               -1
    i262      e2036               -1
    i262      e2038               -1
    i262      e4028               -1
    i262      e4030               -1
    i262      e4206               -1
    i262      e4208               -1
    i262      e5041                1
    i262      e5042              -20
    i263      e157                 1
    i263      e158                 1
    i263      e229                 1
    i263      e230                 1
    i263      e515               -18
    i263      e516                -2
    i263      e517                -2
    i263      e518               -18
    i263      e519                18
    i263      e2082               -1
    i263      e2084               -1
    i263      e2105               -1
    i263      e2107               -1
    i263      e4031               -1
    i263      e4033               -1
    i263      e4209               -1
    i263      e4211               -1
    i263      e5045                1
    i263      e5046              -20
    i264      e157                 1
    i264      e158                 1
    i264      e261                 1
    i264      e262                 1
    i264      e269                 1
    i264      e270                 1
    i264      e569               -18
    i264      e570                -2
    i264      e571                -2
    i264      e572               -18
    i264      e573                18
    i264      e633               -18
    i264      e634                -2
    i264      e635                -2
    i264      e636               -18
    i264      e637                18
    i264      e1369              -18
    i264      e1370               -2
    i264      e1371               -2
    i264      e1372              -18
    i264      e1373               18
    i264      e1433              -18
    i264      e1434               -2
    i264      e1435               -2
    i264      e1436              -18
    i264      e1437               18
    i264      e2624               -1
    i264      e2626               -1
    i264      e2650               -1
    i264      e2652               -1
    i264      e2946               -1
    i264      e2948               -1
    i264      e2958               -1
    i264      e2960               -1
    i264      e4034               -1
    i264      e4036               -1
    i264      e4212               -1
    i264      e4214               -1
    i264      e4789               -1
    i264      e4791               -1
    i264      e4809               -1
    i264      e4811               -1
    i264      e5061                2
    i264      e5062              -40
    i265      e157                 1
    i265      e158                 1
    i265      e281                 1
    i265      e282                 1
    i265      e289                 1
    i265      e290                 1
    i265      e855               -18
    i265      e856                -2
    i265      e857                -2
    i265      e858               -18
    i265      e859                18
    i265      e919               -18
    i265      e920                -2
    i265      e921                -2
    i265      e922               -18
    i265      e923                18
    i265      e1655              -18
    i265      e1656               -2
    i265      e1657               -2
    i265      e1658              -18
    i265      e1659               18
    i265      e1719              -18
    i265      e1720               -2
    i265      e1721               -2
    i265      e1722              -18
    i265      e1723               18
    i265      e2780               -1
    i265      e2782               -1
    i265      e2806               -1
    i265      e2808               -1
    i265      e3121               -1
    i265      e3123               -1
    i265      e3133               -1
    i265      e3135               -1
    i265      e4037               -1
    i265      e4039               -1
    i265      e4215               -1
    i265      e4217               -1
    i265      e4469               -1
    i265      e4471               -1
    i265      e4489               -1
    i265      e4491               -1
    i265      e5065                2
    i265      e5066              -40
    i266      e157                -6
    i266      e158                -6
    i266      e159                -1
    i266      e160                 1
    i266      e5151               -5
    i267      e159                 1
    i267      e160                 1
    i267      e5151              -15
    i268      e161                 1
    i268      e162                 1
    i268      e215                 1
    i268      e216                 1
    i268      e374               -18
    i268      e375                -2
    i268      e376                -2
    i268      e377               -18
    i268      e378                18
    i268      e1921               -1
    i268      e1923               -1
    i268      e3847               -1
    i268      e3849               -1
    i268      e5037                1
    i268      e5038              -20
    i269      e161                 1
    i269      e162                 1
    i269      e223                 1
    i269      e224                 1
    i269      e450               -18
    i269      e451                -2
    i269      e452                -2
    i269      e453               -18
    i269      e454                18
    i269      e1990               -1
    i269      e1992               -1
    i269      e3850               -1
    i269      e3852               -1
    i269      e5041                1
    i269      e5042              -20
    i270      e161                 1
    i270      e162                 1
    i270      e231                 1
    i270      e232                 1
    i270      e526               -18
    i270      e527                -2
    i270      e528                -2
    i270      e529               -18
    i270      e530                18
    i270      e2059               -1
    i270      e2061               -1
    i270      e3853               -1
    i270      e3855               -1
    i270      e5045                1
    i270      e5046              -20
    i271      e161                 1
    i271      e162                 1
    i271      e263                 1
    i271      e264                 1
    i271      e271                 1
    i271      e272                 1
    i271      e585               -18
    i271      e586                -2
    i271      e587                -2
    i271      e588               -18
    i271      e589                18
    i271      e649               -18
    i271      e650                -2
    i271      e651                -2
    i271      e652               -18
    i271      e653                18
    i271      e1385              -18
    i271      e1386               -2
    i271      e1387               -2
    i271      e1388              -18
    i271      e1389               18
    i271      e1449              -18
    i271      e1450               -2
    i271      e1451               -2
    i271      e1452              -18
    i271      e1453               18
    i271      e2598               -1
    i271      e2600               -1
    i271      e2949               -1
    i271      e2951               -1
    i271      e2961               -1
    i271      e2963               -1
    i271      e3856               -1
    i271      e3858               -1
    i271      e4794               -1
    i271      e4796               -1
    i271      e4814               -1
    i271      e4816               -1
    i271      e5061                2
    i271      e5062              -40
    i272      e161                 1
    i272      e162                 1
    i272      e283                 1
    i272      e284                 1
    i272      e291                 1
    i272      e292                 1
    i272      e871               -18
    i272      e872                -2
    i272      e873                -2
    i272      e874               -18
    i272      e875                18
    i272      e935               -18
    i272      e936                -2
    i272      e937                -2
    i272      e938               -18
    i272      e939                18
    i272      e1671              -18
    i272      e1672               -2
    i272      e1673               -2
    i272      e1674              -18
    i272      e1675               18
    i272      e1735              -18
    i272      e1736               -2
    i272      e1737               -2
    i272      e1738              -18
    i272      e1739               18
    i272      e2754               -1
    i272      e2756               -1
    i272      e3124               -1
    i272      e3126               -1
    i272      e3136               -1
    i272      e3138               -1
    i272      e3859               -1
    i272      e3861               -1
    i272      e4474               -1
    i272      e4476               -1
    i272      e4494               -1
    i272      e4496               -1
    i272      e5065                2
    i272      e5066              -40
    i273      e161                -6
    i273      e162                -6
    i273      e163                -1
    i273      e164                 1
    i273      e5151               -5
    i274      e163                 1
    i274      e164                 1
    i274      e5151              -15
    i275      e165                 1
    i275      e166                 1
    i275      e213                 1
    i275      e214                 1
    i275      e368               -18
    i275      e369                -2
    i275      e370                -2
    i275      e371               -18
    i275      e372                18
    i275      e1951               -1
    i275      e1953               -1
    i275      e1974               -1
    i275      e1976               -1
    i275      e4042               -1
    i275      e4044               -1
    i275      e4220               -1
    i275      e4222               -1
    i275      e5039                1
    i275      e5040              -20
    i276      e165                 1
    i276      e166                 1
    i276      e221                 1
    i276      e222                 1
    i276      e444               -18
    i276      e445                -2
    i276      e446                -2
    i276      e447               -18
    i276      e448                18
    i276      e2020               -1
    i276      e2022               -1
    i276      e2043               -1
    i276      e2045               -1
    i276      e4045               -1
    i276      e4047               -1
    i276      e4223               -1
    i276      e4225               -1
    i276      e5043                1
    i276      e5044              -20
    i277      e165                 1
    i277      e166                 1
    i277      e229                 1
    i277      e230                 1
    i277      e520               -18
    i277      e521                -2
    i277      e522                -2
    i277      e523               -18
    i277      e524                18
    i277      e2089               -1
    i277      e2091               -1
    i277      e2112               -1
    i277      e2114               -1
    i277      e4048               -1
    i277      e4050               -1
    i277      e4226               -1
    i277      e4228               -1
    i277      e5047                1
    i277      e5048              -20
    i278      e165                 1
    i278      e166                 1
    i278      e261                 1
    i278      e262                 1
    i278      e269                 1
    i278      e270                 1
    i278      e574               -18
    i278      e575                -2
    i278      e576                -2
    i278      e577               -18
    i278      e578                18
    i278      e638               -18
    i278      e639                -2
    i278      e640                -2
    i278      e641               -18
    i278      e642                18
    i278      e1374              -18
    i278      e1375               -2
    i278      e1376               -2
    i278      e1377              -18
    i278      e1378               18
    i278      e1438              -18
    i278      e1439               -2
    i278      e1440               -2
    i278      e1441              -18
    i278      e1442               18
    i278      e2631               -1
    i278      e2633               -1
    i278      e2657               -1
    i278      e2659               -1
    i278      e2977               -1
    i278      e2979               -1
    i278      e2989               -1
    i278      e2991               -1
    i278      e4051               -1
    i278      e4053               -1
    i278      e4229               -1
    i278      e4231               -1
    i278      e4829               -1
    i278      e4831               -1
    i278      e4849               -1
    i278      e4851               -1
    i278      e5063                2
    i278      e5064              -40
    i279      e165                 1
    i279      e166                 1
    i279      e281                 1
    i279      e282                 1
    i279      e289                 1
    i279      e290                 1
    i279      e860               -18
    i279      e861                -2
    i279      e862                -2
    i279      e863               -18
    i279      e864                18
    i279      e924               -18
    i279      e925                -2
    i279      e926                -2
    i279      e927               -18
    i279      e928                18
    i279      e1660              -18
    i279      e1661               -2
    i279      e1662               -2
    i279      e1663              -18
    i279      e1664               18
    i279      e1724              -18
    i279      e1725               -2
    i279      e1726               -2
    i279      e1727              -18
    i279      e1728               18
    i279      e2787               -1
    i279      e2789               -1
    i279      e2813               -1
    i279      e2815               -1
    i279      e3152               -1
    i279      e3154               -1
    i279      e3164               -1
    i279      e3166               -1
    i279      e4054               -1
    i279      e4056               -1
    i279      e4232               -1
    i279      e4234               -1
    i279      e4509               -1
    i279      e4511               -1
    i279      e4529               -1
    i279      e4531               -1
    i279      e5067                2
    i279      e5068              -40
    i280      e165                -6
    i280      e166                -6
    i280      e167                -1
    i280      e168                 1
    i280      e5151               -5
    i281      e167                 1
    i281      e168                 1
    i281      e5151              -15
    i282      e169                 1
    i282      e170                 1
    i282      e215                 1
    i282      e216                 1
    i282      e379               -18
    i282      e380                -2
    i282      e381                -2
    i282      e382               -18
    i282      e383                18
    i282      e1928               -1
    i282      e1930               -1
    i282      e3864               -1
    i282      e3866               -1
    i282      e5039                1
    i282      e5040              -20
    i283      e169                 1
    i283      e170                 1
    i283      e223                 1
    i283      e224                 1
    i283      e455               -18
    i283      e456                -2
    i283      e457                -2
    i283      e458               -18
    i283      e459                18
    i283      e1997               -1
    i283      e1999               -1
    i283      e3867               -1
    i283      e3869               -1
    i283      e5043                1
    i283      e5044              -20
    i284      e169                 1
    i284      e170                 1
    i284      e231                 1
    i284      e232                 1
    i284      e531               -18
    i284      e532                -2
    i284      e533                -2
    i284      e534               -18
    i284      e535                18
    i284      e2066               -1
    i284      e2068               -1
    i284      e3870               -1
    i284      e3872               -1
    i284      e5047                1
    i284      e5048              -20
    i285      e169                 1
    i285      e170                 1
    i285      e263                 1
    i285      e264                 1
    i285      e271                 1
    i285      e272                 1
    i285      e590               -18
    i285      e591                -2
    i285      e592                -2
    i285      e593               -18
    i285      e594                18
    i285      e654               -18
    i285      e655                -2
    i285      e656                -2
    i285      e657               -18
    i285      e658                18
    i285      e1390              -18
    i285      e1391               -2
    i285      e1392               -2
    i285      e1393              -18
    i285      e1394               18
    i285      e1454              -18
    i285      e1455               -2
    i285      e1456               -2
    i285      e1457              -18
    i285      e1458               18
    i285      e2605               -1
    i285      e2607               -1
    i285      e2980               -1
    i285      e2982               -1
    i285      e2992               -1
    i285      e2994               -1
    i285      e3873               -1
    i285      e3875               -1
    i285      e4834               -1
    i285      e4836               -1
    i285      e4854               -1
    i285      e4856               -1
    i285      e5063                2
    i285      e5064              -40
    i286      e169                 1
    i286      e170                 1
    i286      e283                 1
    i286      e284                 1
    i286      e291                 1
    i286      e292                 1
    i286      e876               -18
    i286      e877                -2
    i286      e878                -2
    i286      e879               -18
    i286      e880                18
    i286      e940               -18
    i286      e941                -2
    i286      e942                -2
    i286      e943               -18
    i286      e944                18
    i286      e1676              -18
    i286      e1677               -2
    i286      e1678               -2
    i286      e1679              -18
    i286      e1680               18
    i286      e1740              -18
    i286      e1741               -2
    i286      e1742               -2
    i286      e1743              -18
    i286      e1744               18
    i286      e2761               -1
    i286      e2763               -1
    i286      e3155               -1
    i286      e3157               -1
    i286      e3167               -1
    i286      e3169               -1
    i286      e3876               -1
    i286      e3878               -1
    i286      e4514               -1
    i286      e4516               -1
    i286      e4534               -1
    i286      e4536               -1
    i286      e5067                2
    i286      e5068              -40
    i287      e171                 1
    i287      e172                 1
    i287      e213                 1
    i287      e214                 1
    i287      e4059               -1
    i287      e4061               -1
    i287      e4237               -1
    i287      e4239               -1
    i288      e171                 1
    i288      e172                 1
    i288      e221                 1
    i288      e222                 1
    i288      e4062               -1
    i288      e4064               -1
    i288      e4240               -1
    i288      e4242               -1
    i289      e171                 1
    i289      e172                 1
    i289      e229                 1
    i289      e230                 1
    i289      e4065               -1
    i289      e4067               -1
    i289      e4243               -1
    i289      e4245               -1
    i290      e171                 1
    i290      e172                 1
    i290      e579               -18
    i290      e580                -2
    i290      e581                -2
    i290      e582               -18
    i290      e583                18
    i290      e643               -18
    i290      e644                -2
    i290      e645                -2
    i290      e646               -18
    i290      e647                18
    i290      e1379              -18
    i290      e1380               -2
    i290      e1381               -2
    i290      e1382              -18
    i290      e1383               18
    i290      e1443              -18
    i290      e1444               -2
    i290      e1445               -2
    i290      e1446              -18
    i290      e1447               18
    i290      e2641               -1
    i290      e2643               -1
    i290      e2667               -1
    i290      e2669               -1
    i290      e2915               -1
    i290      e2917               -1
    i290      e2927               -1
    i290      e2929               -1
    i290      e4068               -1
    i290      e4070               -1
    i290      e4246               -1
    i290      e4248               -1
    i290      e4973               -1
    i290      e4975               -1
    i290      e4993               -1
    i290      e4995               -1
    i290      e5103                1
    i290      e5105                1
    i290      e5106                1
    i290      e5135                1
    i290      e5137                1
    i290      e5138                1
    i291      e173                 1
    i291      e174                 1
    i291      e215                 1
    i291      e216                 1
    i291      e3881               -1
    i291      e3883               -1
    i292      e173                 1
    i292      e174                 1
    i292      e223                 1
    i292      e224                 1
    i292      e3884               -1
    i292      e3886               -1
    i293      e173                 1
    i293      e174                 1
    i293      e231                 1
    i293      e232                 1
    i293      e3887               -1
    i293      e3889               -1
    i294      e173                 1
    i294      e174                 1
    i294      e595               -18
    i294      e596                -2
    i294      e597                -2
    i294      e598               -18
    i294      e599                18
    i294      e659               -18
    i294      e660                -2
    i294      e661                -2
    i294      e662               -18
    i294      e663                18
    i294      e1395              -18
    i294      e1396               -2
    i294      e1397               -2
    i294      e1398              -18
    i294      e1399               18
    i294      e1459              -18
    i294      e1460               -2
    i294      e1461               -2
    i294      e1462              -18
    i294      e1463               18
    i294      e2615               -1
    i294      e2617               -1
    i294      e2918               -1
    i294      e2920               -1
    i294      e2930               -1
    i294      e2932               -1
    i294      e3890               -1
    i294      e3892               -1
    i294      e4978               -1
    i294      e4980               -1
    i294      e4998               -1
    i294      e5000               -1
    i294      e5111                1
    i294      e5113                1
    i294      e5114                1
    i294      e5143                1
    i294      e5145                1
    i294      e5146                1
    i295      e175                 1
    i295      e176                 1
    i295      e213                 1
    i295      e214                 1
    i295      e4076               -1
    i295      e4078               -1
    i295      e4254               -1
    i295      e4256               -1
    i296      e175                 1
    i296      e176                 1
    i296      e221                 1
    i296      e222                 1
    i296      e4079               -1
    i296      e4081               -1
    i296      e4257               -1
    i296      e4259               -1
    i297      e175                 1
    i297      e176                 1
    i297      e229                 1
    i297      e230                 1
    i297      e4082               -1
    i297      e4084               -1
    i297      e4260               -1
    i297      e4262               -1
    i298      e177                 1
    i298      e178                 1
    i298      e215                 1
    i298      e216                 1
    i298      e3898               -1
    i298      e3900               -1
    i299      e177                 1
    i299      e178                 1
    i299      e223                 1
    i299      e224                 1
    i299      e3901               -1
    i299      e3903               -1
    i300      e177                 1
    i300      e178                 1
    i300      e231                 1
    i300      e232                 1
    i300      e3904               -1
    i300      e3906               -1
    i301      e179                 1
    i301      e180                 1
    i301      e211                 1
    i301      e212                 1
    i301      e325               -18
    i301      e326                -2
    i301      e327                -2
    i301      e328               -18
    i301      e329                18
    i301      e1918               -1
    i301      e1920               -1
    i301      e1941               -1
    i301      e1943               -1
    i301      e1964               -1
    i301      e1966               -1
    i301      e2325               -1
    i301      e2327               -1
    i301      e2341               -1
    i301      e2343               -1
    i301      e3915               -1
    i301      e3917               -1
    i301      e4093               -1
    i301      e4095               -1
    i301      e4271               -1
    i301      e4273               -1
    i301      e4373               -1
    i301      e4375               -1
    i301      e4693               -1
    i301      e4695               -1
    i301      e5037                1
    i301      e5038              -20
    i301      e5039               -1
    i301      e5040                1
    i302      e179                 1
    i302      e180                 1
    i302      e227                 1
    i302      e228                 1
    i302      e477               -18
    i302      e478                -2
    i302      e479                -2
    i302      e480               -18
    i302      e481                18
    i302      e2056               -1
    i302      e2058               -1
    i302      e2079               -1
    i302      e2081               -1
    i302      e2102               -1
    i302      e2104               -1
    i302      e2389               -1
    i302      e2391               -1
    i302      e2405               -1
    i302      e2407               -1
    i302      e3921               -1
    i302      e3923               -1
    i302      e4099               -1
    i302      e4101               -1
    i302      e4277               -1
    i302      e4279               -1
    i302      e4376               -1
    i302      e4378               -1
    i302      e4696               -1
    i302      e4698               -1
    i302      e5045                1
    i302      e5046              -20
    i302      e5047               -1
    i302      e5048                1
    i303      e179                 1
    i303      e180                 1
    i303      e295                 1
    i303      e296                 1
    i303      e1042              -18
    i303      e1043               -2
    i303      e1044               -2
    i303      e1045              -18
    i303      e1046               18
    i303      e1842              -18
    i303      e1843               -2
    i303      e1844               -2
    i303      e1845              -18
    i303      e1846               18
    i303      e2673               -1
    i303      e2675               -1
    i303      e2699               -1
    i303      e2701               -1
    i303      e2725               -1
    i303      e2727               -1
    i303      e2751               -1
    i303      e2753               -1
    i303      e2777               -1
    i303      e2779               -1
    i303      e2803               -1
    i303      e2805               -1
    i303      e3139               -1
    i303      e3141               -1
    i303      e3393               -1
    i303      e3395               -1
    i303      e3571               -1
    i303      e3573               -1
    i303      e3749               -1
    i303      e3751               -1
    i303      e3927               -1
    i303      e3929               -1
    i303      e4105               -1
    i303      e4107               -1
    i303      e4283               -1
    i303      e4285               -1
    i303      e4379               -1
    i303      e4381               -1
    i303      e5065                1
    i303      e5066              -20
    i303      e5067               -1
    i303      e5068                1
    i304      e179                 1
    i304      e180                 1
    i304      e251                 1
    i304      e252                 1
    i304      e1277              -18
    i304      e1278               -2
    i304      e1279               -2
    i304      e1280              -18
    i304      e1281               18
    i304      e2263               -1
    i304      e2265               -1
    i304      e2286               -1
    i304      e2288               -1
    i304      e2309               -1
    i304      e2311               -1
    i304      e2485               -1
    i304      e2487               -1
    i304      e2501               -1
    i304      e2503               -1
    i304      e3387               -1
    i304      e3389               -1
    i304      e3565               -1
    i304      e3567               -1
    i304      e3743               -1
    i304      e3745               -1
    i304      e4382               -1
    i304      e4384               -1
    i304      e4699               -1
    i304      e4701               -1
    i304      e5057                1
    i304      e5058              -20
    i304      e5059               -1
    i304      e5060                1
    i305      e179                 1
    i305      e180                 1
    i305      e275                 1
    i305      e276                 1
    i305      e756               -18
    i305      e757                -2
    i305      e758                -2
    i305      e759               -18
    i305      e760                18
    i305      e1556              -18
    i305      e1557               -2
    i305      e1558               -2
    i305      e1559              -18
    i305      e1560               18
    i305      e2517               -1
    i305      e2519               -1
    i305      e2543               -1
    i305      e2545               -1
    i305      e2569               -1
    i305      e2571               -1
    i305      e2595               -1
    i305      e2597               -1
    i305      e2621               -1
    i305      e2623               -1
    i305      e2647               -1
    i305      e2649               -1
    i305      e2964               -1
    i305      e2966               -1
    i305      e3390               -1
    i305      e3392               -1
    i305      e3568               -1
    i305      e3570               -1
    i305      e3746               -1
    i305      e3748               -1
    i305      e3924               -1
    i305      e3926               -1
    i305      e4102               -1
    i305      e4104               -1
    i305      e4280               -1
    i305      e4282               -1
    i305      e4702               -1
    i305      e4704               -1
    i305      e5061                1
    i305      e5062              -20
    i305      e5063               -1
    i305      e5064                1
    i306      e179                 1
    i306      e180                 1
    i306      e235                 1
    i306      e236                 1
    i306      e1125              -18
    i306      e1126               -2
    i306      e1127               -2
    i306      e1128              -18
    i306      e1129               18
    i306      e2125               -1
    i306      e2127               -1
    i306      e2148               -1
    i306      e2150               -1
    i306      e2171               -1
    i306      e2173               -1
    i306      e2421               -1
    i306      e2423               -1
    i306      e2437               -1
    i306      e2439               -1
    i306      e3381               -1
    i306      e3383               -1
    i306      e3559               -1
    i306      e3561               -1
    i306      e3737               -1
    i306      e3739               -1
    i306      e4385               -1
    i306      e4387               -1
    i306      e4705               -1
    i306      e4707               -1
    i306      e5049                1
    i306      e5050              -20
    i306      e5051               -1
    i306      e5052                1
    i307      e179                 1
    i307      e180                 1
    i307      e219                 1
    i307      e220                 1
    i307      e401               -18
    i307      e402                -2
    i307      e403                -2
    i307      e404               -18
    i307      e405                18
    i307      e1987               -1
    i307      e1989               -1
    i307      e2010               -1
    i307      e2012               -1
    i307      e2033               -1
    i307      e2035               -1
    i307      e2357               -1
    i307      e2359               -1
    i307      e2373               -1
    i307      e2375               -1
    i307      e3918               -1
    i307      e3920               -1
    i307      e4096               -1
    i307      e4098               -1
    i307      e4274               -1
    i307      e4276               -1
    i307      e4388               -1
    i307      e4390               -1
    i307      e4708               -1
    i307      e4710               -1
    i307      e5041                1
    i307      e5042              -20
    i307      e5043               -1
    i307      e5044                1
    i308      e179                 1
    i308      e180                 1
    i308      e243                 1
    i308      e244                 1
    i308      e1201              -18
    i308      e1202               -2
    i308      e1203               -2
    i308      e1204              -18
    i308      e1205               18
    i308      e2194               -1
    i308      e2196               -1
    i308      e2217               -1
    i308      e2219               -1
    i308      e2240               -1
    i308      e2242               -1
    i308      e2453               -1
    i308      e2455               -1
    i308      e2469               -1
    i308      e2471               -1
    i308      e3384               -1
    i308      e3386               -1
    i308      e3562               -1
    i308      e3564               -1
    i308      e3740               -1
    i308      e3742               -1
    i308      e4391               -1
    i308      e4393               -1
    i308      e4711               -1
    i308      e4713               -1
    i308      e5053                1
    i308      e5054              -20
    i308      e5055               -1
    i308      e5056                1
    i309      e179                -9
    i309      e180                -9
    i309      e181                -1
    i309      e182                 1
    i309      e5151               -5
    i310      e181                 1
    i310      e182                -1
    i310      e191                -9
    i310      e192                -9
    i310      e5151               -5
    i311      e181                 1
    i311      e182                 1
    i311      e5151              -15
    i312      e183                -8
    i312      e184                -8
    i312      e185                -1
    i312      e186                 1
    i312      e5151               -5
    i313      e185                 1
    i313      e186                -1
    i313      e201                -2
    i313      e202                -2
    i313      e5151               -5
    i314      e185                 1
    i314      e186                 1
    i314      e5151              -15
    i315      e187                -8
    i315      e188                -8
    i315      e189                -1
    i315      e190                 1
    i315      e5151               -5
    i316      e189                 1
    i316      e190                -1
    i316      e205                -2
    i316      e206                -2
    i316      e5151               -5
    i317      e189                 1
    i317      e190                 1
    i317      e5151              -15
    i318      e191                 1
    i318      e192                 1
    i318      e209                 1
    i318      e210                 1
    i318      e314               -18
    i318      e315                -2
    i318      e316                -2
    i318      e317               -18
    i318      e318                18
    i318      e1925               -1
    i318      e1927               -1
    i318      e1948               -1
    i318      e1950               -1
    i318      e1971               -1
    i318      e1973               -1
    i318      e2332               -1
    i318      e2334               -1
    i318      e2348               -1
    i318      e2350               -1
    i318      e3932               -1
    i318      e3934               -1
    i318      e4110               -1
    i318      e4112               -1
    i318      e4288               -1
    i318      e4290               -1
    i318      e4416               -1
    i318      e4418               -1
    i318      e4736               -1
    i318      e4738               -1
    i318      e5037               -1
    i318      e5038                1
    i318      e5039                1
    i318      e5040              -20
    i319      e191                 1
    i319      e192                 1
    i319      e225                 1
    i319      e226                 1
    i319      e466               -18
    i319      e467                -2
    i319      e468                -2
    i319      e469               -18
    i319      e470                18
    i319      e2063               -1
    i319      e2065               -1
    i319      e2086               -1
    i319      e2088               -1
    i319      e2109               -1
    i319      e2111               -1
    i319      e2396               -1
    i319      e2398               -1
    i319      e2412               -1
    i319      e2414               -1
    i319      e3938               -1
    i319      e3940               -1
    i319      e4116               -1
    i319      e4118               -1
    i319      e4294               -1
    i319      e4296               -1
    i319      e4419               -1
    i319      e4421               -1
    i319      e4739               -1
    i319      e4741               -1
    i319      e5045               -1
    i319      e5046                1
    i319      e5047                1
    i319      e5048              -20
    i320      e191                 1
    i320      e192                 1
    i320      e293                 1
    i320      e294                 1
    i320      e991               -18
    i320      e992                -2
    i320      e993                -2
    i320      e994               -18
    i320      e995                18
    i320      e1791              -18
    i320      e1792               -2
    i320      e1793               -2
    i320      e1794              -18
    i320      e1795               18
    i320      e2680               -1
    i320      e2682               -1
    i320      e2706               -1
    i320      e2708               -1
    i320      e2732               -1
    i320      e2734               -1
    i320      e2758               -1
    i320      e2760               -1
    i320      e2784               -1
    i320      e2786               -1
    i320      e2810               -1
    i320      e2812               -1
    i320      e3170               -1
    i320      e3172               -1
    i320      e3410               -1
    i320      e3412               -1
    i320      e3588               -1
    i320      e3590               -1
    i320      e3766               -1
    i320      e3768               -1
    i320      e3944               -1
    i320      e3946               -1
    i320      e4122               -1
    i320      e4124               -1
    i320      e4300               -1
    i320      e4302               -1
    i320      e4422               -1
    i320      e4424               -1
    i320      e5065               -1
    i320      e5066                1
    i320      e5067                1
    i320      e5068              -20
    i321      e191                 1
    i321      e192                 1
    i321      e249                 1
    i321      e250                 1
    i321      e1266              -18
    i321      e1267               -2
    i321      e1268               -2
    i321      e1269              -18
    i321      e1270               18
    i321      e2270               -1
    i321      e2272               -1
    i321      e2293               -1
    i321      e2295               -1
    i321      e2316               -1
    i321      e2318               -1
    i321      e2492               -1
    i321      e2494               -1
    i321      e2508               -1
    i321      e2510               -1
    i321      e3404               -1
    i321      e3406               -1
    i321      e3582               -1
    i321      e3584               -1
    i321      e3760               -1
    i321      e3762               -1
    i321      e4425               -1
    i321      e4427               -1
    i321      e4742               -1
    i321      e4744               -1
    i321      e5057               -1
    i321      e5058                1
    i321      e5059                1
    i321      e5060              -20
    i322      e191                 1
    i322      e192                 1
    i322      e273                 1
    i322      e274                 1
    i322      e705               -18
    i322      e706                -2
    i322      e707                -2
    i322      e708               -18
    i322      e709                18
    i322      e1505              -18
    i322      e1506               -2
    i322      e1507               -2
    i322      e1508              -18
    i322      e1509               18
    i322      e2524               -1
    i322      e2526               -1
    i322      e2550               -1
    i322      e2552               -1
    i322      e2576               -1
    i322      e2578               -1
    i322      e2602               -1
    i322      e2604               -1
    i322      e2628               -1
    i322      e2630               -1
    i322      e2654               -1
    i322      e2656               -1
    i322      e2995               -1
    i322      e2997               -1
    i322      e3407               -1
    i322      e3409               -1
    i322      e3585               -1
    i322      e3587               -1
    i322      e3763               -1
    i322      e3765               -1
    i322      e3941               -1
    i322      e3943               -1
    i322      e4119               -1
    i322      e4121               -1
    i322      e4297               -1
    i322      e4299               -1
    i322      e4745               -1
    i322      e4747               -1
    i322      e5061               -1
    i322      e5062                1
    i322      e5063                1
    i322      e5064              -20
    i323      e191                 1
    i323      e192                 1
    i323      e233                 1
    i323      e234                 1
    i323      e1114              -18
    i323      e1115               -2
    i323      e1116               -2
    i323      e1117              -18
    i323      e1118               18
    i323      e2132               -1
    i323      e2134               -1
    i323      e2155               -1
    i323      e2157               -1
    i323      e2178               -1
    i323      e2180               -1
    i323      e2428               -1
    i323      e2430               -1
    i323      e2444               -1
    i323      e2446               -1
    i323      e3398               -1
    i323      e3400               -1
    i323      e3576               -1
    i323      e3578               -1
    i323      e3754               -1
    i323      e3756               -1
    i323      e4428               -1
    i323      e4430               -1
    i323      e4748               -1
    i323      e4750               -1
    i323      e5049               -1
    i323      e5050                1
    i323      e5051                1
    i323      e5052              -20
    i324      e191                 1
    i324      e192                 1
    i324      e217                 1
    i324      e218                 1
    i324      e390               -18
    i324      e391                -2
    i324      e392                -2
    i324      e393               -18
    i324      e394                18
    i324      e1994               -1
    i324      e1996               -1
    i324      e2017               -1
    i324      e2019               -1
    i324      e2040               -1
    i324      e2042               -1
    i324      e2364               -1
    i324      e2366               -1
    i324      e2380               -1
    i324      e2382               -1
    i324      e3935               -1
    i324      e3937               -1
    i324      e4113               -1
    i324      e4115               -1
    i324      e4291               -1
    i324      e4293               -1
    i324      e4431               -1
    i324      e4433               -1
    i324      e4751               -1
    i324      e4753               -1
    i324      e5041               -1
    i324      e5042                1
    i324      e5043                1
    i324      e5044              -20
    i325      e191                 1
    i325      e192                 1
    i325      e241                 1
    i325      e242                 1
    i325      e1190              -18
    i325      e1191               -2
    i325      e1192               -2
    i325      e1193              -18
    i325      e1194               18
    i325      e2201               -1
    i325      e2203               -1
    i325      e2224               -1
    i325      e2226               -1
    i325      e2247               -1
    i325      e2249               -1
    i325      e2460               -1
    i325      e2462               -1
    i325      e2476               -1
    i325      e2478               -1
    i325      e3401               -1
    i325      e3403               -1
    i325      e3579               -1
    i325      e3581               -1
    i325      e3757               -1
    i325      e3759               -1
    i325      e4434               -1
    i325      e4436               -1
    i325      e4754               -1
    i325      e4756               -1
    i325      e5053               -1
    i325      e5054                1
    i325      e5055                1
    i325      e5056              -20
    i326      e193                -8
    i326      e194                -8
    i326      e195                -1
    i326      e196                 1
    i326      e5151               -5
    i327      e195                 1
    i327      e196                -1
    i327      e203                -2
    i327      e204                -2
    i327      e5151               -5
    i328      e195                 1
    i328      e196                 1
    i328      e5151              -15
    i329      e197                -8
    i329      e198                -8
    i329      e199                -1
    i329      e200                 1
    i329      e5151               -5
    i330      e199                 1
    i330      e200                -1
    i330      e207                -2
    i330      e208                -2
    i330      e5151               -5
    i331      e199                 1
    i331      e200                 1
    i331      e5151              -15
    i332      e298                 1
    i332      e5151              -15
    i333      e300                 1
    i333      e5151              -15
    i334      e302                 1
    i334      e5151              -15
    i335      e303                 1
    i335      e5151              -15
    i336      e305                 1
    i336      e5151              -15
    i337      e306                 1
    i337      e5151              -15
    i338      e307                 1
    i338      e5151              -15
    i339      e308                 1
    i339      e5151              -15
    i340      e319                 1
    i340      e327                -1
    i340      e328                -1
    i340      e329                -1
    i340      e338                -1
    i340      e339                -1
    i340      e340                -1
    i340      e354                -1
    i340      e355                -1
    i340      e356                -1
    i340      e365                -1
    i340      e366                -1
    i340      e367                -1
    i340      e376                -1
    i340      e377                -1
    i340      e378                -1
    i341      e311                -1
    i341      e312                -1
    i341      e313                -1
    i341      e322                -1
    i341      e323                -1
    i341      e324                -1
    i341      e333                -1
    i341      e334                -1
    i341      e335                -1
    i341      e349                -1
    i341      e350                -1
    i341      e351                -1
    i341      e5013                1
    i342      e309                 1
    i342      e310                 1
    i342      e311                 1
    i342      e312                 1
    i342      e313                 1
    i342      e319                -1
    i343      e316                -1
    i343      e317                -1
    i343      e318                -1
    i343      e330                 1
    i343      e343                -1
    i343      e344                -1
    i343      e345                -1
    i343      e359                -1
    i343      e360                -1
    i343      e361                -1
    i343      e370                -1
    i343      e371                -1
    i343      e372                -1
    i343      e381                -1
    i343      e382                -1
    i343      e383                -1
    i344      e314                 1
    i344      e315                 1
    i344      e316                 1
    i344      e317                 1
    i344      e318                 1
    i344      e319                -1
    i345      e320                 1
    i345      e321                 1
    i345      e322                 1
    i345      e323                 1
    i345      e324                 1
    i345      e330                -1
    i346      e325                 1
    i346      e326                 1
    i346      e327                 1
    i346      e328                 1
    i346      e329                 1
    i346      e330                -1
    i347      e331                 1
    i347      e332                 1
    i347      e333                 1
    i347      e334                 1
    i347      e335                 1
    i347      e346                -1
    i348      e336                 1
    i348      e337                 1
    i348      e338                 1
    i348      e339                 1
    i348      e340                 1
    i348      e346                -1
    i349      e341                 1
    i349      e342                 1
    i349      e343                 1
    i349      e344                 1
    i349      e345                 1
    i349      e346                -1
    i350      e347                 1
    i350      e348                 1
    i350      e349                 1
    i350      e350                 1
    i350      e351                 1
    i350      e362                -1
    i351      e352                 1
    i351      e353                 1
    i351      e354                 1
    i351      e355                 1
    i351      e356                 1
    i351      e362                -1
    i352      e357                 1
    i352      e358                 1
    i352      e359                 1
    i352      e360                 1
    i352      e361                 1
    i352      e362                -1
    i353      e373                 1
    i354      e363                 1
    i354      e364                 1
    i354      e365                 1
    i354      e366                 1
    i354      e367                 1
    i354      e373                -1
    i355      e368                 1
    i355      e369                 1
    i355      e370                 1
    i355      e371                 1
    i355      e372                 1
    i355      e373                -1
    i356      e384                 1
    i357      e374                 1
    i357      e375                 1
    i357      e376                 1
    i357      e377                 1
    i357      e378                 1
    i357      e384                -1
    i358      e379                 1
    i358      e380                 1
    i358      e381                 1
    i358      e382                 1
    i358      e383                 1
    i358      e384                -1
    i359      e395                 1
    i359      e403                -1
    i359      e404                -1
    i359      e405                -1
    i359      e414                -1
    i359      e415                -1
    i359      e416                -1
    i359      e430                -1
    i359      e431                -1
    i359      e432                -1
    i359      e441                -1
    i359      e442                -1
    i359      e443                -1
    i359      e452                -1
    i359      e453                -1
    i359      e454                -1
    i360      e387                -1
    i360      e388                -1
    i360      e389                -1
    i360      e398                -1
    i360      e399                -1
    i360      e400                -1
    i360      e409                -1
    i360      e410                -1
    i360      e411                -1
    i360      e425                -1
    i360      e426                -1
    i360      e427                -1
    i360      e5014                1
    i361      e385                 1
    i361      e386                 1
    i361      e387                 1
    i361      e388                 1
    i361      e389                 1
    i361      e395                -1
    i362      e392                -1
    i362      e393                -1
    i362      e394                -1
    i362      e406                 1
    i362      e419                -1
    i362      e420                -1
    i362      e421                -1
    i362      e435                -1
    i362      e436                -1
    i362      e437                -1
    i362      e446                -1
    i362      e447                -1
    i362      e448                -1
    i362      e457                -1
    i362      e458                -1
    i362      e459                -1
    i363      e390                 1
    i363      e391                 1
    i363      e392                 1
    i363      e393                 1
    i363      e394                 1
    i363      e395                -1
    i364      e396                 1
    i364      e397                 1
    i364      e398                 1
    i364      e399                 1
    i364      e400                 1
    i364      e406                -1
    i365      e401                 1
    i365      e402                 1
    i365      e403                 1
    i365      e404                 1
    i365      e405                 1
    i365      e406                -1
    i366      e407                 1
    i366      e408                 1
    i366      e409                 1
    i366      e410                 1
    i366      e411                 1
    i366      e422                -1
    i367      e412                 1
    i367      e413                 1
    i367      e414                 1
    i367      e415                 1
    i367      e416                 1
    i367      e422                -1
    i368      e417                 1
    i368      e418                 1
    i368      e419                 1
    i368      e420                 1
    i368      e421                 1
    i368      e422                -1
    i369      e423                 1
    i369      e424                 1
    i369      e425                 1
    i369      e426                 1
    i369      e427                 1
    i369      e438                -1
    i370      e428                 1
    i370      e429                 1
    i370      e430                 1
    i370      e431                 1
    i370      e432                 1
    i370      e438                -1
    i371      e433                 1
    i371      e434                 1
    i371      e435                 1
    i371      e436                 1
    i371      e437                 1
    i371      e438                -1
    i372      e449                 1
    i373      e439                 1
    i373      e440                 1
    i373      e441                 1
    i373      e442                 1
    i373      e443                 1
    i373      e449                -1
    i374      e444                 1
    i374      e445                 1
    i374      e446                 1
    i374      e447                 1
    i374      e448                 1
    i374      e449                -1
    i375      e460                 1
    i376      e450                 1
    i376      e451                 1
    i376      e452                 1
    i376      e453                 1
    i376      e454                 1
    i376      e460                -1
    i377      e455                 1
    i377      e456                 1
    i377      e457                 1
    i377      e458                 1
    i377      e459                 1
    i377      e460                -1
    i378      e471                 1
    i378      e479                -1
    i378      e480                -1
    i378      e481                -1
    i378      e490                -1
    i378      e491                -1
    i378      e492                -1
    i378      e506                -1
    i378      e507                -1
    i378      e508                -1
    i378      e517                -1
    i378      e518                -1
    i378      e519                -1
    i378      e528                -1
    i378      e529                -1
    i378      e530                -1
    i379      e463                -1
    i379      e464                -1
    i379      e465                -1
    i379      e474                -1
    i379      e475                -1
    i379      e476                -1
    i379      e485                -1
    i379      e486                -1
    i379      e487                -1
    i379      e501                -1
    i379      e502                -1
    i379      e503                -1
    i379      e5015                1
    i380      e461                 1
    i380      e462                 1
    i380      e463                 1
    i380      e464                 1
    i380      e465                 1
    i380      e471                -1
    i381      e468                -1
    i381      e469                -1
    i381      e470                -1
    i381      e482                 1
    i381      e495                -1
    i381      e496                -1
    i381      e497                -1
    i381      e511                -1
    i381      e512                -1
    i381      e513                -1
    i381      e522                -1
    i381      e523                -1
    i381      e524                -1
    i381      e533                -1
    i381      e534                -1
    i381      e535                -1
    i382      e466                 1
    i382      e467                 1
    i382      e468                 1
    i382      e469                 1
    i382      e470                 1
    i382      e471                -1
    i383      e472                 1
    i383      e473                 1
    i383      e474                 1
    i383      e475                 1
    i383      e476                 1
    i383      e482                -1
    i384      e477                 1
    i384      e478                 1
    i384      e479                 1
    i384      e480                 1
    i384      e481                 1
    i384      e482                -1
    i385      e483                 1
    i385      e484                 1
    i385      e485                 1
    i385      e486                 1
    i385      e487                 1
    i385      e498                -1
    i386      e488                 1
    i386      e489                 1
    i386      e490                 1
    i386      e491                 1
    i386      e492                 1
    i386      e498                -1
    i387      e493                 1
    i387      e494                 1
    i387      e495                 1
    i387      e496                 1
    i387      e497                 1
    i387      e498                -1
    i388      e499                 1
    i388      e500                 1
    i388      e501                 1
    i388      e502                 1
    i388      e503                 1
    i388      e514                -1
    i389      e504                 1
    i389      e505                 1
    i389      e506                 1
    i389      e507                 1
    i389      e508                 1
    i389      e514                -1
    i390      e509                 1
    i390      e510                 1
    i390      e511                 1
    i390      e512                 1
    i390      e513                 1
    i390      e514                -1
    i391      e525                 1
    i392      e515                 1
    i392      e516                 1
    i392      e517                 1
    i392      e518                 1
    i392      e519                 1
    i392      e525                -1
    i393      e520                 1
    i393      e521                 1
    i393      e522                 1
    i393      e523                 1
    i393      e524                 1
    i393      e525                -1
    i394      e536                 1
    i395      e526                 1
    i395      e527                 1
    i395      e528                 1
    i395      e529                 1
    i395      e530                 1
    i395      e536                -1
    i396      e531                 1
    i396      e532                 1
    i396      e533                 1
    i396      e534                 1
    i396      e535                 1
    i396      e536                -1
    i397      e552                 1
    i397      e616                 1
    i397      e667                -1
    i397      e668                -1
    i397      e669                -1
    i397      e687                -1
    i397      e688                -1
    i397      e689                -1
    i397      e718                -1
    i397      e719                -1
    i397      e720                -1
    i397      e738                -1
    i397      e739                -1
    i397      e740                -1
    i397      e769                -1
    i397      e770                -1
    i397      e771                -1
    i397      e789                -1
    i397      e790                -1
    i397      e791                -1
    i397      e1352                1
    i397      e1416                1
    i397      e1467               -1
    i397      e1468               -1
    i397      e1469               -1
    i397      e1487               -1
    i397      e1488               -1
    i397      e1489               -1
    i397      e1518               -1
    i397      e1519               -1
    i397      e1520               -1
    i397      e1538               -1
    i397      e1539               -1
    i397      e1540               -1
    i397      e1569               -1
    i397      e1570               -1
    i397      e1571               -1
    i397      e1589               -1
    i397      e1590               -1
    i397      e1591               -1
    i398      e539                -1
    i398      e540                -1
    i398      e541                -1
    i398      e555                -1
    i398      e556                -1
    i398      e557                -1
    i398      e571                -1
    i398      e572                -1
    i398      e573                -1
    i398      e587                -1
    i398      e588                -1
    i398      e589                -1
    i398      e603                -1
    i398      e604                -1
    i398      e605                -1
    i398      e619                -1
    i398      e620                -1
    i398      e621                -1
    i398      e635                -1
    i398      e636                -1
    i398      e637                -1
    i398      e651                -1
    i398      e652                -1
    i398      e653                -1
    i398      e715                 1
    i398      e758                -1
    i398      e759                -1
    i398      e760                -1
    i398      e809                -1
    i398      e810                -1
    i398      e811                -1
    i398      e1339               -1
    i398      e1340               -1
    i398      e1341               -1
    i398      e1355               -1
    i398      e1356               -1
    i398      e1357               -1
    i398      e1371               -1
    i398      e1372               -1
    i398      e1373               -1
    i398      e1387               -1
    i398      e1388               -1
    i398      e1389               -1
    i398      e1403               -1
    i398      e1404               -1
    i398      e1405               -1
    i398      e1419               -1
    i398      e1420               -1
    i398      e1421               -1
    i398      e1435               -1
    i398      e1436               -1
    i398      e1437               -1
    i398      e1451               -1
    i398      e1452               -1
    i398      e1453               -1
    i398      e1515                1
    i398      e1558               -1
    i398      e1559               -1
    i398      e1560               -1
    i398      e1609               -1
    i398      e1610               -1
    i398      e1611               -1
    i399      e537                 1
    i399      e538                 1
    i399      e539                 1
    i399      e540                 1
    i399      e541                 1
    i399      e552                -1
    i400      e544                -1
    i400      e545                -1
    i400      e546                -1
    i400      e560                -1
    i400      e561                -1
    i400      e562                -1
    i400      e576                -1
    i400      e577                -1
    i400      e578                -1
    i400      e592                -1
    i400      e593                -1
    i400      e594                -1
    i400      e608                -1
    i400      e609                -1
    i400      e610                -1
    i400      e624                -1
    i400      e625                -1
    i400      e626                -1
    i400      e640                -1
    i400      e641                -1
    i400      e642                -1
    i400      e656                -1
    i400      e657                -1
    i400      e658                -1
    i400      e707                -1
    i400      e708                -1
    i400      e709                -1
    i400      e766                 1
    i400      e814                -1
    i400      e815                -1
    i400      e816                -1
    i400      e1344               -1
    i400      e1345               -1
    i400      e1346               -1
    i400      e1360               -1
    i400      e1361               -1
    i400      e1362               -1
    i400      e1376               -1
    i400      e1377               -1
    i400      e1378               -1
    i400      e1392               -1
    i400      e1393               -1
    i400      e1394               -1
    i400      e1408               -1
    i400      e1409               -1
    i400      e1410               -1
    i400      e1424               -1
    i400      e1425               -1
    i400      e1426               -1
    i400      e1440               -1
    i400      e1441               -1
    i400      e1442               -1
    i400      e1456               -1
    i400      e1457               -1
    i400      e1458               -1
    i400      e1507               -1
    i400      e1508               -1
    i400      e1509               -1
    i400      e1566                1
    i400      e1614               -1
    i400      e1615               -1
    i400      e1616               -1
    i401      e542                 1
    i401      e543                 1
    i401      e544                 1
    i401      e545                 1
    i401      e546                 1
    i401      e552                -1
    i402      e549                -1
    i402      e550                -1
    i402      e551                -1
    i402      e565                -1
    i402      e566                -1
    i402      e567                -1
    i402      e581                -1
    i402      e582                -1
    i402      e583                -1
    i402      e597                -1
    i402      e598                -1
    i402      e599                -1
    i402      e613                -1
    i402      e614                -1
    i402      e615                -1
    i402      e629                -1
    i402      e630                -1
    i402      e631                -1
    i402      e645                -1
    i402      e646                -1
    i402      e647                -1
    i402      e661                -1
    i402      e662                -1
    i402      e663                -1
    i402      e712                -1
    i402      e713                -1
    i402      e714                -1
    i402      e763                -1
    i402      e764                -1
    i402      e765                -1
    i402      e819                -1
    i402      e820                -1
    i402      e821                -1
    i402      e1349               -1
    i402      e1350               -1
    i402      e1351               -1
    i402      e1365               -1
    i402      e1366               -1
    i402      e1367               -1
    i402      e1381               -1
    i402      e1382               -1
    i402      e1383               -1
    i402      e1397               -1
    i402      e1398               -1
    i402      e1399               -1
    i402      e1413               -1
    i402      e1414               -1
    i402      e1415               -1
    i402      e1429               -1
    i402      e1430               -1
    i402      e1431               -1
    i402      e1445               -1
    i402      e1446               -1
    i402      e1447               -1
    i402      e1461               -1
    i402      e1462               -1
    i402      e1463               -1
    i402      e1512               -1
    i402      e1513               -1
    i402      e1514               -1
    i402      e1563               -1
    i402      e1564               -1
    i402      e1565               -1
    i402      e1619               -1
    i402      e1620               -1
    i402      e1621               -1
    i402      e5069                1
    i403      e547                 1
    i403      e548                 1
    i403      e549                 1
    i403      e550                 1
    i403      e551                 1
    i403      e552                -1
    i404      e568                 1
    i404      e632                 1
    i404      e672                -1
    i404      e673                -1
    i404      e674                -1
    i404      e692                -1
    i404      e693                -1
    i404      e694                -1
    i404      e723                -1
    i404      e724                -1
    i404      e725                -1
    i404      e743                -1
    i404      e744                -1
    i404      e745                -1
    i404      e774                -1
    i404      e775                -1
    i404      e776                -1
    i404      e794                -1
    i404      e795                -1
    i404      e796                -1
    i404      e1368                1
    i404      e1432                1
    i404      e1472               -1
    i404      e1473               -1
    i404      e1474               -1
    i404      e1492               -1
    i404      e1493               -1
    i404      e1494               -1
    i404      e1523               -1
    i404      e1524               -1
    i404      e1525               -1
    i404      e1543               -1
    i404      e1544               -1
    i404      e1545               -1
    i404      e1574               -1
    i404      e1575               -1
    i404      e1576               -1
    i404      e1594               -1
    i404      e1595               -1
    i404      e1596               -1
    i405      e553                 1
    i405      e554                 1
    i405      e555                 1
    i405      e556                 1
    i405      e557                 1
    i405      e568                -1
    i406      e558                 1
    i406      e559                 1
    i406      e560                 1
    i406      e561                 1
    i406      e562                 1
    i406      e568                -1
    i407      e563                 1
    i407      e564                 1
    i407      e565                 1
    i407      e566                 1
    i407      e567                 1
    i407      e568                -1
    i408      e584                 1
    i408      e648                 1
    i408      e677                -1
    i408      e678                -1
    i408      e679                -1
    i408      e697                -1
    i408      e698                -1
    i408      e699                -1
    i408      e728                -1
    i408      e729                -1
    i408      e730                -1
    i408      e748                -1
    i408      e749                -1
    i408      e750                -1
    i408      e779                -1
    i408      e780                -1
    i408      e781                -1
    i408      e799                -1
    i408      e800                -1
    i408      e801                -1
    i408      e1384                1
    i408      e1448                1
    i408      e1477               -1
    i408      e1478               -1
    i408      e1479               -1
    i408      e1497               -1
    i408      e1498               -1
    i408      e1499               -1
    i408      e1528               -1
    i408      e1529               -1
    i408      e1530               -1
    i408      e1548               -1
    i408      e1549               -1
    i408      e1550               -1
    i408      e1579               -1
    i408      e1580               -1
    i408      e1581               -1
    i408      e1599               -1
    i408      e1600               -1
    i408      e1601               -1
    i409      e569                 1
    i409      e570                 1
    i409      e571                 1
    i409      e572                 1
    i409      e573                 1
    i409      e584                -1
    i410      e574                 1
    i410      e575                 1
    i410      e576                 1
    i410      e577                 1
    i410      e578                 1
    i410      e584                -1
    i411      e579                 1
    i411      e580                 1
    i411      e581                 1
    i411      e582                 1
    i411      e583                 1
    i411      e584                -1
    i412      e600                 1
    i412      e664                 1
    i412      e682                -1
    i412      e683                -1
    i412      e684                -1
    i412      e702                -1
    i412      e703                -1
    i412      e704                -1
    i412      e733                -1
    i412      e734                -1
    i412      e735                -1
    i412      e753                -1
    i412      e754                -1
    i412      e755                -1
    i412      e784                -1
    i412      e785                -1
    i412      e786                -1
    i412      e804                -1
    i412      e805                -1
    i412      e806                -1
    i412      e1400                1
    i412      e1464                1
    i412      e1482               -1
    i412      e1483               -1
    i412      e1484               -1
    i412      e1502               -1
    i412      e1503               -1
    i412      e1504               -1
    i412      e1533               -1
    i412      e1534               -1
    i412      e1535               -1
    i412      e1553               -1
    i412      e1554               -1
    i412      e1555               -1
    i412      e1584               -1
    i412      e1585               -1
    i412      e1586               -1
    i412      e1604               -1
    i412      e1605               -1
    i412      e1606               -1
    i413      e585                 1
    i413      e586                 1
    i413      e587                 1
    i413      e588                 1
    i413      e589                 1
    i413      e600                -1
    i414      e590                 1
    i414      e591                 1
    i414      e592                 1
    i414      e593                 1
    i414      e594                 1
    i414      e600                -1
    i415      e595                 1
    i415      e596                 1
    i415      e597                 1
    i415      e598                 1
    i415      e599                 1
    i415      e600                -1
    i416      e601                 1
    i416      e602                 1
    i416      e603                 1
    i416      e604                 1
    i416      e605                 1
    i416      e616                -1
    i417      e606                 1
    i417      e607                 1
    i417      e608                 1
    i417      e609                 1
    i417      e610                 1
    i417      e616                -1
    i418      e611                 1
    i418      e612                 1
    i418      e613                 1
    i418      e614                 1
    i418      e615                 1
    i418      e616                -1
    i419      e617                 1
    i419      e618                 1
    i419      e619                 1
    i419      e620                 1
    i419      e621                 1
    i419      e632                -1
    i420      e622                 1
    i420      e623                 1
    i420      e624                 1
    i420      e625                 1
    i420      e626                 1
    i420      e632                -1
    i421      e627                 1
    i421      e628                 1
    i421      e629                 1
    i421      e630                 1
    i421      e631                 1
    i421      e632                -1
    i422      e633                 1
    i422      e634                 1
    i422      e635                 1
    i422      e636                 1
    i422      e637                 1
    i422      e648                -1
    i423      e638                 1
    i423      e639                 1
    i423      e640                 1
    i423      e641                 1
    i423      e642                 1
    i423      e648                -1
    i424      e643                 1
    i424      e644                 1
    i424      e645                 1
    i424      e646                 1
    i424      e647                 1
    i424      e648                -1
    i425      e649                 1
    i425      e650                 1
    i425      e651                 1
    i425      e652                 1
    i425      e653                 1
    i425      e664                -1
    i426      e654                 1
    i426      e655                 1
    i426      e656                 1
    i426      e657                 1
    i426      e658                 1
    i426      e664                -1
    i427      e659                 1
    i427      e660                 1
    i427      e661                 1
    i427      e662                 1
    i427      e663                 1
    i427      e664                -1
    i428      e665                 1
    i428      e666                 1
    i428      e667                 1
    i428      e668                 1
    i428      e669                 1
    i428      e715                -1
    i429      e670                 1
    i429      e671                 1
    i429      e672                 1
    i429      e673                 1
    i429      e674                 1
    i429      e715                -1
    i430      e675                 1
    i430      e676                 1
    i430      e677                 1
    i430      e678                 1
    i430      e679                 1
    i430      e715                -1
    i431      e680                 1
    i431      e681                 1
    i431      e682                 1
    i431      e683                 1
    i431      e684                 1
    i431      e715                -1
    i432      e685                 1
    i432      e686                 1
    i432      e687                 1
    i432      e688                 1
    i432      e689                 1
    i432      e715                -1
    i433      e690                 1
    i433      e691                 1
    i433      e692                 1
    i433      e693                 1
    i433      e694                 1
    i433      e715                -1
    i434      e695                 1
    i434      e696                 1
    i434      e697                 1
    i434      e698                 1
    i434      e699                 1
    i434      e715                -1
    i435      e700                 1
    i435      e701                 1
    i435      e702                 1
    i435      e703                 1
    i435      e704                 1
    i435      e715                -1
    i436      e705                 1
    i436      e706                 1
    i436      e707                 1
    i436      e708                 1
    i436      e709                 1
    i436      e715                -1
    i437      e710                 1
    i437      e711                 1
    i437      e712                 1
    i437      e713                 1
    i437      e714                 1
    i437      e715                -1
    i438      e716                 1
    i438      e717                 1
    i438      e718                 1
    i438      e719                 1
    i438      e720                 1
    i438      e766                -1
    i439      e721                 1
    i439      e722                 1
    i439      e723                 1
    i439      e724                 1
    i439      e725                 1
    i439      e766                -1
    i440      e726                 1
    i440      e727                 1
    i440      e728                 1
    i440      e729                 1
    i440      e730                 1
    i440      e766                -1
    i441      e731                 1
    i441      e732                 1
    i441      e733                 1
    i441      e734                 1
    i441      e735                 1
    i441      e766                -1
    i442      e736                 1
    i442      e737                 1
    i442      e738                 1
    i442      e739                 1
    i442      e740                 1
    i442      e766                -1
    i443      e741                 1
    i443      e742                 1
    i443      e743                 1
    i443      e744                 1
    i443      e745                 1
    i443      e766                -1
    i444      e746                 1
    i444      e747                 1
    i444      e748                 1
    i444      e749                 1
    i444      e750                 1
    i444      e766                -1
    i445      e751                 1
    i445      e752                 1
    i445      e753                 1
    i445      e754                 1
    i445      e755                 1
    i445      e766                -1
    i446      e756                 1
    i446      e757                 1
    i446      e758                 1
    i446      e759                 1
    i446      e760                 1
    i446      e766                -1
    i447      e761                 1
    i447      e762                 1
    i447      e763                 1
    i447      e764                 1
    i447      e765                 1
    i447      e766                -1
    i448      e767                 1
    i448      e768                 1
    i448      e769                 1
    i448      e770                 1
    i448      e771                 1
    i448      e822                -1
    i449      e772                 1
    i449      e773                 1
    i449      e774                 1
    i449      e775                 1
    i449      e776                 1
    i449      e822                -1
    i450      e777                 1
    i450      e778                 1
    i450      e779                 1
    i450      e780                 1
    i450      e781                 1
    i450      e822                -1
    i451      e782                 1
    i451      e783                 1
    i451      e784                 1
    i451      e785                 1
    i451      e786                 1
    i451      e822                -1
    i452      e787                 1
    i452      e788                 1
    i452      e789                 1
    i452      e790                 1
    i452      e791                 1
    i452      e822                -1
    i453      e792                 1
    i453      e793                 1
    i453      e794                 1
    i453      e795                 1
    i453      e796                 1
    i453      e822                -1
    i454      e797                 1
    i454      e798                 1
    i454      e799                 1
    i454      e800                 1
    i454      e801                 1
    i454      e822                -1
    i455      e802                 1
    i455      e803                 1
    i455      e804                 1
    i455      e805                 1
    i455      e806                 1
    i455      e822                -1
    i456      e807                 1
    i456      e808                 1
    i456      e809                 1
    i456      e810                 1
    i456      e811                 1
    i456      e822                -1
    i457      e812                 1
    i457      e813                 1
    i457      e814                 1
    i457      e815                 1
    i457      e816                 1
    i457      e822                -1
    i458      e817               -18
    i458      e818                -2
    i458      e819                -2
    i458      e820               -18
    i458      e821                18
    i458      e1617              -18
    i458      e1618               -2
    i458      e1619               -2
    i458      e1620              -18
    i458      e1621               18
    i459      e817                 1
    i459      e818                 1
    i459      e819                 1
    i459      e820                 1
    i459      e821                 1
    i459      e822                -1
    i460      e838                 1
    i460      e902                 1
    i460      e953                -1
    i460      e954                -1
    i460      e955                -1
    i460      e973                -1
    i460      e974                -1
    i460      e975                -1
    i460      e1004               -1
    i460      e1005               -1
    i460      e1006               -1
    i460      e1024               -1
    i460      e1025               -1
    i460      e1026               -1
    i460      e1055               -1
    i460      e1056               -1
    i460      e1057               -1
    i460      e1075               -1
    i460      e1076               -1
    i460      e1077               -1
    i460      e1638                1
    i460      e1702                1
    i460      e1753               -1
    i460      e1754               -1
    i460      e1755               -1
    i460      e1773               -1
    i460      e1774               -1
    i460      e1775               -1
    i460      e1804               -1
    i460      e1805               -1
    i460      e1806               -1
    i460      e1824               -1
    i460      e1825               -1
    i460      e1826               -1
    i460      e1855               -1
    i460      e1856               -1
    i460      e1857               -1
    i460      e1875               -1
    i460      e1876               -1
    i460      e1877               -1
    i461      e825                -1
    i461      e826                -1
    i461      e827                -1
    i461      e841                -1
    i461      e842                -1
    i461      e843                -1
    i461      e857                -1
    i461      e858                -1
    i461      e859                -1
    i461      e873                -1
    i461      e874                -1
    i461      e875                -1
    i461      e889                -1
    i461      e890                -1
    i461      e891                -1
    i461      e905                -1
    i461      e906                -1
    i461      e907                -1
    i461      e921                -1
    i461      e922                -1
    i461      e923                -1
    i461      e937                -1
    i461      e938                -1
    i461      e939                -1
    i461      e1001                1
    i461      e1044               -1
    i461      e1045               -1
    i461      e1046               -1
    i461      e1095               -1
    i461      e1096               -1
    i461      e1097               -1
    i461      e1625               -1
    i461      e1626               -1
    i461      e1627               -1
    i461      e1641               -1
    i461      e1642               -1
    i461      e1643               -1
    i461      e1657               -1
    i461      e1658               -1
    i461      e1659               -1
    i461      e1673               -1
    i461      e1674               -1
    i461      e1675               -1
    i461      e1689               -1
    i461      e1690               -1
    i461      e1691               -1
    i461      e1705               -1
    i461      e1706               -1
    i461      e1707               -1
    i461      e1721               -1
    i461      e1722               -1
    i461      e1723               -1
    i461      e1737               -1
    i461      e1738               -1
    i461      e1739               -1
    i461      e1801                1
    i461      e1844               -1
    i461      e1845               -1
    i461      e1846               -1
    i461      e1895               -1
    i461      e1896               -1
    i461      e1897               -1
    i462      e823                 1
    i462      e824                 1
    i462      e825                 1
    i462      e826                 1
    i462      e827                 1
    i462      e838                -1
    i463      e830                -1
    i463      e831                -1
    i463      e832                -1
    i463      e846                -1
    i463      e847                -1
    i463      e848                -1
    i463      e862                -1
    i463      e863                -1
    i463      e864                -1
    i463      e878                -1
    i463      e879                -1
    i463      e880                -1
    i463      e894                -1
    i463      e895                -1
    i463      e896                -1
    i463      e910                -1
    i463      e911                -1
    i463      e912                -1
    i463      e926                -1
    i463      e927                -1
    i463      e928                -1
    i463      e942                -1
    i463      e943                -1
    i463      e944                -1
    i463      e993                -1
    i463      e994                -1
    i463      e995                -1
    i463      e1052                1
    i463      e1100               -1
    i463      e1101               -1
    i463      e1102               -1
    i463      e1630               -1
    i463      e1631               -1
    i463      e1632               -1
    i463      e1646               -1
    i463      e1647               -1
    i463      e1648               -1
    i463      e1662               -1
    i463      e1663               -1
    i463      e1664               -1
    i463      e1678               -1
    i463      e1679               -1
    i463      e1680               -1
    i463      e1694               -1
    i463      e1695               -1
    i463      e1696               -1
    i463      e1710               -1
    i463      e1711               -1
    i463      e1712               -1
    i463      e1726               -1
    i463      e1727               -1
    i463      e1728               -1
    i463      e1742               -1
    i463      e1743               -1
    i463      e1744               -1
    i463      e1793               -1
    i463      e1794               -1
    i463      e1795               -1
    i463      e1852                1
    i463      e1900               -1
    i463      e1901               -1
    i463      e1902               -1
    i464      e828                 1
    i464      e829                 1
    i464      e830                 1
    i464      e831                 1
    i464      e832                 1
    i464      e838                -1
    i465      e835                -1
    i465      e836                -1
    i465      e837                -1
    i465      e851                -1
    i465      e852                -1
    i465      e853                -1
    i465      e867                -1
    i465      e868                -1
    i465      e869                -1
    i465      e883                -1
    i465      e884                -1
    i465      e885                -1
    i465      e899                -1
    i465      e900                -1
    i465      e901                -1
    i465      e915                -1
    i465      e916                -1
    i465      e917                -1
    i465      e931                -1
    i465      e932                -1
    i465      e933                -1
    i465      e947                -1
    i465      e948                -1
    i465      e949                -1
    i465      e998                -1
    i465      e999                -1
    i465      e1000               -1
    i465      e1049               -1
    i465      e1050               -1
    i465      e1051               -1
    i465      e1105               -1
    i465      e1106               -1
    i465      e1107               -1
    i465      e1635               -1
    i465      e1636               -1
    i465      e1637               -1
    i465      e1651               -1
    i465      e1652               -1
    i465      e1653               -1
    i465      e1667               -1
    i465      e1668               -1
    i465      e1669               -1
    i465      e1683               -1
    i465      e1684               -1
    i465      e1685               -1
    i465      e1699               -1
    i465      e1700               -1
    i465      e1701               -1
    i465      e1715               -1
    i465      e1716               -1
    i465      e1717               -1
    i465      e1731               -1
    i465      e1732               -1
    i465      e1733               -1
    i465      e1747               -1
    i465      e1748               -1
    i465      e1749               -1
    i465      e1798               -1
    i465      e1799               -1
    i465      e1800               -1
    i465      e1849               -1
    i465      e1850               -1
    i465      e1851               -1
    i465      e1905               -1
    i465      e1906               -1
    i465      e1907               -1
    i465      e5070                1
    i466      e833                 1
    i466      e834                 1
    i466      e835                 1
    i466      e836                 1
    i466      e837                 1
    i466      e838                -1
    i467      e854                 1
    i467      e918                 1
    i467      e958                -1
    i467      e959                -1
    i467      e960                -1
    i467      e978                -1
    i467      e979                -1
    i467      e980                -1
    i467      e1009               -1
    i467      e1010               -1
    i467      e1011               -1
    i467      e1029               -1
    i467      e1030               -1
    i467      e1031               -1
    i467      e1060               -1
    i467      e1061               -1
    i467      e1062               -1
    i467      e1080               -1
    i467      e1081               -1
    i467      e1082               -1
    i467      e1654                1
    i467      e1718                1
    i467      e1758               -1
    i467      e1759               -1
    i467      e1760               -1
    i467      e1778               -1
    i467      e1779               -1
    i467      e1780               -1
    i467      e1809               -1
    i467      e1810               -1
    i467      e1811               -1
    i467      e1829               -1
    i467      e1830               -1
    i467      e1831               -1
    i467      e1860               -1
    i467      e1861               -1
    i467      e1862               -1
    i467      e1880               -1
    i467      e1881               -1
    i467      e1882               -1
    i468      e839                 1
    i468      e840                 1
    i468      e841                 1
    i468      e842                 1
    i468      e843                 1
    i468      e854                -1
    i469      e844                 1
    i469      e845                 1
    i469      e846                 1
    i469      e847                 1
    i469      e848                 1
    i469      e854                -1
    i470      e849                 1
    i470      e850                 1
    i470      e851                 1
    i470      e852                 1
    i470      e853                 1
    i470      e854                -1
    i471      e870                 1
    i471      e934                 1
    i471      e963                -1
    i471      e964                -1
    i471      e965                -1
    i471      e983                -1
    i471      e984                -1
    i471      e985                -1
    i471      e1014               -1
    i471      e1015               -1
    i471      e1016               -1
    i471      e1034               -1
    i471      e1035               -1
    i471      e1036               -1
    i471      e1065               -1
    i471      e1066               -1
    i471      e1067               -1
    i471      e1085               -1
    i471      e1086               -1
    i471      e1087               -1
    i471      e1670                1
    i471      e1734                1
    i471      e1763               -1
    i471      e1764               -1
    i471      e1765               -1
    i471      e1783               -1
    i471      e1784               -1
    i471      e1785               -1
    i471      e1814               -1
    i471      e1815               -1
    i471      e1816               -1
    i471      e1834               -1
    i471      e1835               -1
    i471      e1836               -1
    i471      e1865               -1
    i471      e1866               -1
    i471      e1867               -1
    i471      e1885               -1
    i471      e1886               -1
    i471      e1887               -1
    i472      e855                 1
    i472      e856                 1
    i472      e857                 1
    i472      e858                 1
    i472      e859                 1
    i472      e870                -1
    i473      e860                 1
    i473      e861                 1
    i473      e862                 1
    i473      e863                 1
    i473      e864                 1
    i473      e870                -1
    i474      e865                 1
    i474      e866                 1
    i474      e867                 1
    i474      e868                 1
    i474      e869                 1
    i474      e870                -1
    i475      e886                 1
    i475      e950                 1
    i475      e968                -1
    i475      e969                -1
    i475      e970                -1
    i475      e988                -1
    i475      e989                -1
    i475      e990                -1
    i475      e1019               -1
    i475      e1020               -1
    i475      e1021               -1
    i475      e1039               -1
    i475      e1040               -1
    i475      e1041               -1
    i475      e1070               -1
    i475      e1071               -1
    i475      e1072               -1
    i475      e1090               -1
    i475      e1091               -1
    i475      e1092               -1
    i475      e1686                1
    i475      e1750                1
    i475      e1768               -1
    i475      e1769               -1
    i475      e1770               -1
    i475      e1788               -1
    i475      e1789               -1
    i475      e1790               -1
    i475      e1819               -1
    i475      e1820               -1
    i475      e1821               -1
    i475      e1839               -1
    i475      e1840               -1
    i475      e1841               -1
    i475      e1870               -1
    i475      e1871               -1
    i475      e1872               -1
    i475      e1890               -1
    i475      e1891               -1
    i475      e1892               -1
    i476      e871                 1
    i476      e872                 1
    i476      e873                 1
    i476      e874                 1
    i476      e875                 1
    i476      e886                -1
    i477      e876                 1
    i477      e877                 1
    i477      e878                 1
    i477      e879                 1
    i477      e880                 1
    i477      e886                -1
    i478      e881                 1
    i478      e882                 1
    i478      e883                 1
    i478      e884                 1
    i478      e885                 1
    i478      e886                -1
    i479      e887                 1
    i479      e888                 1
    i479      e889                 1
    i479      e890                 1
    i479      e891                 1
    i479      e902                -1
    i480      e892                 1
    i480      e893                 1
    i480      e894                 1
    i480      e895                 1
    i480      e896                 1
    i480      e902                -1
    i481      e897                 1
    i481      e898                 1
    i481      e899                 1
    i481      e900                 1
    i481      e901                 1
    i481      e902                -1
    i482      e903                 1
    i482      e904                 1
    i482      e905                 1
    i482      e906                 1
    i482      e907                 1
    i482      e918                -1
    i483      e908                 1
    i483      e909                 1
    i483      e910                 1
    i483      e911                 1
    i483      e912                 1
    i483      e918                -1
    i484      e913                 1
    i484      e914                 1
    i484      e915                 1
    i484      e916                 1
    i484      e917                 1
    i484      e918                -1
    i485      e919                 1
    i485      e920                 1
    i485      e921                 1
    i485      e922                 1
    i485      e923                 1
    i485      e934                -1
    i486      e924                 1
    i486      e925                 1
    i486      e926                 1
    i486      e927                 1
    i486      e928                 1
    i486      e934                -1
    i487      e929                 1
    i487      e930                 1
    i487      e931                 1
    i487      e932                 1
    i487      e933                 1
    i487      e934                -1
    i488      e935                 1
    i488      e936                 1
    i488      e937                 1
    i488      e938                 1
    i488      e939                 1
    i488      e950                -1
    i489      e940                 1
    i489      e941                 1
    i489      e942                 1
    i489      e943                 1
    i489      e944                 1
    i489      e950                -1
    i490      e945                 1
    i490      e946                 1
    i490      e947                 1
    i490      e948                 1
    i490      e949                 1
    i490      e950                -1
    i491      e951                 1
    i491      e952                 1
    i491      e953                 1
    i491      e954                 1
    i491      e955                 1
    i491      e1001               -1
    i492      e956                 1
    i492      e957                 1
    i492      e958                 1
    i492      e959                 1
    i492      e960                 1
    i492      e1001               -1
    i493      e961                 1
    i493      e962                 1
    i493      e963                 1
    i493      e964                 1
    i493      e965                 1
    i493      e1001               -1
    i494      e966                 1
    i494      e967                 1
    i494      e968                 1
    i494      e969                 1
    i494      e970                 1
    i494      e1001               -1
    i495      e971                 1
    i495      e972                 1
    i495      e973                 1
    i495      e974                 1
    i495      e975                 1
    i495      e1001               -1
    i496      e976                 1
    i496      e977                 1
    i496      e978                 1
    i496      e979                 1
    i496      e980                 1
    i496      e1001               -1
    i497      e981                 1
    i497      e982                 1
    i497      e983                 1
    i497      e984                 1
    i497      e985                 1
    i497      e1001               -1
    i498      e986                 1
    i498      e987                 1
    i498      e988                 1
    i498      e989                 1
    i498      e990                 1
    i498      e1001               -1
    i499      e991                 1
    i499      e992                 1
    i499      e993                 1
    i499      e994                 1
    i499      e995                 1
    i499      e1001               -1
    i500      e996                 1
    i500      e997                 1
    i500      e998                 1
    i500      e999                 1
    i500      e1000                1
    i500      e1001               -1
    i501      e1002                1
    i501      e1003                1
    i501      e1004                1
    i501      e1005                1
    i501      e1006                1
    i501      e1052               -1
    i502      e1007                1
    i502      e1008                1
    i502      e1009                1
    i502      e1010                1
    i502      e1011                1
    i502      e1052               -1
    i503      e1012                1
    i503      e1013                1
    i503      e1014                1
    i503      e1015                1
    i503      e1016                1
    i503      e1052               -1
    i504      e1017                1
    i504      e1018                1
    i504      e1019                1
    i504      e1020                1
    i504      e1021                1
    i504      e1052               -1
    i505      e1022                1
    i505      e1023                1
    i505      e1024                1
    i505      e1025                1
    i505      e1026                1
    i505      e1052               -1
    i506      e1027                1
    i506      e1028                1
    i506      e1029                1
    i506      e1030                1
    i506      e1031                1
    i506      e1052               -1
    i507      e1032                1
    i507      e1033                1
    i507      e1034                1
    i507      e1035                1
    i507      e1036                1
    i507      e1052               -1
    i508      e1037                1
    i508      e1038                1
    i508      e1039                1
    i508      e1040                1
    i508      e1041                1
    i508      e1052               -1
    i509      e1042                1
    i509      e1043                1
    i509      e1044                1
    i509      e1045                1
    i509      e1046                1
    i509      e1052               -1
    i510      e1047                1
    i510      e1048                1
    i510      e1049                1
    i510      e1050                1
    i510      e1051                1
    i510      e1052               -1
    i511      e1053                1
    i511      e1054                1
    i511      e1055                1
    i511      e1056                1
    i511      e1057                1
    i511      e1108               -1
    i512      e1058                1
    i512      e1059                1
    i512      e1060                1
    i512      e1061                1
    i512      e1062                1
    i512      e1108               -1
    i513      e1063                1
    i513      e1064                1
    i513      e1065                1
    i513      e1066                1
    i513      e1067                1
    i513      e1108               -1
    i514      e1068                1
    i514      e1069                1
    i514      e1070                1
    i514      e1071                1
    i514      e1072                1
    i514      e1108               -1
    i515      e1073                1
    i515      e1074                1
    i515      e1075                1
    i515      e1076                1
    i515      e1077                1
    i515      e1108               -1
    i516      e1078                1
    i516      e1079                1
    i516      e1080                1
    i516      e1081                1
    i516      e1082                1
    i516      e1108               -1
    i517      e1083                1
    i517      e1084                1
    i517      e1085                1
    i517      e1086                1
    i517      e1087                1
    i517      e1108               -1
    i518      e1088                1
    i518      e1089                1
    i518      e1090                1
    i518      e1091                1
    i518      e1092                1
    i518      e1108               -1
    i519      e1093                1
    i519      e1094                1
    i519      e1095                1
    i519      e1096                1
    i519      e1097                1
    i519      e1108               -1
    i520      e1098                1
    i520      e1099                1
    i520      e1100                1
    i520      e1101                1
    i520      e1102                1
    i520      e1108               -1
    i521      e1103              -18
    i521      e1104               -2
    i521      e1105               -2
    i521      e1106              -18
    i521      e1107               18
    i521      e1903              -18
    i521      e1904               -2
    i521      e1905               -2
    i521      e1906              -18
    i521      e1907               18
    i522      e1103                1
    i522      e1104                1
    i522      e1105                1
    i522      e1106                1
    i522      e1107                1
    i522      e1108               -1
    i523      e1119                1
    i523      e1127               -1
    i523      e1128               -1
    i523      e1129               -1
    i523      e1138               -1
    i523      e1139               -1
    i523      e1140               -1
    i523      e1154               -1
    i523      e1155               -1
    i523      e1156               -1
    i523      e1165               -1
    i523      e1166               -1
    i523      e1167               -1
    i523      e1176               -1
    i523      e1177               -1
    i523      e1178               -1
    i524      e1111               -1
    i524      e1112               -1
    i524      e1113               -1
    i524      e1122               -1
    i524      e1123               -1
    i524      e1124               -1
    i524      e1133               -1
    i524      e1134               -1
    i524      e1135               -1
    i524      e1149               -1
    i524      e1150               -1
    i524      e1151               -1
    i524      e5025                1
    i525      e1109                1
    i525      e1110                1
    i525      e1111                1
    i525      e1112                1
    i525      e1113                1
    i525      e1119               -1
    i526      e1116               -1
    i526      e1117               -1
    i526      e1118               -1
    i526      e1130                1
    i526      e1143               -1
    i526      e1144               -1
    i526      e1145               -1
    i526      e1159               -1
    i526      e1160               -1
    i526      e1161               -1
    i526      e1170               -1
    i526      e1171               -1
    i526      e1172               -1
    i526      e1181               -1
    i526      e1182               -1
    i526      e1183               -1
    i527      e1114                1
    i527      e1115                1
    i527      e1116                1
    i527      e1117                1
    i527      e1118                1
    i527      e1119               -1
    i528      e1120                1
    i528      e1121                1
    i528      e1122                1
    i528      e1123                1
    i528      e1124                1
    i528      e1130               -1
    i529      e1125                1
    i529      e1126                1
    i529      e1127                1
    i529      e1128                1
    i529      e1129                1
    i529      e1130               -1
    i530      e1131                1
    i530      e1132                1
    i530      e1133                1
    i530      e1134                1
    i530      e1135                1
    i530      e1146               -1
    i531      e1136                1
    i531      e1137                1
    i531      e1138                1
    i531      e1139                1
    i531      e1140                1
    i531      e1146               -1
    i532      e1141                1
    i532      e1142                1
    i532      e1143                1
    i532      e1144                1
    i532      e1145                1
    i532      e1146               -1
    i533      e1147                1
    i533      e1148                1
    i533      e1149                1
    i533      e1150                1
    i533      e1151                1
    i533      e1162               -1
    i534      e1152                1
    i534      e1153                1
    i534      e1154                1
    i534      e1155                1
    i534      e1156                1
    i534      e1162               -1
    i535      e1157                1
    i535      e1158                1
    i535      e1159                1
    i535      e1160                1
    i535      e1161                1
    i535      e1162               -1
    i536      e1173                1
    i537      e1163                1
    i537      e1164                1
    i537      e1165                1
    i537      e1166                1
    i537      e1167                1
    i537      e1173               -1
    i538      e1168                1
    i538      e1169                1
    i538      e1170                1
    i538      e1171                1
    i538      e1172                1
    i538      e1173               -1
    i539      e1184                1
    i540      e1174                1
    i540      e1175                1
    i540      e1176                1
    i540      e1177                1
    i540      e1178                1
    i540      e1184               -1
    i541      e1179                1
    i541      e1180                1
    i541      e1181                1
    i541      e1182                1
    i541      e1183                1
    i541      e1184               -1
    i542      e1195                1
    i542      e1203               -1
    i542      e1204               -1
    i542      e1205               -1
    i542      e1214               -1
    i542      e1215               -1
    i542      e1216               -1
    i542      e1230               -1
    i542      e1231               -1
    i542      e1232               -1
    i542      e1241               -1
    i542      e1242               -1
    i542      e1243               -1
    i542      e1252               -1
    i542      e1253               -1
    i542      e1254               -1
    i543      e1187               -1
    i543      e1188               -1
    i543      e1189               -1
    i543      e1198               -1
    i543      e1199               -1
    i543      e1200               -1
    i543      e1209               -1
    i543      e1210               -1
    i543      e1211               -1
    i543      e1225               -1
    i543      e1226               -1
    i543      e1227               -1
    i543      e5026                1
    i544      e1185                1
    i544      e1186                1
    i544      e1187                1
    i544      e1188                1
    i544      e1189                1
    i544      e1195               -1
    i545      e1192               -1
    i545      e1193               -1
    i545      e1194               -1
    i545      e1206                1
    i545      e1219               -1
    i545      e1220               -1
    i545      e1221               -1
    i545      e1235               -1
    i545      e1236               -1
    i545      e1237               -1
    i545      e1246               -1
    i545      e1247               -1
    i545      e1248               -1
    i545      e1257               -1
    i545      e1258               -1
    i545      e1259               -1
    i546      e1190                1
    i546      e1191                1
    i546      e1192                1
    i546      e1193                1
    i546      e1194                1
    i546      e1195               -1
    i547      e1196                1
    i547      e1197                1
    i547      e1198                1
    i547      e1199                1
    i547      e1200                1
    i547      e1206               -1
    i548      e1201                1
    i548      e1202                1
    i548      e1203                1
    i548      e1204                1
    i548      e1205                1
    i548      e1206               -1
    i549      e1207                1
    i549      e1208                1
    i549      e1209                1
    i549      e1210                1
    i549      e1211                1
    i549      e1222               -1
    i550      e1212                1
    i550      e1213                1
    i550      e1214                1
    i550      e1215                1
    i550      e1216                1
    i550      e1222               -1
    i551      e1217                1
    i551      e1218                1
    i551      e1219                1
    i551      e1220                1
    i551      e1221                1
    i551      e1222               -1
    i552      e1223                1
    i552      e1224                1
    i552      e1225                1
    i552      e1226                1
    i552      e1227                1
    i552      e1238               -1
    i553      e1228                1
    i553      e1229                1
    i553      e1230                1
    i553      e1231                1
    i553      e1232                1
    i553      e1238               -1
    i554      e1233                1
    i554      e1234                1
    i554      e1235                1
    i554      e1236                1
    i554      e1237                1
    i554      e1238               -1
    i555      e1249                1
    i556      e1239                1
    i556      e1240                1
    i556      e1241                1
    i556      e1242                1
    i556      e1243                1
    i556      e1249               -1
    i557      e1244                1
    i557      e1245                1
    i557      e1246                1
    i557      e1247                1
    i557      e1248                1
    i557      e1249               -1
    i558      e1260                1
    i559      e1250                1
    i559      e1251                1
    i559      e1252                1
    i559      e1253                1
    i559      e1254                1
    i559      e1260               -1
    i560      e1255                1
    i560      e1256                1
    i560      e1257                1
    i560      e1258                1
    i560      e1259                1
    i560      e1260               -1
    i561      e1271                1
    i561      e1279               -1
    i561      e1280               -1
    i561      e1281               -1
    i561      e1290               -1
    i561      e1291               -1
    i561      e1292               -1
    i561      e1306               -1
    i561      e1307               -1
    i561      e1308               -1
    i561      e1317               -1
    i561      e1318               -1
    i561      e1319               -1
    i561      e1328               -1
    i561      e1329               -1
    i561      e1330               -1
    i562      e1263               -1
    i562      e1264               -1
    i562      e1265               -1
    i562      e1274               -1
    i562      e1275               -1
    i562      e1276               -1
    i562      e1285               -1
    i562      e1286               -1
    i562      e1287               -1
    i562      e1301               -1
    i562      e1302               -1
    i562      e1303               -1
    i562      e5027                1
    i563      e1261                1
    i563      e1262                1
    i563      e1263                1
    i563      e1264                1
    i563      e1265                1
    i563      e1271               -1
    i564      e1268               -1
    i564      e1269               -1
    i564      e1270               -1
    i564      e1282                1
    i564      e1295               -1
    i564      e1296               -1
    i564      e1297               -1
    i564      e1311               -1
    i564      e1312               -1
    i564      e1313               -1
    i564      e1322               -1
    i564      e1323               -1
    i564      e1324               -1
    i564      e1333               -1
    i564      e1334               -1
    i564      e1335               -1
    i565      e1266                1
    i565      e1267                1
    i565      e1268                1
    i565      e1269                1
    i565      e1270                1
    i565      e1271               -1
    i566      e1272                1
    i566      e1273                1
    i566      e1274                1
    i566      e1275                1
    i566      e1276                1
    i566      e1282               -1
    i567      e1277                1
    i567      e1278                1
    i567      e1279                1
    i567      e1280                1
    i567      e1281                1
    i567      e1282               -1
    i568      e1283                1
    i568      e1284                1
    i568      e1285                1
    i568      e1286                1
    i568      e1287                1
    i568      e1298               -1
    i569      e1288                1
    i569      e1289                1
    i569      e1290                1
    i569      e1291                1
    i569      e1292                1
    i569      e1298               -1
    i570      e1293                1
    i570      e1294                1
    i570      e1295                1
    i570      e1296                1
    i570      e1297                1
    i570      e1298               -1
    i571      e1299                1
    i571      e1300                1
    i571      e1301                1
    i571      e1302                1
    i571      e1303                1
    i571      e1314               -1
    i572      e1304                1
    i572      e1305                1
    i572      e1306                1
    i572      e1307                1
    i572      e1308                1
    i572      e1314               -1
    i573      e1309                1
    i573      e1310                1
    i573      e1311                1
    i573      e1312                1
    i573      e1313                1
    i573      e1314               -1
    i574      e1325                1
    i575      e1315                1
    i575      e1316                1
    i575      e1317                1
    i575      e1318                1
    i575      e1319                1
    i575      e1325               -1
    i576      e1320                1
    i576      e1321                1
    i576      e1322                1
    i576      e1323                1
    i576      e1324                1
    i576      e1325               -1
    i577      e1336                1
    i578      e1326                1
    i578      e1327                1
    i578      e1328                1
    i578      e1329                1
    i578      e1330                1
    i578      e1336               -1
    i579      e1331                1
    i579      e1332                1
    i579      e1333                1
    i579      e1334                1
    i579      e1335                1
    i579      e1336               -1
    i580      e1337                1
    i580      e1338                1
    i580      e1339                1
    i580      e1340                1
    i580      e1341                1
    i580      e1352               -1
    i581      e1342                1
    i581      e1343                1
    i581      e1344                1
    i581      e1345                1
    i581      e1346                1
    i581      e1352               -1
    i582      e1347                1
    i582      e1348                1
    i582      e1349                1
    i582      e1350                1
    i582      e1351                1
    i582      e1352               -1
    i583      e1353                1
    i583      e1354                1
    i583      e1355                1
    i583      e1356                1
    i583      e1357                1
    i583      e1368               -1
    i584      e1358                1
    i584      e1359                1
    i584      e1360                1
    i584      e1361                1
    i584      e1362                1
    i584      e1368               -1
    i585      e1363                1
    i585      e1364                1
    i585      e1365                1
    i585      e1366                1
    i585      e1367                1
    i585      e1368               -1
    i586      e1369                1
    i586      e1370                1
    i586      e1371                1
    i586      e1372                1
    i586      e1373                1
    i586      e1384               -1
    i587      e1374                1
    i587      e1375                1
    i587      e1376                1
    i587      e1377                1
    i587      e1378                1
    i587      e1384               -1
    i588      e1379                1
    i588      e1380                1
    i588      e1381                1
    i588      e1382                1
    i588      e1383                1
    i588      e1384               -1
    i589      e1385                1
    i589      e1386                1
    i589      e1387                1
    i589      e1388                1
    i589      e1389                1
    i589      e1400               -1
    i590      e1390                1
    i590      e1391                1
    i590      e1392                1
    i590      e1393                1
    i590      e1394                1
    i590      e1400               -1
    i591      e1395                1
    i591      e1396                1
    i591      e1397                1
    i591      e1398                1
    i591      e1399                1
    i591      e1400               -1
    i592      e1401                1
    i592      e1402                1
    i592      e1403                1
    i592      e1404                1
    i592      e1405                1
    i592      e1416               -1
    i593      e1406                1
    i593      e1407                1
    i593      e1408                1
    i593      e1409                1
    i593      e1410                1
    i593      e1416               -1
    i594      e1411                1
    i594      e1412                1
    i594      e1413                1
    i594      e1414                1
    i594      e1415                1
    i594      e1416               -1
    i595      e1417                1
    i595      e1418                1
    i595      e1419                1
    i595      e1420                1
    i595      e1421                1
    i595      e1432               -1
    i596      e1422                1
    i596      e1423                1
    i596      e1424                1
    i596      e1425                1
    i596      e1426                1
    i596      e1432               -1
    i597      e1427                1
    i597      e1428                1
    i597      e1429                1
    i597      e1430                1
    i597      e1431                1
    i597      e1432               -1
    i598      e1433                1
    i598      e1434                1
    i598      e1435                1
    i598      e1436                1
    i598      e1437                1
    i598      e1448               -1
    i599      e1438                1
    i599      e1439                1
    i599      e1440                1
    i599      e1441                1
    i599      e1442                1
    i599      e1448               -1
    i600      e1443                1
    i600      e1444                1
    i600      e1445                1
    i600      e1446                1
    i600      e1447                1
    i600      e1448               -1
    i601      e1449                1
    i601      e1450                1
    i601      e1451                1
    i601      e1452                1
    i601      e1453                1
    i601      e1464               -1
    i602      e1454                1
    i602      e1455                1
    i602      e1456                1
    i602      e1457                1
    i602      e1458                1
    i602      e1464               -1
    i603      e1459                1
    i603      e1460                1
    i603      e1461                1
    i603      e1462                1
    i603      e1463                1
    i603      e1464               -1
    i604      e1465                1
    i604      e1466                1
    i604      e1467                1
    i604      e1468                1
    i604      e1469                1
    i604      e1515               -1
    i605      e1470                1
    i605      e1471                1
    i605      e1472                1
    i605      e1473                1
    i605      e1474                1
    i605      e1515               -1
    i606      e1475                1
    i606      e1476                1
    i606      e1477                1
    i606      e1478                1
    i606      e1479                1
    i606      e1515               -1
    i607      e1480                1
    i607      e1481                1
    i607      e1482                1
    i607      e1483                1
    i607      e1484                1
    i607      e1515               -1
    i608      e1485                1
    i608      e1486                1
    i608      e1487                1
    i608      e1488                1
    i608      e1489                1
    i608      e1515               -1
    i609      e1490                1
    i609      e1491                1
    i609      e1492                1
    i609      e1493                1
    i609      e1494                1
    i609      e1515               -1
    i610      e1495                1
    i610      e1496                1
    i610      e1497                1
    i610      e1498                1
    i610      e1499                1
    i610      e1515               -1
    i611      e1500                1
    i611      e1501                1
    i611      e1502                1
    i611      e1503                1
    i611      e1504                1
    i611      e1515               -1
    i612      e1505                1
    i612      e1506                1
    i612      e1507                1
    i612      e1508                1
    i612      e1509                1
    i612      e1515               -1
    i613      e1510                1
    i613      e1511                1
    i613      e1512                1
    i613      e1513                1
    i613      e1514                1
    i613      e1515               -1
    i614      e1516                1
    i614      e1517                1
    i614      e1518                1
    i614      e1519                1
    i614      e1520                1
    i614      e1566               -1
    i615      e1521                1
    i615      e1522                1
    i615      e1523                1
    i615      e1524                1
    i615      e1525                1
    i615      e1566               -1
    i616      e1526                1
    i616      e1527                1
    i616      e1528                1
    i616      e1529                1
    i616      e1530                1
    i616      e1566               -1
    i617      e1531                1
    i617      e1532                1
    i617      e1533                1
    i617      e1534                1
    i617      e1535                1
    i617      e1566               -1
    i618      e1536                1
    i618      e1537                1
    i618      e1538                1
    i618      e1539                1
    i618      e1540                1
    i618      e1566               -1
    i619      e1541                1
    i619      e1542                1
    i619      e1543                1
    i619      e1544                1
    i619      e1545                1
    i619      e1566               -1
    i620      e1546                1
    i620      e1547                1
    i620      e1548                1
    i620      e1549                1
    i620      e1550                1
    i620      e1566               -1
    i621      e1551                1
    i621      e1552                1
    i621      e1553                1
    i621      e1554                1
    i621      e1555                1
    i621      e1566               -1
    i622      e1556                1
    i622      e1557                1
    i622      e1558                1
    i622      e1559                1
    i622      e1560                1
    i622      e1566               -1
    i623      e1561                1
    i623      e1562                1
    i623      e1563                1
    i623      e1564                1
    i623      e1565                1
    i623      e1566               -1
    i624      e1567                1
    i624      e1568                1
    i624      e1569                1
    i624      e1570                1
    i624      e1571                1
    i624      e1622               -1
    i625      e1572                1
    i625      e1573                1
    i625      e1574                1
    i625      e1575                1
    i625      e1576                1
    i625      e1622               -1
    i626      e1577                1
    i626      e1578                1
    i626      e1579                1
    i626      e1580                1
    i626      e1581                1
    i626      e1622               -1
    i627      e1582                1
    i627      e1583                1
    i627      e1584                1
    i627      e1585                1
    i627      e1586                1
    i627      e1622               -1
    i628      e1587                1
    i628      e1588                1
    i628      e1589                1
    i628      e1590                1
    i628      e1591                1
    i628      e1622               -1
    i629      e1592                1
    i629      e1593                1
    i629      e1594                1
    i629      e1595                1
    i629      e1596                1
    i629      e1622               -1
    i630      e1597                1
    i630      e1598                1
    i630      e1599                1
    i630      e1600                1
    i630      e1601                1
    i630      e1622               -1
    i631      e1602                1
    i631      e1603                1
    i631      e1604                1
    i631      e1605                1
    i631      e1606                1
    i631      e1622               -1
    i632      e1607                1
    i632      e1608                1
    i632      e1609                1
    i632      e1610                1
    i632      e1611                1
    i632      e1622               -1
    i633      e1612                1
    i633      e1613                1
    i633      e1614                1
    i633      e1615                1
    i633      e1616                1
    i633      e1622               -1
    i634      e1617                1
    i634      e1618                1
    i634      e1619                1
    i634      e1620                1
    i634      e1621                1
    i634      e1622               -1
    i635      e1623                1
    i635      e1624                1
    i635      e1625                1
    i635      e1626                1
    i635      e1627                1
    i635      e1638               -1
    i636      e1628                1
    i636      e1629                1
    i636      e1630                1
    i636      e1631                1
    i636      e1632                1
    i636      e1638               -1
    i637      e1633                1
    i637      e1634                1
    i637      e1635                1
    i637      e1636                1
    i637      e1637                1
    i637      e1638               -1
    i638      e1639                1
    i638      e1640                1
    i638      e1641                1
    i638      e1642                1
    i638      e1643                1
    i638      e1654               -1
    i639      e1644                1
    i639      e1645                1
    i639      e1646                1
    i639      e1647                1
    i639      e1648                1
    i639      e1654               -1
    i640      e1649                1
    i640      e1650                1
    i640      e1651                1
    i640      e1652                1
    i640      e1653                1
    i640      e1654               -1
    i641      e1655                1
    i641      e1656                1
    i641      e1657                1
    i641      e1658                1
    i641      e1659                1
    i641      e1670               -1
    i642      e1660                1
    i642      e1661                1
    i642      e1662                1
    i642      e1663                1
    i642      e1664                1
    i642      e1670               -1
    i643      e1665                1
    i643      e1666                1
    i643      e1667                1
    i643      e1668                1
    i643      e1669                1
    i643      e1670               -1
    i644      e1671                1
    i644      e1672                1
    i644      e1673                1
    i644      e1674                1
    i644      e1675                1
    i644      e1686               -1
    i645      e1676                1
    i645      e1677                1
    i645      e1678                1
    i645      e1679                1
    i645      e1680                1
    i645      e1686               -1
    i646      e1681                1
    i646      e1682                1
    i646      e1683                1
    i646      e1684                1
    i646      e1685                1
    i646      e1686               -1
    i647      e1687                1
    i647      e1688                1
    i647      e1689                1
    i647      e1690                1
    i647      e1691                1
    i647      e1702               -1
    i648      e1692                1
    i648      e1693                1
    i648      e1694                1
    i648      e1695                1
    i648      e1696                1
    i648      e1702               -1
    i649      e1697                1
    i649      e1698                1
    i649      e1699                1
    i649      e1700                1
    i649      e1701                1
    i649      e1702               -1
    i650      e1703                1
    i650      e1704                1
    i650      e1705                1
    i650      e1706                1
    i650      e1707                1
    i650      e1718               -1
    i651      e1708                1
    i651      e1709                1
    i651      e1710                1
    i651      e1711                1
    i651      e1712                1
    i651      e1718               -1
    i652      e1713                1
    i652      e1714                1
    i652      e1715                1
    i652      e1716                1
    i652      e1717                1
    i652      e1718               -1
    i653      e1719                1
    i653      e1720                1
    i653      e1721                1
    i653      e1722                1
    i653      e1723                1
    i653      e1734               -1
    i654      e1724                1
    i654      e1725                1
    i654      e1726                1
    i654      e1727                1
    i654      e1728                1
    i654      e1734               -1
    i655      e1729                1
    i655      e1730                1
    i655      e1731                1
    i655      e1732                1
    i655      e1733                1
    i655      e1734               -1
    i656      e1735                1
    i656      e1736                1
    i656      e1737                1
    i656      e1738                1
    i656      e1739                1
    i656      e1750               -1
    i657      e1740                1
    i657      e1741                1
    i657      e1742                1
    i657      e1743                1
    i657      e1744                1
    i657      e1750               -1
    i658      e1745                1
    i658      e1746                1
    i658      e1747                1
    i658      e1748                1
    i658      e1749                1
    i658      e1750               -1
    i659      e1751                1
    i659      e1752                1
    i659      e1753                1
    i659      e1754                1
    i659      e1755                1
    i659      e1801               -1
    i660      e1756                1
    i660      e1757                1
    i660      e1758                1
    i660      e1759                1
    i660      e1760                1
    i660      e1801               -1
    i661      e1761                1
    i661      e1762                1
    i661      e1763                1
    i661      e1764                1
    i661      e1765                1
    i661      e1801               -1
    i662      e1766                1
    i662      e1767                1
    i662      e1768                1
    i662      e1769                1
    i662      e1770                1
    i662      e1801               -1
    i663      e1771                1
    i663      e1772                1
    i663      e1773                1
    i663      e1774                1
    i663      e1775                1
    i663      e1801               -1
    i664      e1776                1
    i664      e1777                1
    i664      e1778                1
    i664      e1779                1
    i664      e1780                1
    i664      e1801               -1
    i665      e1781                1
    i665      e1782                1
    i665      e1783                1
    i665      e1784                1
    i665      e1785                1
    i665      e1801               -1
    i666      e1786                1
    i666      e1787                1
    i666      e1788                1
    i666      e1789                1
    i666      e1790                1
    i666      e1801               -1
    i667      e1791                1
    i667      e1792                1
    i667      e1793                1
    i667      e1794                1
    i667      e1795                1
    i667      e1801               -1
    i668      e1796                1
    i668      e1797                1
    i668      e1798                1
    i668      e1799                1
    i668      e1800                1
    i668      e1801               -1
    i669      e1802                1
    i669      e1803                1
    i669      e1804                1
    i669      e1805                1
    i669      e1806                1
    i669      e1852               -1
    i670      e1807                1
    i670      e1808                1
    i670      e1809                1
    i670      e1810                1
    i670      e1811                1
    i670      e1852               -1
    i671      e1812                1
    i671      e1813                1
    i671      e1814                1
    i671      e1815                1
    i671      e1816                1
    i671      e1852               -1
    i672      e1817                1
    i672      e1818                1
    i672      e1819                1
    i672      e1820                1
    i672      e1821                1
    i672      e1852               -1
    i673      e1822                1
    i673      e1823                1
    i673      e1824                1
    i673      e1825                1
    i673      e1826                1
    i673      e1852               -1
    i674      e1827                1
    i674      e1828                1
    i674      e1829                1
    i674      e1830                1
    i674      e1831                1
    i674      e1852               -1
    i675      e1832                1
    i675      e1833                1
    i675      e1834                1
    i675      e1835                1
    i675      e1836                1
    i675      e1852               -1
    i676      e1837                1
    i676      e1838                1
    i676      e1839                1
    i676      e1840                1
    i676      e1841                1
    i676      e1852               -1
    i677      e1842                1
    i677      e1843                1
    i677      e1844                1
    i677      e1845                1
    i677      e1846                1
    i677      e1852               -1
    i678      e1847                1
    i678      e1848                1
    i678      e1849                1
    i678      e1850                1
    i678      e1851                1
    i678      e1852               -1
    i679      e1853                1
    i679      e1854                1
    i679      e1855                1
    i679      e1856                1
    i679      e1857                1
    i679      e1908               -1
    i680      e1858                1
    i680      e1859                1
    i680      e1860                1
    i680      e1861                1
    i680      e1862                1
    i680      e1908               -1
    i681      e1863                1
    i681      e1864                1
    i681      e1865                1
    i681      e1866                1
    i681      e1867                1
    i681      e1908               -1
    i682      e1868                1
    i682      e1869                1
    i682      e1870                1
    i682      e1871                1
    i682      e1872                1
    i682      e1908               -1
    i683      e1873                1
    i683      e1874                1
    i683      e1875                1
    i683      e1876                1
    i683      e1877                1
    i683      e1908               -1
    i684      e1878                1
    i684      e1879                1
    i684      e1880                1
    i684      e1881                1
    i684      e1882                1
    i684      e1908               -1
    i685      e1883                1
    i685      e1884                1
    i685      e1885                1
    i685      e1886                1
    i685      e1887                1
    i685      e1908               -1
    i686      e1888                1
    i686      e1889                1
    i686      e1890                1
    i686      e1891                1
    i686      e1892                1
    i686      e1908               -1
    i687      e1893                1
    i687      e1894                1
    i687      e1895                1
    i687      e1896                1
    i687      e1897                1
    i687      e1908               -1
    i688      e1898                1
    i688      e1899                1
    i688      e1900                1
    i688      e1901                1
    i688      e1902                1
    i688      e1908               -1
    i689      e1903                1
    i689      e1904                1
    i689      e1905                1
    i689      e1906                1
    i689      e1907                1
    i689      e1908               -1
    i690      e1909                1
    i690      e1917                1
    i690      e5016               -2
    i691      e1910                1
    i691      e1922               -1
    i691      e1923               -1
    i691      e1929               -1
    i691      e1930               -1
    i691      e3848               -1
    i691      e3849               -1
    i691      e3865               -1
    i691      e3866               -1
    i691      e3882               -1
    i691      e3883               -1
    i691      e3899               -1
    i691      e3900               -1
    i691      e5016               -2
    i692      e1912               -1
    i692      e1913               -1
    i692      e1924                1
    i692      e1926               -1
    i692      e1927               -1
    i692      e3933               -1
    i692      e3934               -1
    i692      e3950               -1
    i692      e3951               -1
    i692      e3984               -1
    i692      e3985               -1
    i692      e5016               -1
    i693      e1911                1
    i693      e1912                1
    i693      e1913                1
    i693      e1917               -1
    i694      e1915               -1
    i694      e1916               -1
    i694      e1919               -1
    i694      e1920               -1
    i694      e1931                1
    i694      e3916               -1
    i694      e3917               -1
    i694      e3967               -1
    i694      e3968               -1
    i694      e4001               -1
    i694      e4002               -1
    i694      e5016               -1
    i695      e1914                1
    i695      e1915                1
    i695      e1916                1
    i695      e1917               -1
    i696      e1918                1
    i696      e1919                1
    i696      e1920                1
    i696      e1924               -1
    i697      e1921                1
    i697      e1922                1
    i697      e1923                1
    i697      e1924               -1
    i698      e1925                1
    i698      e1926                1
    i698      e1927                1
    i698      e1931               -1
    i699      e1928                1
    i699      e1929                1
    i699      e1930                1
    i699      e1931               -1
    i700      e1932                1
    i700      e1940                1
    i700      e5017               -2
    i701      e1933                1
    i701      e1945               -1
    i701      e1946               -1
    i701      e1952               -1
    i701      e1953               -1
    i701      e4026               -1
    i701      e4027               -1
    i701      e4043               -1
    i701      e4044               -1
    i701      e4060               -1
    i701      e4061               -1
    i701      e4077               -1
    i701      e4078               -1
    i701      e5017               -3
    i702      e1935               -1
    i702      e1936               -1
    i702      e1947                1
    i702      e1949               -1
    i702      e1950               -1
    i702      e4111               -1
    i702      e4112               -1
    i702      e4128               -1
    i702      e4129               -1
    i702      e4162               -1
    i702      e4163               -1
    i702      e5017               -1
    i703      e1934                1
    i703      e1935                1
    i703      e1936                1
    i703      e1940               -1
    i704      e1938               -1
    i704      e1939               -1
    i704      e1942               -1
    i704      e1943               -1
    i704      e1954                1
    i704      e4094               -1
    i704      e4095               -1
    i704      e4145               -1
    i704      e4146               -1
    i704      e4179               -1
    i704      e4180               -1
    i704      e5017               -1
    i705      e1937                1
    i705      e1938                1
    i705      e1939                1
    i705      e1940               -1
    i706      e1941                1
    i706      e1942                1
    i706      e1943                1
    i706      e1947               -1
    i707      e1944                1
    i707      e1945                1
    i707      e1946                1
    i707      e1947               -1
    i708      e1948                1
    i708      e1949                1
    i708      e1950                1
    i708      e1954               -1
    i709      e1951                1
    i709      e1952                1
    i709      e1953                1
    i709      e1954               -1
    i710      e1955                1
    i710      e1963                1
    i710      e5018               -2
    i711      e1956                1
    i711      e1968               -1
    i711      e1969               -1
    i711      e1975               -1
    i711      e1976               -1
    i711      e4204               -1
    i711      e4205               -1
    i711      e4221               -1
    i711      e4222               -1
    i711      e4238               -1
    i711      e4239               -1
    i711      e4255               -1
    i711      e4256               -1
    i711      e5018               -4
    i712      e1958               -1
    i712      e1959               -1
    i712      e1970                1
    i712      e1972               -1
    i712      e1973               -1
    i712      e4289               -1
    i712      e4290               -1
    i712      e4306               -1
    i712      e4307               -1
    i712      e4340               -1
    i712      e4341               -1
    i712      e5018               -1
    i713      e1957                1
    i713      e1958                1
    i713      e1959                1
    i713      e1963               -1
    i714      e1961               -1
    i714      e1962               -1
    i714      e1965               -1
    i714      e1966               -1
    i714      e1977                1
    i714      e4272               -1
    i714      e4273               -1
    i714      e4323               -1
    i714      e4324               -1
    i714      e4357               -1
    i714      e4358               -1
    i714      e5018               -1
    i715      e1960                1
    i715      e1961                1
    i715      e1962                1
    i715      e1963               -1
    i716      e1964                1
    i716      e1965                1
    i716      e1966                1
    i716      e1970               -1
    i717      e1967                1
    i717      e1968                1
    i717      e1969                1
    i717      e1970               -1
    i718      e1971                1
    i718      e1972                1
    i718      e1973                1
    i718      e1977               -1
    i719      e1974                1
    i719      e1975                1
    i719      e1976                1
    i719      e1977               -1
    i720      e1978                1
    i720      e1986                1
    i720      e5019               -3
    i721      e1979                1
    i721      e1991               -1
    i721      e1992               -1
    i721      e1998               -1
    i721      e1999               -1
    i721      e3851               -1
    i721      e3852               -1
    i721      e3868               -1
    i721      e3869               -1
    i721      e3885               -1
    i721      e3886               -1
    i721      e3902               -1
    i721      e3903               -1
    i721      e5019               -2
    i722      e1981               -1
    i722      e1982               -1
    i722      e1993                1
    i722      e1995               -1
    i722      e1996               -1
    i722      e3936               -1
    i722      e3937               -1
    i722      e3953               -1
    i722      e3954               -1
    i722      e3987               -1
    i722      e3988               -1
    i722      e5019               -1
    i723      e1980                1
    i723      e1981                1
    i723      e1982                1
    i723      e1986               -1
    i724      e1984               -1
    i724      e1985               -1
    i724      e1988               -1
    i724      e1989               -1
    i724      e2000                1
    i724      e3919               -1
    i724      e3920               -1
    i724      e3970               -1
    i724      e3971               -1
    i724      e4004               -1
    i724      e4005               -1
    i724      e5019               -1
    i725      e1983                1
    i725      e1984                1
    i725      e1985                1
    i725      e1986               -1
    i726      e1987                1
    i726      e1988                1
    i726      e1989                1
    i726      e1993               -1
    i727      e1990                1
    i727      e1991                1
    i727      e1992                1
    i727      e1993               -1
    i728      e1994                1
    i728      e1995                1
    i728      e1996                1
    i728      e2000               -1
    i729      e1997                1
    i729      e1998                1
    i729      e1999                1
    i729      e2000               -1
    i730      e2001                1
    i730      e2009                1
    i730      e5020               -3
    i731      e2002                1
    i731      e2014               -1
    i731      e2015               -1
    i731      e2021               -1
    i731      e2022               -1
    i731      e4029               -1
    i731      e4030               -1
    i731      e4046               -1
    i731      e4047               -1
    i731      e4063               -1
    i731      e4064               -1
    i731      e4080               -1
    i731      e4081               -1
    i731      e5020               -3
    i732      e2004               -1
    i732      e2005               -1
    i732      e2016                1
    i732      e2018               -1
    i732      e2019               -1
    i732      e4114               -1
    i732      e4115               -1
    i732      e4131               -1
    i732      e4132               -1
    i732      e4165               -1
    i732      e4166               -1
    i732      e5020               -1
    i733      e2003                1
    i733      e2004                1
    i733      e2005                1
    i733      e2009               -1
    i734      e2007               -1
    i734      e2008               -1
    i734      e2011               -1
    i734      e2012               -1
    i734      e2023                1
    i734      e4097               -1
    i734      e4098               -1
    i734      e4148               -1
    i734      e4149               -1
    i734      e4182               -1
    i734      e4183               -1
    i734      e5020               -1
    i735      e2006                1
    i735      e2007                1
    i735      e2008                1
    i735      e2009               -1
    i736      e2010                1
    i736      e2011                1
    i736      e2012                1
    i736      e2016               -1
    i737      e2013                1
    i737      e2014                1
    i737      e2015                1
    i737      e2016               -1
    i738      e2017                1
    i738      e2018                1
    i738      e2019                1
    i738      e2023               -1
    i739      e2020                1
    i739      e2021                1
    i739      e2022                1
    i739      e2023               -1
    i740      e2024                1
    i740      e2032                1
    i740      e5021               -3
    i741      e2025                1
    i741      e2037               -1
    i741      e2038               -1
    i741      e2044               -1
    i741      e2045               -1
    i741      e4207               -1
    i741      e4208               -1
    i741      e4224               -1
    i741      e4225               -1
    i741      e4241               -1
    i741      e4242               -1
    i741      e4258               -1
    i741      e4259               -1
    i741      e5021               -4
    i742      e2027               -1
    i742      e2028               -1
    i742      e2039                1
    i742      e2041               -1
    i742      e2042               -1
    i742      e4292               -1
    i742      e4293               -1
    i742      e4309               -1
    i742      e4310               -1
    i742      e4343               -1
    i742      e4344               -1
    i742      e5021               -1
    i743      e2026                1
    i743      e2027                1
    i743      e2028                1
    i743      e2032               -1
    i744      e2030               -1
    i744      e2031               -1
    i744      e2034               -1
    i744      e2035               -1
    i744      e2046                1
    i744      e4275               -1
    i744      e4276               -1
    i744      e4326               -1
    i744      e4327               -1
    i744      e4360               -1
    i744      e4361               -1
    i744      e5021               -1
    i745      e2029                1
    i745      e2030                1
    i745      e2031                1
    i745      e2032               -1
    i746      e2033                1
    i746      e2034                1
    i746      e2035                1
    i746      e2039               -1
    i747      e2036                1
    i747      e2037                1
    i747      e2038                1
    i747      e2039               -1
    i748      e2040                1
    i748      e2041                1
    i748      e2042                1
    i748      e2046               -1
    i749      e2043                1
    i749      e2044                1
    i749      e2045                1
    i749      e2046               -1
    i750      e2047                1
    i750      e2055                1
    i750      e5022               -3
    i751      e2048                1
    i751      e2060               -1
    i751      e2061               -1
    i751      e2067               -1
    i751      e2068               -1
    i751      e3854               -1
    i751      e3855               -1
    i751      e3871               -1
    i751      e3872               -1
    i751      e3888               -1
    i751      e3889               -1
    i751      e3905               -1
    i751      e3906               -1
    i751      e5022               -2
    i752      e2050               -1
    i752      e2051               -1
    i752      e2062                1
    i752      e2064               -1
    i752      e2065               -1
    i752      e3939               -1
    i752      e3940               -1
    i752      e3956               -1
    i752      e3957               -1
    i752      e3990               -1
    i752      e3991               -1
    i752      e5022               -1
    i753      e2049                1
    i753      e2050                1
    i753      e2051                1
    i753      e2055               -1
    i754      e2053               -1
    i754      e2054               -1
    i754      e2057               -1
    i754      e2058               -1
    i754      e2069                1
    i754      e3922               -1
    i754      e3923               -1
    i754      e3973               -1
    i754      e3974               -1
    i754      e4007               -1
    i754      e4008               -1
    i754      e5022               -1
    i755      e2052                1
    i755      e2053                1
    i755      e2054                1
    i755      e2055               -1
    i756      e2056                1
    i756      e2057                1
    i756      e2058                1
    i756      e2062               -1
    i757      e2059                1
    i757      e2060                1
    i757      e2061                1
    i757      e2062               -1
    i758      e2063                1
    i758      e2064                1
    i758      e2065                1
    i758      e2069               -1
    i759      e2066                1
    i759      e2067                1
    i759      e2068                1
    i759      e2069               -1
    i760      e2070                1
    i760      e2078                1
    i760      e5023               -3
    i761      e2071                1
    i761      e2083               -1
    i761      e2084               -1
    i761      e2090               -1
    i761      e2091               -1
    i761      e4032               -1
    i761      e4033               -1
    i761      e4049               -1
    i761      e4050               -1
    i761      e4066               -1
    i761      e4067               -1
    i761      e4083               -1
    i761      e4084               -1
    i761      e5023               -3
    i762      e2073               -1
    i762      e2074               -1
    i762      e2085                1
    i762      e2087               -1
    i762      e2088               -1
    i762      e4117               -1
    i762      e4118               -1
    i762      e4134               -1
    i762      e4135               -1
    i762      e4168               -1
    i762      e4169               -1
    i762      e5023               -1
    i763      e2072                1
    i763      e2073                1
    i763      e2074                1
    i763      e2078               -1
    i764      e2076               -1
    i764      e2077               -1
    i764      e2080               -1
    i764      e2081               -1
    i764      e2092                1
    i764      e4100               -1
    i764      e4101               -1
    i764      e4151               -1
    i764      e4152               -1
    i764      e4185               -1
    i764      e4186               -1
    i764      e5023               -1
    i765      e2075                1
    i765      e2076                1
    i765      e2077                1
    i765      e2078               -1
    i766      e2079                1
    i766      e2080                1
    i766      e2081                1
    i766      e2085               -1
    i767      e2082                1
    i767      e2083                1
    i767      e2084                1
    i767      e2085               -1
    i768      e2086                1
    i768      e2087                1
    i768      e2088                1
    i768      e2092               -1
    i769      e2089                1
    i769      e2090                1
    i769      e2091                1
    i769      e2092               -1
    i770      e2093                1
    i770      e2101                1
    i770      e5024               -3
    i771      e2094                1
    i771      e2106               -1
    i771      e2107               -1
    i771      e2113               -1
    i771      e2114               -1
    i771      e4210               -1
    i771      e4211               -1
    i771      e4227               -1
    i771      e4228               -1
    i771      e4244               -1
    i771      e4245               -1
    i771      e4261               -1
    i771      e4262               -1
    i771      e5024               -4
    i772      e2096               -1
    i772      e2097               -1
    i772      e2108                1
    i772      e2110               -1
    i772      e2111               -1
    i772      e4295               -1
    i772      e4296               -1
    i772      e4312               -1
    i772      e4313               -1
    i772      e4346               -1
    i772      e4347               -1
    i772      e5024               -1
    i773      e2095                1
    i773      e2096                1
    i773      e2097                1
    i773      e2101               -1
    i774      e2099               -1
    i774      e2100               -1
    i774      e2103               -1
    i774      e2104               -1
    i774      e2115                1
    i774      e4278               -1
    i774      e4279               -1
    i774      e4329               -1
    i774      e4330               -1
    i774      e4363               -1
    i774      e4364               -1
    i774      e5024               -1
    i775      e2098                1
    i775      e2099                1
    i775      e2100                1
    i775      e2101               -1
    i776      e2102                1
    i776      e2103                1
    i776      e2104                1
    i776      e2108               -1
    i777      e2105                1
    i777      e2106                1
    i777      e2107                1
    i777      e2108               -1
    i778      e2109                1
    i778      e2110                1
    i778      e2111                1
    i778      e2115               -1
    i779      e2112                1
    i779      e2113                1
    i779      e2114                1
    i779      e2115               -1
    i780      e2116                1
    i780      e2124                1
    i780      e5028               -2
    i781      e2117                1
    i781      e2129               -1
    i781      e2130               -1
    i781      e2136               -1
    i781      e2137               -1
    i781      e3314               -1
    i781      e3315               -1
    i781      e3331               -1
    i781      e3332               -1
    i781      e3348               -1
    i781      e3349               -1
    i781      e3365               -1
    i781      e3366               -1
    i781      e5028               -2
    i782      e2119               -1
    i782      e2120               -1
    i782      e2131                1
    i782      e2133               -1
    i782      e2134               -1
    i782      e3399               -1
    i782      e3400               -1
    i782      e3416               -1
    i782      e3417               -1
    i782      e3450               -1
    i782      e3451               -1
    i782      e5028               -1
    i783      e2118                1
    i783      e2119                1
    i783      e2120                1
    i783      e2124               -1
    i784      e2122               -1
    i784      e2123               -1
    i784      e2126               -1
    i784      e2127               -1
    i784      e2138                1
    i784      e3382               -1
    i784      e3383               -1
    i784      e3433               -1
    i784      e3434               -1
    i784      e3467               -1
    i784      e3468               -1
    i784      e5028               -1
    i785      e2121                1
    i785      e2122                1
    i785      e2123                1
    i785      e2124               -1
    i786      e2125                1
    i786      e2126                1
    i786      e2127                1
    i786      e2131               -1
    i787      e2128                1
    i787      e2129                1
    i787      e2130                1
    i787      e2131               -1
    i788      e2132                1
    i788      e2133                1
    i788      e2134                1
    i788      e2138               -1
    i789      e2135                1
    i789      e2136                1
    i789      e2137                1
    i789      e2138               -1
    i790      e2139                1
    i790      e2147                1
    i790      e5029               -2
    i791      e2140                1
    i791      e2152               -1
    i791      e2153               -1
    i791      e2159               -1
    i791      e2160               -1
    i791      e3492               -1
    i791      e3493               -1
    i791      e3509               -1
    i791      e3510               -1
    i791      e3526               -1
    i791      e3527               -1
    i791      e3543               -1
    i791      e3544               -1
    i791      e5029               -3
    i792      e2142               -1
    i792      e2143               -1
    i792      e2154                1
    i792      e2156               -1
    i792      e2157               -1
    i792      e3577               -1
    i792      e3578               -1
    i792      e3594               -1
    i792      e3595               -1
    i792      e3628               -1
    i792      e3629               -1
    i792      e5029               -1
    i793      e2141                1
    i793      e2142                1
    i793      e2143                1
    i793      e2147               -1
    i794      e2145               -1
    i794      e2146               -1
    i794      e2149               -1
    i794      e2150               -1
    i794      e2161                1
    i794      e3560               -1
    i794      e3561               -1
    i794      e3611               -1
    i794      e3612               -1
    i794      e3645               -1
    i794      e3646               -1
    i794      e5029               -1
    i795      e2144                1
    i795      e2145                1
    i795      e2146                1
    i795      e2147               -1
    i796      e2148                1
    i796      e2149                1
    i796      e2150                1
    i796      e2154               -1
    i797      e2151                1
    i797      e2152                1
    i797      e2153                1
    i797      e2154               -1
    i798      e2155                1
    i798      e2156                1
    i798      e2157                1
    i798      e2161               -1
    i799      e2158                1
    i799      e2159                1
    i799      e2160                1
    i799      e2161               -1
    i800      e2162                1
    i800      e2170                1
    i800      e5030               -2
    i801      e2163                1
    i801      e2175               -1
    i801      e2176               -1
    i801      e2182               -1
    i801      e2183               -1
    i801      e3670               -1
    i801      e3671               -1
    i801      e3687               -1
    i801      e3688               -1
    i801      e3704               -1
    i801      e3705               -1
    i801      e3721               -1
    i801      e3722               -1
    i801      e5030               -3
    i802      e2165               -1
    i802      e2166               -1
    i802      e2177                1
    i802      e2179               -1
    i802      e2180               -1
    i802      e3755               -1
    i802      e3756               -1
    i802      e3772               -1
    i802      e3773               -1
    i802      e3806               -1
    i802      e3807               -1
    i802      e5030               -1
    i803      e2164                1
    i803      e2165                1
    i803      e2166                1
    i803      e2170               -1
    i804      e2168               -1
    i804      e2169               -1
    i804      e2172               -1
    i804      e2173               -1
    i804      e2184                1
    i804      e3738               -1
    i804      e3739               -1
    i804      e3789               -1
    i804      e3790               -1
    i804      e3823               -1
    i804      e3824               -1
    i804      e5030               -1
    i805      e2167                1
    i805      e2168                1
    i805      e2169                1
    i805      e2170               -1
    i806      e2171                1
    i806      e2172                1
    i806      e2173                1
    i806      e2177               -1
    i807      e2174                1
    i807      e2175                1
    i807      e2176                1
    i807      e2177               -1
    i808      e2178                1
    i808      e2179                1
    i808      e2180                1
    i808      e2184               -1
    i809      e2181                1
    i809      e2182                1
    i809      e2183                1
    i809      e2184               -1
    i810      e2185                1
    i810      e2193                1
    i810      e5031               -4
    i811      e2186                1
    i811      e2198               -1
    i811      e2199               -1
    i811      e2205               -1
    i811      e2206               -1
    i811      e3317               -1
    i811      e3318               -1
    i811      e3334               -1
    i811      e3335               -1
    i811      e3351               -1
    i811      e3352               -1
    i811      e3368               -1
    i811      e3369               -1
    i811      e5031               -2
    i812      e2188               -1
    i812      e2189               -1
    i812      e2200                1
    i812      e2202               -1
    i812      e2203               -1
    i812      e3402               -1
    i812      e3403               -1
    i812      e3419               -1
    i812      e3420               -1
    i812      e3453               -1
    i812      e3454               -1
    i812      e5031               -1
    i813      e2187                1
    i813      e2188                1
    i813      e2189                1
    i813      e2193               -1
    i814      e2191               -1
    i814      e2192               -1
    i814      e2195               -1
    i814      e2196               -1
    i814      e2207                1
    i814      e3385               -1
    i814      e3386               -1
    i814      e3436               -1
    i814      e3437               -1
    i814      e3470               -1
    i814      e3471               -1
    i814      e5031               -1
    i815      e2190                1
    i815      e2191                1
    i815      e2192                1
    i815      e2193               -1
    i816      e2194                1
    i816      e2195                1
    i816      e2196                1
    i816      e2200               -1
    i817      e2197                1
    i817      e2198                1
    i817      e2199                1
    i817      e2200               -1
    i818      e2201                1
    i818      e2202                1
    i818      e2203                1
    i818      e2207               -1
    i819      e2204                1
    i819      e2205                1
    i819      e2206                1
    i819      e2207               -1
    i820      e2208                1
    i820      e2216                1
    i820      e5032               -4
    i821      e2209                1
    i821      e2221               -1
    i821      e2222               -1
    i821      e2228               -1
    i821      e2229               -1
    i821      e3495               -1
    i821      e3496               -1
    i821      e3512               -1
    i821      e3513               -1
    i821      e3529               -1
    i821      e3530               -1
    i821      e3546               -1
    i821      e3547               -1
    i821      e5032               -3
    i822      e2211               -1
    i822      e2212               -1
    i822      e2223                1
    i822      e2225               -1
    i822      e2226               -1
    i822      e3580               -1
    i822      e3581               -1
    i822      e3597               -1
    i822      e3598               -1
    i822      e3631               -1
    i822      e3632               -1
    i822      e5032               -1
    i823      e2210                1
    i823      e2211                1
    i823      e2212                1
    i823      e2216               -1
    i824      e2214               -1
    i824      e2215               -1
    i824      e2218               -1
    i824      e2219               -1
    i824      e2230                1
    i824      e3563               -1
    i824      e3564               -1
    i824      e3614               -1
    i824      e3615               -1
    i824      e3648               -1
    i824      e3649               -1
    i824      e5032               -1
    i825      e2213                1
    i825      e2214                1
    i825      e2215                1
    i825      e2216               -1
    i826      e2217                1
    i826      e2218                1
    i826      e2219                1
    i826      e2223               -1
    i827      e2220                1
    i827      e2221                1
    i827      e2222                1
    i827      e2223               -1
    i828      e2224                1
    i828      e2225                1
    i828      e2226                1
    i828      e2230               -1
    i829      e2227                1
    i829      e2228                1
    i829      e2229                1
    i829      e2230               -1
    i830      e2231                1
    i830      e2239                1
    i830      e5033               -4
    i831      e2232                1
    i831      e2244               -1
    i831      e2245               -1
    i831      e2251               -1
    i831      e2252               -1
    i831      e3673               -1
    i831      e3674               -1
    i831      e3690               -1
    i831      e3691               -1
    i831      e3707               -1
    i831      e3708               -1
    i831      e3724               -1
    i831      e3725               -1
    i831      e5033               -3
    i832      e2234               -1
    i832      e2235               -1
    i832      e2246                1
    i832      e2248               -1
    i832      e2249               -1
    i832      e3758               -1
    i832      e3759               -1
    i832      e3775               -1
    i832      e3776               -1
    i832      e3809               -1
    i832      e3810               -1
    i832      e5033               -1
    i833      e2233                1
    i833      e2234                1
    i833      e2235                1
    i833      e2239               -1
    i834      e2237               -1
    i834      e2238               -1
    i834      e2241               -1
    i834      e2242               -1
    i834      e2253                1
    i834      e3741               -1
    i834      e3742               -1
    i834      e3792               -1
    i834      e3793               -1
    i834      e3826               -1
    i834      e3827               -1
    i834      e5033               -1
    i835      e2236                1
    i835      e2237                1
    i835      e2238                1
    i835      e2239               -1
    i836      e2240                1
    i836      e2241                1
    i836      e2242                1
    i836      e2246               -1
    i837      e2243                1
    i837      e2244                1
    i837      e2245                1
    i837      e2246               -1
    i838      e2247                1
    i838      e2248                1
    i838      e2249                1
    i838      e2253               -1
    i839      e2250                1
    i839      e2251                1
    i839      e2252                1
    i839      e2253               -1
    i840      e2254                1
    i840      e2262                1
    i840      e5034               -4
    i841      e2255                1
    i841      e2267               -1
    i841      e2268               -1
    i841      e2274               -1
    i841      e2275               -1
    i841      e3320               -1
    i841      e3321               -1
    i841      e3337               -1
    i841      e3338               -1
    i841      e3354               -1
    i841      e3355               -1
    i841      e3371               -1
    i841      e3372               -1
    i841      e5034               -2
    i842      e2257               -1
    i842      e2258               -1
    i842      e2269                1
    i842      e2271               -1
    i842      e2272               -1
    i842      e3405               -1
    i842      e3406               -1
    i842      e3422               -1
    i842      e3423               -1
    i842      e3456               -1
    i842      e3457               -1
    i842      e5034               -1
    i843      e2256                1
    i843      e2257                1
    i843      e2258                1
    i843      e2262               -1
    i844      e2260               -1
    i844      e2261               -1
    i844      e2264               -1
    i844      e2265               -1
    i844      e2276                1
    i844      e3388               -1
    i844      e3389               -1
    i844      e3439               -1
    i844      e3440               -1
    i844      e3473               -1
    i844      e3474               -1
    i844      e5034               -1
    i845      e2259                1
    i845      e2260                1
    i845      e2261                1
    i845      e2262               -1
    i846      e2263                1
    i846      e2264                1
    i846      e2265                1
    i846      e2269               -1
    i847      e2266                1
    i847      e2267                1
    i847      e2268                1
    i847      e2269               -1
    i848      e2270                1
    i848      e2271                1
    i848      e2272                1
    i848      e2276               -1
    i849      e2273                1
    i849      e2274                1
    i849      e2275                1
    i849      e2276               -1
    i850      e2277                1
    i850      e2285                1
    i850      e5035               -4
    i851      e2278                1
    i851      e2290               -1
    i851      e2291               -1
    i851      e2297               -1
    i851      e2298               -1
    i851      e3498               -1
    i851      e3499               -1
    i851      e3515               -1
    i851      e3516               -1
    i851      e3532               -1
    i851      e3533               -1
    i851      e3549               -1
    i851      e3550               -1
    i851      e5035               -3
    i852      e2280               -1
    i852      e2281               -1
    i852      e2292                1
    i852      e2294               -1
    i852      e2295               -1
    i852      e3583               -1
    i852      e3584               -1
    i852      e3600               -1
    i852      e3601               -1
    i852      e3634               -1
    i852      e3635               -1
    i852      e5035               -1
    i853      e2279                1
    i853      e2280                1
    i853      e2281                1
    i853      e2285               -1
    i854      e2283               -1
    i854      e2284               -1
    i854      e2287               -1
    i854      e2288               -1
    i854      e2299                1
    i854      e3566               -1
    i854      e3567               -1
    i854      e3617               -1
    i854      e3618               -1
    i854      e3651               -1
    i854      e3652               -1
    i854      e5035               -1
    i855      e2282                1
    i855      e2283                1
    i855      e2284                1
    i855      e2285               -1
    i856      e2286                1
    i856      e2287                1
    i856      e2288                1
    i856      e2292               -1
    i857      e2289                1
    i857      e2290                1
    i857      e2291                1
    i857      e2292               -1
    i858      e2293                1
    i858      e2294                1
    i858      e2295                1
    i858      e2299               -1
    i859      e2296                1
    i859      e2297                1
    i859      e2298                1
    i859      e2299               -1
    i860      e2300                1
    i860      e2308                1
    i860      e5036               -4
    i861      e2301                1
    i861      e2313               -1
    i861      e2314               -1
    i861      e2320               -1
    i861      e2321               -1
    i861      e3676               -1
    i861      e3677               -1
    i861      e3693               -1
    i861      e3694               -1
    i861      e3710               -1
    i861      e3711               -1
    i861      e3727               -1
    i861      e3728               -1
    i861      e5036               -3
    i862      e2303               -1
    i862      e2304               -1
    i862      e2315                1
    i862      e2317               -1
    i862      e2318               -1
    i862      e3761               -1
    i862      e3762               -1
    i862      e3778               -1
    i862      e3779               -1
    i862      e3812               -1
    i862      e3813               -1
    i862      e5036               -1
    i863      e2302                1
    i863      e2303                1
    i863      e2304                1
    i863      e2308               -1
    i864      e2306               -1
    i864      e2307               -1
    i864      e2310               -1
    i864      e2311               -1
    i864      e2322                1
    i864      e3744               -1
    i864      e3745               -1
    i864      e3795               -1
    i864      e3796               -1
    i864      e3829               -1
    i864      e3830               -1
    i864      e5036               -1
    i865      e2305                1
    i865      e2306                1
    i865      e2307                1
    i865      e2308               -1
    i866      e2309                1
    i866      e2310                1
    i866      e2311                1
    i866      e2315               -1
    i867      e2312                1
    i867      e2313                1
    i867      e2314                1
    i867      e2315               -1
    i868      e2316                1
    i868      e2317                1
    i868      e2318                1
    i868      e2322               -1
    i869      e2319                1
    i869      e2320                1
    i869      e2321                1
    i869      e2322               -1
    i870      e2323                1
    i871      e2324                1
    i871      e2329               -1
    i871      e2330               -1
    i871      e2336               -1
    i871      e2337               -1
    i871      e4582               -1
    i871      e4583               -1
    i872      e2331                1
    i872      e2333               -1
    i872      e2334               -1
    i872      e4417               -1
    i872      e4418               -1
    i872      e4572               -1
    i872      e4573               -1
    i873      e2326               -1
    i873      e2327               -1
    i873      e2338                1
    i873      e4374               -1
    i873      e4375               -1
    i873      e4577               -1
    i873      e4578               -1
    i874      e2325                1
    i874      e2326                1
    i874      e2327                1
    i874      e2331               -1
    i875      e2328                1
    i875      e2329                1
    i875      e2330                1
    i875      e2331               -1
    i876      e2332                1
    i876      e2333                1
    i876      e2334                1
    i876      e2338               -1
    i877      e2335                1
    i877      e2336                1
    i877      e2337                1
    i877      e2338               -1
    i878      e2339                1
    i879      e2340                1
    i879      e2345               -1
    i879      e2346               -1
    i879      e2352               -1
    i879      e2353               -1
    i879      e4907               -1
    i879      e4908               -1
    i880      e2347                1
    i880      e2349               -1
    i880      e2350               -1
    i880      e4737               -1
    i880      e4738               -1
    i880      e4892               -1
    i880      e4893               -1
    i881      e2342               -1
    i881      e2343               -1
    i881      e2354                1
    i881      e4694               -1
    i881      e4695               -1
    i881      e4897               -1
    i881      e4898               -1
    i882      e2341                1
    i882      e2342                1
    i882      e2343                1
    i882      e2347               -1
    i883      e2344                1
    i883      e2345                1
    i883      e2346                1
    i883      e2347               -1
    i884      e2348                1
    i884      e2349                1
    i884      e2350                1
    i884      e2354               -1
    i885      e2351                1
    i885      e2352                1
    i885      e2353                1
    i885      e2354               -1
    i886      e2355                1
    i887      e2356                1
    i887      e2361               -1
    i887      e2362               -1
    i887      e2368               -1
    i887      e2369               -1
    i887      e4556               -1
    i887      e4557               -1
    i888      e2363                1
    i888      e2365               -1
    i888      e2366               -1
    i888      e4432               -1
    i888      e4433               -1
    i888      e4540               -1
    i888      e4541               -1
    i889      e2358               -1
    i889      e2359               -1
    i889      e2370                1
    i889      e4389               -1
    i889      e4390               -1
    i889      e4548               -1
    i889      e4549               -1
    i890      e2357                1
    i890      e2358                1
    i890      e2359                1
    i890      e2363               -1
    i891      e2360                1
    i891      e2361                1
    i891      e2362                1
    i891      e2363               -1
    i892      e2364                1
    i892      e2365                1
    i892      e2366                1
    i892      e2370               -1
    i893      e2367                1
    i893      e2368                1
    i893      e2369                1
    i893      e2370               -1
    i894      e2371                1
    i895      e2372                1
    i895      e2377               -1
    i895      e2378               -1
    i895      e2384               -1
    i895      e2385               -1
    i895      e4884               -1
    i895      e4885               -1
    i896      e2379                1
    i896      e2381               -1
    i896      e2382               -1
    i896      e4752               -1
    i896      e4753               -1
    i896      e4860               -1
    i896      e4861               -1
    i897      e2374               -1
    i897      e2375               -1
    i897      e2386                1
    i897      e4709               -1
    i897      e4710               -1
    i897      e4868               -1
    i897      e4869               -1
    i898      e2373                1
    i898      e2374                1
    i898      e2375                1
    i898      e2379               -1
    i899      e2376                1
    i899      e2377                1
    i899      e2378                1
    i899      e2379               -1
    i900      e2380                1
    i900      e2381                1
    i900      e2382                1
    i900      e2386               -1
    i901      e2383                1
    i901      e2384                1
    i901      e2385                1
    i901      e2386               -1
    i902      e2387                1
    i903      e2388                1
    i903      e2393               -1
    i903      e2394               -1
    i903      e2400               -1
    i903      e2401               -1
    i903      e4559               -1
    i903      e4560               -1
    i904      e2395                1
    i904      e2397               -1
    i904      e2398               -1
    i904      e4420               -1
    i904      e4421               -1
    i904      e4543               -1
    i904      e4544               -1
    i905      e2390               -1
    i905      e2391               -1
    i905      e2402                1
    i905      e4377               -1
    i905      e4378               -1
    i905      e4551               -1
    i905      e4552               -1
    i906      e2389                1
    i906      e2390                1
    i906      e2391                1
    i906      e2395               -1
    i907      e2392                1
    i907      e2393                1
    i907      e2394                1
    i907      e2395               -1
    i908      e2396                1
    i908      e2397                1
    i908      e2398                1
    i908      e2402               -1
    i909      e2399                1
    i909      e2400                1
    i909      e2401                1
    i909      e2402               -1
    i910      e2403                1
    i911      e2404                1
    i911      e2409               -1
    i911      e2410               -1
    i911      e2416               -1
    i911      e2417               -1
    i911      e4887               -1
    i911      e4888               -1
    i912      e2411                1
    i912      e2413               -1
    i912      e2414               -1
    i912      e4740               -1
    i912      e4741               -1
    i912      e4863               -1
    i912      e4864               -1
    i913      e2406               -1
    i913      e2407               -1
    i913      e2418                1
    i913      e4697               -1
    i913      e4698               -1
    i913      e4871               -1
    i913      e4872               -1
    i914      e2405                1
    i914      e2406                1
    i914      e2407                1
    i914      e2411               -1
    i915      e2408                1
    i915      e2409                1
    i915      e2410                1
    i915      e2411               -1
    i916      e2412                1
    i916      e2413                1
    i916      e2414                1
    i916      e2418               -1
    i917      e2415                1
    i917      e2416                1
    i917      e2417                1
    i917      e2418               -1
    i918      e2419                1
    i919      e2420                1
    i919      e2425               -1
    i919      e2426               -1
    i919      e2432               -1
    i919      e2433               -1
    i919      e4634               -1
    i919      e4635               -1
    i920      e2427                1
    i920      e2429               -1
    i920      e2430               -1
    i920      e4429               -1
    i920      e4430               -1
    i920      e4624               -1
    i920      e4625               -1
    i921      e2422               -1
    i921      e2423               -1
    i921      e2434                1
    i921      e4386               -1
    i921      e4387               -1
    i921      e4629               -1
    i921      e4630               -1
    i922      e2421                1
    i922      e2422                1
    i922      e2423                1
    i922      e2427               -1
    i923      e2424                1
    i923      e2425                1
    i923      e2426                1
    i923      e2427               -1
    i924      e2428                1
    i924      e2429                1
    i924      e2430                1
    i924      e2434               -1
    i925      e2431                1
    i925      e2432                1
    i925      e2433                1
    i925      e2434               -1
    i926      e2435                1
    i927      e2436                1
    i927      e2441               -1
    i927      e2442               -1
    i927      e2448               -1
    i927      e2449               -1
    i927      e4959               -1
    i927      e4960               -1
    i928      e2443                1
    i928      e2445               -1
    i928      e2446               -1
    i928      e4749               -1
    i928      e4750               -1
    i928      e4944               -1
    i928      e4945               -1
    i929      e2438               -1
    i929      e2439               -1
    i929      e2450                1
    i929      e4706               -1
    i929      e4707               -1
    i929      e4949               -1
    i929      e4950               -1
    i930      e2437                1
    i930      e2438                1
    i930      e2439                1
    i930      e2443               -1
    i931      e2440                1
    i931      e2441                1
    i931      e2442                1
    i931      e2443               -1
    i932      e2444                1
    i932      e2445                1
    i932      e2446                1
    i932      e2450               -1
    i933      e2447                1
    i933      e2448                1
    i933      e2449                1
    i933      e2450               -1
    i934      e2451                1
    i935      e2452                1
    i935      e2457               -1
    i935      e2458               -1
    i935      e2464               -1
    i935      e2465               -1
    i935      e4608               -1
    i935      e4609               -1
    i936      e2459                1
    i936      e2461               -1
    i936      e2462               -1
    i936      e4435               -1
    i936      e4436               -1
    i936      e4592               -1
    i936      e4593               -1
    i937      e2454               -1
    i937      e2455               -1
    i937      e2466                1
    i937      e4392               -1
    i937      e4393               -1
    i937      e4600               -1
    i937      e4601               -1
    i938      e2453                1
    i938      e2454                1
    i938      e2455                1
    i938      e2459               -1
    i939      e2456                1
    i939      e2457                1
    i939      e2458                1
    i939      e2459               -1
    i940      e2460                1
    i940      e2461                1
    i940      e2462                1
    i940      e2466               -1
    i941      e2463                1
    i941      e2464                1
    i941      e2465                1
    i941      e2466               -1
    i942      e2467                1
    i943      e2468                1
    i943      e2473               -1
    i943      e2474               -1
    i943      e2480               -1
    i943      e2481               -1
    i943      e4936               -1
    i943      e4937               -1
    i944      e2475                1
    i944      e2477               -1
    i944      e2478               -1
    i944      e4755               -1
    i944      e4756               -1
    i944      e4912               -1
    i944      e4913               -1
    i945      e2470               -1
    i945      e2471               -1
    i945      e2482                1
    i945      e4712               -1
    i945      e4713               -1
    i945      e4920               -1
    i945      e4921               -1
    i946      e2469                1
    i946      e2470                1
    i946      e2471                1
    i946      e2475               -1
    i947      e2472                1
    i947      e2473                1
    i947      e2474                1
    i947      e2475               -1
    i948      e2476                1
    i948      e2477                1
    i948      e2478                1
    i948      e2482               -1
    i949      e2479                1
    i949      e2480                1
    i949      e2481                1
    i949      e2482               -1
    i950      e2483                1
    i951      e2484                1
    i951      e2489               -1
    i951      e2490               -1
    i951      e2496               -1
    i951      e2497               -1
    i951      e4611               -1
    i951      e4612               -1
    i952      e2491                1
    i952      e2493               -1
    i952      e2494               -1
    i952      e4426               -1
    i952      e4427               -1
    i952      e4595               -1
    i952      e4596               -1
    i953      e2486               -1
    i953      e2487               -1
    i953      e2498                1
    i953      e4383               -1
    i953      e4384               -1
    i953      e4603               -1
    i953      e4604               -1
    i954      e2485                1
    i954      e2486                1
    i954      e2487                1
    i954      e2491               -1
    i955      e2488                1
    i955      e2489                1
    i955      e2490                1
    i955      e2491               -1
    i956      e2492                1
    i956      e2493                1
    i956      e2494                1
    i956      e2498               -1
    i957      e2495                1
    i957      e2496                1
    i957      e2497                1
    i957      e2498               -1
    i958      e2499                1
    i959      e2500                1
    i959      e2505               -1
    i959      e2506               -1
    i959      e2512               -1
    i959      e2513               -1
    i959      e4939               -1
    i959      e4940               -1
    i960      e2507                1
    i960      e2509               -1
    i960      e2510               -1
    i960      e4743               -1
    i960      e4744               -1
    i960      e4915               -1
    i960      e4916               -1
    i961      e2502               -1
    i961      e2503               -1
    i961      e2514                1
    i961      e4700               -1
    i961      e4701               -1
    i961      e4923               -1
    i961      e4924               -1
    i962      e2501                1
    i962      e2502                1
    i962      e2503                1
    i962      e2507               -1
    i963      e2504                1
    i963      e2505                1
    i963      e2506                1
    i963      e2507               -1
    i964      e2508                1
    i964      e2509                1
    i964      e2510                1
    i964      e2514               -1
    i965      e2511                1
    i965      e2512                1
    i965      e2513                1
    i965      e2514               -1
    i966      e2515                1
    i966      e2540                1
    i967      e2516                1
    i967      e2521               -1
    i967      e2522               -1
    i967      e2528               -1
    i967      e2529               -1
    i967      e2538               -1
    i967      e2539               -1
    i967      e3323               -1
    i967      e3324               -1
    i967      e3340               -1
    i967      e3341               -1
    i967      e3357               -1
    i967      e3358               -1
    i967      e3374               -1
    i967      e3375               -1
    i968      e2523                1
    i968      e2525               -1
    i968      e2526               -1
    i968      e2532               -1
    i968      e2533               -1
    i968      e3408               -1
    i968      e3409               -1
    i968      e3425               -1
    i968      e3426               -1
    i968      e3459               -1
    i968      e3460               -1
    i969      e2518               -1
    i969      e2519               -1
    i969      e2530                1
    i969      e2535               -1
    i969      e2536               -1
    i969      e3391               -1
    i969      e3392               -1
    i969      e3442               -1
    i969      e3443               -1
    i969      e3476               -1
    i969      e3477               -1
    i970      e2517                1
    i970      e2518                1
    i970      e2519                1
    i970      e2523               -1
    i971      e2520                1
    i971      e2521                1
    i971      e2522                1
    i971      e2523               -1
    i972      e2524                1
    i972      e2525                1
    i972      e2526                1
    i972      e2530               -1
    i973      e2527                1
    i973      e2528                1
    i973      e2529                1
    i973      e2530               -1
    i974      e2531                1
    i974      e2532                1
    i974      e2533                1
    i974      e2540               -1
    i975      e2534                1
    i975      e2535                1
    i975      e2536                1
    i975      e2540               -1
    i976      e2537                1
    i976      e2538                1
    i976      e2539                1
    i976      e2540               -1
    i977      e2541                1
    i977      e2566                1
    i978      e2542                1
    i978      e2547               -1
    i978      e2548               -1
    i978      e2554               -1
    i978      e2555               -1
    i978      e2564               -1
    i978      e2565               -1
    i978      e3501               -1
    i978      e3502               -1
    i978      e3518               -1
    i978      e3519               -1
    i978      e3535               -1
    i978      e3536               -1
    i978      e3552               -1
    i978      e3553               -1
    i979      e2549                1
    i979      e2551               -1
    i979      e2552               -1
    i979      e2558               -1
    i979      e2559               -1
    i979      e3586               -1
    i979      e3587               -1
    i979      e3603               -1
    i979      e3604               -1
    i979      e3637               -1
    i979      e3638               -1
    i980      e2544               -1
    i980      e2545               -1
    i980      e2556                1
    i980      e2561               -1
    i980      e2562               -1
    i980      e3569               -1
    i980      e3570               -1
    i980      e3620               -1
    i980      e3621               -1
    i980      e3654               -1
    i980      e3655               -1
    i981      e2543                1
    i981      e2544                1
    i981      e2545                1
    i981      e2549               -1
    i982      e2546                1
    i982      e2547                1
    i982      e2548                1
    i982      e2549               -1
    i983      e2550                1
    i983      e2551                1
    i983      e2552                1
    i983      e2556               -1
    i984      e2553                1
    i984      e2554                1
    i984      e2555                1
    i984      e2556               -1
    i985      e2557                1
    i985      e2558                1
    i985      e2559                1
    i985      e2566               -1
    i986      e2560                1
    i986      e2561                1
    i986      e2562                1
    i986      e2566               -1
    i987      e2563                1
    i987      e2564                1
    i987      e2565                1
    i987      e2566               -1
    i988      e2567                1
    i988      e2592                1
    i989      e2568                1
    i989      e2573               -1
    i989      e2574               -1
    i989      e2580               -1
    i989      e2581               -1
    i989      e2590               -1
    i989      e2591               -1
    i989      e3679               -1
    i989      e3680               -1
    i989      e3696               -1
    i989      e3697               -1
    i989      e3713               -1
    i989      e3714               -1
    i989      e3730               -1
    i989      e3731               -1
    i990      e2575                1
    i990      e2577               -1
    i990      e2578               -1
    i990      e2584               -1
    i990      e2585               -1
    i990      e3764               -1
    i990      e3765               -1
    i990      e3781               -1
    i990      e3782               -1
    i990      e3815               -1
    i990      e3816               -1
    i991      e2570               -1
    i991      e2571               -1
    i991      e2582                1
    i991      e2587               -1
    i991      e2588               -1
    i991      e3747               -1
    i991      e3748               -1
    i991      e3798               -1
    i991      e3799               -1
    i991      e3832               -1
    i991      e3833               -1
    i992      e2569                1
    i992      e2570                1
    i992      e2571                1
    i992      e2575               -1
    i993      e2572                1
    i993      e2573                1
    i993      e2574                1
    i993      e2575               -1
    i994      e2576                1
    i994      e2577                1
    i994      e2578                1
    i994      e2582               -1
    i995      e2579                1
    i995      e2580                1
    i995      e2581                1
    i995      e2582               -1
    i996      e2583                1
    i996      e2584                1
    i996      e2585                1
    i996      e2592               -1
    i997      e2586                1
    i997      e2587                1
    i997      e2588                1
    i997      e2592               -1
    i998      e2589                1
    i998      e2590                1
    i998      e2591                1
    i998      e2592               -1
    i999      e2593                1
    i999      e2618                1
    i1000     e2594                1
    i1000     e2599               -1
    i1000     e2600               -1
    i1000     e2606               -1
    i1000     e2607               -1
    i1000     e2616               -1
    i1000     e2617               -1
    i1000     e3857               -1
    i1000     e3858               -1
    i1000     e3874               -1
    i1000     e3875               -1
    i1000     e3891               -1
    i1000     e3892               -1
    i1000     e3908               -1
    i1000     e3909               -1
    i1001     e2601                1
    i1001     e2603               -1
    i1001     e2604               -1
    i1001     e2610               -1
    i1001     e2611               -1
    i1001     e3942               -1
    i1001     e3943               -1
    i1001     e3959               -1
    i1001     e3960               -1
    i1001     e3993               -1
    i1001     e3994               -1
    i1002     e2596               -1
    i1002     e2597               -1
    i1002     e2608                1
    i1002     e2613               -1
    i1002     e2614               -1
    i1002     e3925               -1
    i1002     e3926               -1
    i1002     e3976               -1
    i1002     e3977               -1
    i1002     e4010               -1
    i1002     e4011               -1
    i1003     e2595                1
    i1003     e2596                1
    i1003     e2597                1
    i1003     e2601               -1
    i1004     e2598                1
    i1004     e2599                1
    i1004     e2600                1
    i1004     e2601               -1
    i1005     e2602                1
    i1005     e2603                1
    i1005     e2604                1
    i1005     e2608               -1
    i1006     e2605                1
    i1006     e2606                1
    i1006     e2607                1
    i1006     e2608               -1
    i1007     e2609                1
    i1007     e2610                1
    i1007     e2611                1
    i1007     e2618               -1
    i1008     e2612                1
    i1008     e2613                1
    i1008     e2614                1
    i1008     e2618               -1
    i1009     e2615                1
    i1009     e2616                1
    i1009     e2617                1
    i1009     e2618               -1
    i1010     e2619                1
    i1010     e2644                1
    i1011     e2620                1
    i1011     e2625               -1
    i1011     e2626               -1
    i1011     e2632               -1
    i1011     e2633               -1
    i1011     e2642               -1
    i1011     e2643               -1
    i1011     e4035               -1
    i1011     e4036               -1
    i1011     e4052               -1
    i1011     e4053               -1
    i1011     e4069               -1
    i1011     e4070               -1
    i1011     e4086               -1
    i1011     e4087               -1
    i1012     e2627                1
    i1012     e2629               -1
    i1012     e2630               -1
    i1012     e2636               -1
    i1012     e2637               -1
    i1012     e4120               -1
    i1012     e4121               -1
    i1012     e4137               -1
    i1012     e4138               -1
    i1012     e4171               -1
    i1012     e4172               -1
    i1013     e2622               -1
    i1013     e2623               -1
    i1013     e2634                1
    i1013     e2639               -1
    i1013     e2640               -1
    i1013     e4103               -1
    i1013     e4104               -1
    i1013     e4154               -1
    i1013     e4155               -1
    i1013     e4188               -1
    i1013     e4189               -1
    i1014     e2621                1
    i1014     e2622                1
    i1014     e2623                1
    i1014     e2627               -1
    i1015     e2624                1
    i1015     e2625                1
    i1015     e2626                1
    i1015     e2627               -1
    i1016     e2628                1
    i1016     e2629                1
    i1016     e2630                1
    i1016     e2634               -1
    i1017     e2631                1
    i1017     e2632                1
    i1017     e2633                1
    i1017     e2634               -1
    i1018     e2635                1
    i1018     e2636                1
    i1018     e2637                1
    i1018     e2644               -1
    i1019     e2638                1
    i1019     e2639                1
    i1019     e2640                1
    i1019     e2644               -1
    i1020     e2641                1
    i1020     e2642                1
    i1020     e2643                1
    i1020     e2644               -1
    i1021     e2645                1
    i1021     e2670                1
    i1022     e2646                1
    i1022     e2651               -1
    i1022     e2652               -1
    i1022     e2658               -1
    i1022     e2659               -1
    i1022     e2668               -1
    i1022     e2669               -1
    i1022     e4213               -1
    i1022     e4214               -1
    i1022     e4230               -1
    i1022     e4231               -1
    i1022     e4247               -1
    i1022     e4248               -1
    i1022     e4264               -1
    i1022     e4265               -1
    i1023     e2653                1
    i1023     e2655               -1
    i1023     e2656               -1
    i1023     e2662               -1
    i1023     e2663               -1
    i1023     e4298               -1
    i1023     e4299               -1
    i1023     e4315               -1
    i1023     e4316               -1
    i1023     e4349               -1
    i1023     e4350               -1
    i1024     e2648               -1
    i1024     e2649               -1
    i1024     e2660                1
    i1024     e2665               -1
    i1024     e2666               -1
    i1024     e4281               -1
    i1024     e4282               -1
    i1024     e4332               -1
    i1024     e4333               -1
    i1024     e4366               -1
    i1024     e4367               -1
    i1025     e2647                1
    i1025     e2648                1
    i1025     e2649                1
    i1025     e2653               -1
    i1026     e2650                1
    i1026     e2651                1
    i1026     e2652                1
    i1026     e2653               -1
    i1027     e2654                1
    i1027     e2655                1
    i1027     e2656                1
    i1027     e2660               -1
    i1028     e2657                1
    i1028     e2658                1
    i1028     e2659                1
    i1028     e2660               -1
    i1029     e2661                1
    i1029     e2662                1
    i1029     e2663                1
    i1029     e2670               -1
    i1030     e2664                1
    i1030     e2665                1
    i1030     e2666                1
    i1030     e2670               -1
    i1031     e2667                1
    i1031     e2668                1
    i1031     e2669                1
    i1031     e2670               -1
    i1032     e2671                1
    i1032     e2696                1
    i1033     e2672                1
    i1033     e2677               -1
    i1033     e2678               -1
    i1033     e2684               -1
    i1033     e2685               -1
    i1033     e2694               -1
    i1033     e2695               -1
    i1033     e3326               -1
    i1033     e3327               -1
    i1033     e3343               -1
    i1033     e3344               -1
    i1033     e3360               -1
    i1033     e3361               -1
    i1033     e3377               -1
    i1033     e3378               -1
    i1034     e2679                1
    i1034     e2681               -1
    i1034     e2682               -1
    i1034     e2688               -1
    i1034     e2689               -1
    i1034     e3411               -1
    i1034     e3412               -1
    i1034     e3428               -1
    i1034     e3429               -1
    i1034     e3462               -1
    i1034     e3463               -1
    i1035     e2674               -1
    i1035     e2675               -1
    i1035     e2686                1
    i1035     e2691               -1
    i1035     e2692               -1
    i1035     e3394               -1
    i1035     e3395               -1
    i1035     e3445               -1
    i1035     e3446               -1
    i1035     e3479               -1
    i1035     e3480               -1
    i1036     e2673                1
    i1036     e2674                1
    i1036     e2675                1
    i1036     e2679               -1
    i1037     e2676                1
    i1037     e2677                1
    i1037     e2678                1
    i1037     e2679               -1
    i1038     e2680                1
    i1038     e2681                1
    i1038     e2682                1
    i1038     e2686               -1
    i1039     e2683                1
    i1039     e2684                1
    i1039     e2685                1
    i1039     e2686               -1
    i1040     e2687                1
    i1040     e2688                1
    i1040     e2689                1
    i1040     e2696               -1
    i1041     e2690                1
    i1041     e2691                1
    i1041     e2692                1
    i1041     e2696               -1
    i1042     e2693                1
    i1042     e2694                1
    i1042     e2695                1
    i1042     e2696               -1
    i1043     e2697                1
    i1043     e2722                1
    i1044     e2698                1
    i1044     e2703               -1
    i1044     e2704               -1
    i1044     e2710               -1
    i1044     e2711               -1
    i1044     e2720               -1
    i1044     e2721               -1
    i1044     e3504               -1
    i1044     e3505               -1
    i1044     e3521               -1
    i1044     e3522               -1
    i1044     e3538               -1
    i1044     e3539               -1
    i1044     e3555               -1
    i1044     e3556               -1
    i1045     e2705                1
    i1045     e2707               -1
    i1045     e2708               -1
    i1045     e2714               -1
    i1045     e2715               -1
    i1045     e3589               -1
    i1045     e3590               -1
    i1045     e3606               -1
    i1045     e3607               -1
    i1045     e3640               -1
    i1045     e3641               -1
    i1046     e2700               -1
    i1046     e2701               -1
    i1046     e2712                1
    i1046     e2717               -1
    i1046     e2718               -1
    i1046     e3572               -1
    i1046     e3573               -1
    i1046     e3623               -1
    i1046     e3624               -1
    i1046     e3657               -1
    i1046     e3658               -1
    i1047     e2699                1
    i1047     e2700                1
    i1047     e2701                1
    i1047     e2705               -1
    i1048     e2702                1
    i1048     e2703                1
    i1048     e2704                1
    i1048     e2705               -1
    i1049     e2706                1
    i1049     e2707                1
    i1049     e2708                1
    i1049     e2712               -1
    i1050     e2709                1
    i1050     e2710                1
    i1050     e2711                1
    i1050     e2712               -1
    i1051     e2713                1
    i1051     e2714                1
    i1051     e2715                1
    i1051     e2722               -1
    i1052     e2716                1
    i1052     e2717                1
    i1052     e2718                1
    i1052     e2722               -1
    i1053     e2719                1
    i1053     e2720                1
    i1053     e2721                1
    i1053     e2722               -1
    i1054     e2723                1
    i1054     e2748                1
    i1055     e2724                1
    i1055     e2729               -1
    i1055     e2730               -1
    i1055     e2736               -1
    i1055     e2737               -1
    i1055     e2746               -1
    i1055     e2747               -1
    i1055     e3682               -1
    i1055     e3683               -1
    i1055     e3699               -1
    i1055     e3700               -1
    i1055     e3716               -1
    i1055     e3717               -1
    i1055     e3733               -1
    i1055     e3734               -1
    i1056     e2731                1
    i1056     e2733               -1
    i1056     e2734               -1
    i1056     e2740               -1
    i1056     e2741               -1
    i1056     e3767               -1
    i1056     e3768               -1
    i1056     e3784               -1
    i1056     e3785               -1
    i1056     e3818               -1
    i1056     e3819               -1
    i1057     e2726               -1
    i1057     e2727               -1
    i1057     e2738                1
    i1057     e2743               -1
    i1057     e2744               -1
    i1057     e3750               -1
    i1057     e3751               -1
    i1057     e3801               -1
    i1057     e3802               -1
    i1057     e3835               -1
    i1057     e3836               -1
    i1058     e2725                1
    i1058     e2726                1
    i1058     e2727                1
    i1058     e2731               -1
    i1059     e2728                1
    i1059     e2729                1
    i1059     e2730                1
    i1059     e2731               -1
    i1060     e2732                1
    i1060     e2733                1
    i1060     e2734                1
    i1060     e2738               -1
    i1061     e2735                1
    i1061     e2736                1
    i1061     e2737                1
    i1061     e2738               -1
    i1062     e2739                1
    i1062     e2740                1
    i1062     e2741                1
    i1062     e2748               -1
    i1063     e2742                1
    i1063     e2743                1
    i1063     e2744                1
    i1063     e2748               -1
    i1064     e2745                1
    i1064     e2746                1
    i1064     e2747                1
    i1064     e2748               -1
    i1065     e2749                1
    i1065     e2774                1
    i1066     e2750                1
    i1066     e2755               -1
    i1066     e2756               -1
    i1066     e2762               -1
    i1066     e2763               -1
    i1066     e2772               -1
    i1066     e2773               -1
    i1066     e3860               -1
    i1066     e3861               -1
    i1066     e3877               -1
    i1066     e3878               -1
    i1066     e3894               -1
    i1066     e3895               -1
    i1066     e3911               -1
    i1066     e3912               -1
    i1067     e2757                1
    i1067     e2759               -1
    i1067     e2760               -1
    i1067     e2766               -1
    i1067     e2767               -1
    i1067     e3945               -1
    i1067     e3946               -1
    i1067     e3962               -1
    i1067     e3963               -1
    i1067     e3996               -1
    i1067     e3997               -1
    i1068     e2752               -1
    i1068     e2753               -1
    i1068     e2764                1
    i1068     e2769               -1
    i1068     e2770               -1
    i1068     e3928               -1
    i1068     e3929               -1
    i1068     e3979               -1
    i1068     e3980               -1
    i1068     e4013               -1
    i1068     e4014               -1
    i1069     e2751                1
    i1069     e2752                1
    i1069     e2753                1
    i1069     e2757               -1
    i1070     e2754                1
    i1070     e2755                1
    i1070     e2756                1
    i1070     e2757               -1
    i1071     e2758                1
    i1071     e2759                1
    i1071     e2760                1
    i1071     e2764               -1
    i1072     e2761                1
    i1072     e2762                1
    i1072     e2763                1
    i1072     e2764               -1
    i1073     e2765                1
    i1073     e2766                1
    i1073     e2767                1
    i1073     e2774               -1
    i1074     e2768                1
    i1074     e2769                1
    i1074     e2770                1
    i1074     e2774               -1
    i1075     e2771                1
    i1075     e2772                1
    i1075     e2773                1
    i1075     e2774               -1
    i1076     e2775                1
    i1076     e2800                1
    i1077     e2776                1
    i1077     e2781               -1
    i1077     e2782               -1
    i1077     e2788               -1
    i1077     e2789               -1
    i1077     e2798               -1
    i1077     e2799               -1
    i1077     e4038               -1
    i1077     e4039               -1
    i1077     e4055               -1
    i1077     e4056               -1
    i1077     e4072               -1
    i1077     e4073               -1
    i1077     e4089               -1
    i1077     e4090               -1
    i1078     e2783                1
    i1078     e2785               -1
    i1078     e2786               -1
    i1078     e2792               -1
    i1078     e2793               -1
    i1078     e4123               -1
    i1078     e4124               -1
    i1078     e4140               -1
    i1078     e4141               -1
    i1078     e4174               -1
    i1078     e4175               -1
    i1079     e2778               -1
    i1079     e2779               -1
    i1079     e2790                1
    i1079     e2795               -1
    i1079     e2796               -1
    i1079     e4106               -1
    i1079     e4107               -1
    i1079     e4157               -1
    i1079     e4158               -1
    i1079     e4191               -1
    i1079     e4192               -1
    i1080     e2777                1
    i1080     e2778                1
    i1080     e2779                1
    i1080     e2783               -1
    i1081     e2780                1
    i1081     e2781                1
    i1081     e2782                1
    i1081     e2783               -1
    i1082     e2784                1
    i1082     e2785                1
    i1082     e2786                1
    i1082     e2790               -1
    i1083     e2787                1
    i1083     e2788                1
    i1083     e2789                1
    i1083     e2790               -1
    i1084     e2791                1
    i1084     e2792                1
    i1084     e2793                1
    i1084     e2800               -1
    i1085     e2794                1
    i1085     e2795                1
    i1085     e2796                1
    i1085     e2800               -1
    i1086     e2797                1
    i1086     e2798                1
    i1086     e2799                1
    i1086     e2800               -1
    i1087     e2801                1
    i1087     e2826                1
    i1088     e2802                1
    i1088     e2807               -1
    i1088     e2808               -1
    i1088     e2814               -1
    i1088     e2815               -1
    i1088     e2824               -1
    i1088     e2825               -1
    i1088     e4216               -1
    i1088     e4217               -1
    i1088     e4233               -1
    i1088     e4234               -1
    i1088     e4250               -1
    i1088     e4251               -1
    i1088     e4267               -1
    i1088     e4268               -1
    i1089     e2809                1
    i1089     e2811               -1
    i1089     e2812               -1
    i1089     e2818               -1
    i1089     e2819               -1
    i1089     e4301               -1
    i1089     e4302               -1
    i1089     e4318               -1
    i1089     e4319               -1
    i1089     e4352               -1
    i1089     e4353               -1
    i1090     e2804               -1
    i1090     e2805               -1
    i1090     e2816                1
    i1090     e2821               -1
    i1090     e2822               -1
    i1090     e4284               -1
    i1090     e4285               -1
    i1090     e4335               -1
    i1090     e4336               -1
    i1090     e4369               -1
    i1090     e4370               -1
    i1091     e2803                1
    i1091     e2804                1
    i1091     e2805                1
    i1091     e2809               -1
    i1092     e2806                1
    i1092     e2807                1
    i1092     e2808                1
    i1092     e2809               -1
    i1093     e2810                1
    i1093     e2811                1
    i1093     e2812                1
    i1093     e2816               -1
    i1094     e2813                1
    i1094     e2814                1
    i1094     e2815                1
    i1094     e2816               -1
    i1095     e2817                1
    i1095     e2818                1
    i1095     e2819                1
    i1095     e2826               -1
    i1096     e2820                1
    i1096     e2821                1
    i1096     e2822                1
    i1096     e2826               -1
    i1097     e2823                1
    i1097     e2824                1
    i1097     e2825                1
    i1097     e2826               -1
    i1098     e2827                1
    i1098     e2939                1
    i1099     e2828                1
    i1099     e2836               -1
    i1099     e2837               -1
    i1099     e2846               -1
    i1099     e2847               -1
    i1099     e2856               -1
    i1099     e2857               -1
    i1099     e2866               -1
    i1099     e2867               -1
    i1099     e2876               -1
    i1099     e2877               -1
    i1099     e2886               -1
    i1099     e2887               -1
    i1099     e2896               -1
    i1099     e2897               -1
    i1099     e2906               -1
    i1099     e2907               -1
    i1099     e2968               -1
    i1099     e2969               -1
    i1099     e2999               -1
    i1099     e3000               -1
    i1100     e2838                1
    i1100     e2878                1
    i1100     e2910               -1
    i1100     e2911               -1
    i1100     e2922               -1
    i1100     e2923               -1
    i1100     e2941               -1
    i1100     e2942               -1
    i1100     e2953               -1
    i1100     e2954               -1
    i1100     e2972               -1
    i1100     e2973               -1
    i1100     e2984               -1
    i1100     e2985               -1
    i1100     e4780               -1
    i1100     e4781               -1
    i1100     e4800               -1
    i1100     e4801               -1
    i1100     e4820               -1
    i1100     e4821               -1
    i1100     e4840               -1
    i1100     e4841               -1
    i1100     e4964               -1
    i1100     e4965               -1
    i1100     e4984               -1
    i1100     e4985               -1
    i1101     e2830               -1
    i1101     e2831               -1
    i1101     e2840               -1
    i1101     e2841               -1
    i1101     e2850               -1
    i1101     e2851               -1
    i1101     e2860               -1
    i1101     e2861               -1
    i1101     e2870               -1
    i1101     e2871               -1
    i1101     e2880               -1
    i1101     e2881               -1
    i1101     e2890               -1
    i1101     e2891               -1
    i1101     e2900               -1
    i1101     e2901               -1
    i1101     e2934               -1
    i1101     e2935               -1
    i1101     e2970                1
    i1101     e2996               -1
    i1101     e2997               -1
    i1101     e4746               -1
    i1101     e4747               -1
    i1101     e5004               -1
    i1101     e5005               -1
    i1102     e2829                1
    i1102     e2830                1
    i1102     e2831                1
    i1102     e2838               -1
    i1103     e2833               -1
    i1103     e2834               -1
    i1103     e2843               -1
    i1103     e2844               -1
    i1103     e2853               -1
    i1103     e2854               -1
    i1103     e2863               -1
    i1103     e2864               -1
    i1103     e2873               -1
    i1103     e2874               -1
    i1103     e2883               -1
    i1103     e2884               -1
    i1103     e2893               -1
    i1103     e2894               -1
    i1103     e2903               -1
    i1103     e2904               -1
    i1103     e2937               -1
    i1103     e2938               -1
    i1103     e2965               -1
    i1103     e2966               -1
    i1103     e3001                1
    i1103     e4703               -1
    i1103     e4704               -1
    i1103     e5009               -1
    i1103     e5010               -1
    i1104     e2832                1
    i1104     e2833                1
    i1104     e2834                1
    i1104     e2838               -1
    i1105     e2835                1
    i1105     e2836                1
    i1105     e2837                1
    i1105     e2838               -1
    i1106     e2848                1
    i1106     e2888                1
    i1106     e2913               -1
    i1106     e2914               -1
    i1106     e2925               -1
    i1106     e2926               -1
    i1106     e2944               -1
    i1106     e2945               -1
    i1106     e2956               -1
    i1106     e2957               -1
    i1106     e2975               -1
    i1106     e2976               -1
    i1106     e2987               -1
    i1106     e2988               -1
    i1106     e4785               -1
    i1106     e4786               -1
    i1106     e4805               -1
    i1106     e4806               -1
    i1106     e4825               -1
    i1106     e4826               -1
    i1106     e4845               -1
    i1106     e4846               -1
    i1106     e4969               -1
    i1106     e4970               -1
    i1106     e4989               -1
    i1106     e4990               -1
    i1107     e2839                1
    i1107     e2840                1
    i1107     e2841                1
    i1107     e2848               -1
    i1108     e2842                1
    i1108     e2843                1
    i1108     e2844                1
    i1108     e2848               -1
    i1109     e2845                1
    i1109     e2846                1
    i1109     e2847                1
    i1109     e2848               -1
    i1110     e2858                1
    i1110     e2898                1
    i1110     e2916               -1
    i1110     e2917               -1
    i1110     e2928               -1
    i1110     e2929               -1
    i1110     e2947               -1
    i1110     e2948               -1
    i1110     e2959               -1
    i1110     e2960               -1
    i1110     e2978               -1
    i1110     e2979               -1
    i1110     e2990               -1
    i1110     e2991               -1
    i1110     e4790               -1
    i1110     e4791               -1
    i1110     e4810               -1
    i1110     e4811               -1
    i1110     e4830               -1
    i1110     e4831               -1
    i1110     e4850               -1
    i1110     e4851               -1
    i1110     e4974               -1
    i1110     e4975               -1
    i1110     e4994               -1
    i1110     e4995               -1
    i1111     e2849                1
    i1111     e2850                1
    i1111     e2851                1
    i1111     e2858               -1
    i1112     e2852                1
    i1112     e2853                1
    i1112     e2854                1
    i1112     e2858               -1
    i1113     e2855                1
    i1113     e2856                1
    i1113     e2857                1
    i1113     e2858               -1
    i1114     e2868                1
    i1114     e2908                1
    i1114     e2919               -1
    i1114     e2920               -1
    i1114     e2931               -1
    i1114     e2932               -1
    i1114     e2950               -1
    i1114     e2951               -1
    i1114     e2962               -1
    i1114     e2963               -1
    i1114     e2981               -1
    i1114     e2982               -1
    i1114     e2993               -1
    i1114     e2994               -1
    i1114     e4795               -1
    i1114     e4796               -1
    i1114     e4815               -1
    i1114     e4816               -1
    i1114     e4835               -1
    i1114     e4836               -1
    i1114     e4855               -1
    i1114     e4856               -1
    i1114     e4979               -1
    i1114     e4980               -1
    i1114     e4999               -1
    i1114     e5000               -1
    i1115     e2859                1
    i1115     e2860                1
    i1115     e2861                1
    i1115     e2868               -1
    i1116     e2862                1
    i1116     e2863                1
    i1116     e2864                1
    i1116     e2868               -1
    i1117     e2865                1
    i1117     e2866                1
    i1117     e2867                1
    i1117     e2868               -1
    i1118     e2869                1
    i1118     e2870                1
    i1118     e2871                1
    i1118     e2878               -1
    i1119     e2872                1
    i1119     e2873                1
    i1119     e2874                1
    i1119     e2878               -1
    i1120     e2875                1
    i1120     e2876                1
    i1120     e2877                1
    i1120     e2878               -1
    i1121     e2879                1
    i1121     e2880                1
    i1121     e2881                1
    i1121     e2888               -1
    i1122     e2882                1
    i1122     e2883                1
    i1122     e2884                1
    i1122     e2888               -1
    i1123     e2885                1
    i1123     e2886                1
    i1123     e2887                1
    i1123     e2888               -1
    i1124     e2889                1
    i1124     e2890                1
    i1124     e2891                1
    i1124     e2898               -1
    i1125     e2892                1
    i1125     e2893                1
    i1125     e2894                1
    i1125     e2898               -1
    i1126     e2895                1
    i1126     e2896                1
    i1126     e2897                1
    i1126     e2898               -1
    i1127     e2899                1
    i1127     e2900                1
    i1127     e2901                1
    i1127     e2908               -1
    i1128     e2902                1
    i1128     e2903                1
    i1128     e2904                1
    i1128     e2908               -1
    i1129     e2905                1
    i1129     e2906                1
    i1129     e2907                1
    i1129     e2908               -1
    i1130     e2909                1
    i1130     e2910                1
    i1130     e2911                1
    i1130     e2939               -1
    i1131     e2912                1
    i1131     e2913                1
    i1131     e2914                1
    i1131     e2939               -1
    i1132     e2915                1
    i1132     e2916                1
    i1132     e2917                1
    i1132     e2939               -1
    i1133     e2918                1
    i1133     e2919                1
    i1133     e2920                1
    i1133     e2939               -1
    i1134     e2921                1
    i1134     e2922                1
    i1134     e2923                1
    i1134     e2939               -1
    i1135     e2924                1
    i1135     e2925                1
    i1135     e2926                1
    i1135     e2939               -1
    i1136     e2927                1
    i1136     e2928                1
    i1136     e2929                1
    i1136     e2939               -1
    i1137     e2930                1
    i1137     e2931                1
    i1137     e2932                1
    i1137     e2939               -1
    i1138     e2933                1
    i1138     e2934                1
    i1138     e2935                1
    i1138     e2939               -1
    i1139     e2936                1
    i1139     e2937                1
    i1139     e2938                1
    i1139     e2939               -1
    i1140     e2940                1
    i1140     e2941                1
    i1140     e2942                1
    i1140     e2970               -1
    i1141     e2943                1
    i1141     e2944                1
    i1141     e2945                1
    i1141     e2970               -1
    i1142     e2946                1
    i1142     e2947                1
    i1142     e2948                1
    i1142     e2970               -1
    i1143     e2949                1
    i1143     e2950                1
    i1143     e2951                1
    i1143     e2970               -1
    i1144     e2952                1
    i1144     e2953                1
    i1144     e2954                1
    i1144     e2970               -1
    i1145     e2955                1
    i1145     e2956                1
    i1145     e2957                1
    i1145     e2970               -1
    i1146     e2958                1
    i1146     e2959                1
    i1146     e2960                1
    i1146     e2970               -1
    i1147     e2961                1
    i1147     e2962                1
    i1147     e2963                1
    i1147     e2970               -1
    i1148     e2964                1
    i1148     e2965                1
    i1148     e2966                1
    i1148     e2970               -1
    i1149     e2967                1
    i1149     e2968                1
    i1149     e2969                1
    i1149     e2970               -1
    i1150     e2971                1
    i1150     e2972                1
    i1150     e2973                1
    i1150     e3001               -1
    i1151     e2974                1
    i1151     e2975                1
    i1151     e2976                1
    i1151     e3001               -1
    i1152     e2977                1
    i1152     e2978                1
    i1152     e2979                1
    i1152     e3001               -1
    i1153     e2980                1
    i1153     e2981                1
    i1153     e2982                1
    i1153     e3001               -1
    i1154     e2983                1
    i1154     e2984                1
    i1154     e2985                1
    i1154     e3001               -1
    i1155     e2986                1
    i1155     e2987                1
    i1155     e2988                1
    i1155     e3001               -1
    i1156     e2989                1
    i1156     e2990                1
    i1156     e2991                1
    i1156     e3001               -1
    i1157     e2992                1
    i1157     e2993                1
    i1157     e2994                1
    i1157     e3001               -1
    i1158     e2995                1
    i1158     e2996                1
    i1158     e2997                1
    i1158     e3001               -1
    i1159     e2998                1
    i1159     e2999                1
    i1159     e3000                1
    i1159     e3001               -1
    i1160     e3002                1
    i1160     e3114                1
    i1161     e3003                1
    i1161     e3011               -1
    i1161     e3012               -1
    i1161     e3021               -1
    i1161     e3022               -1
    i1161     e3031               -1
    i1161     e3032               -1
    i1161     e3041               -1
    i1161     e3042               -1
    i1161     e3051               -1
    i1161     e3052               -1
    i1161     e3061               -1
    i1161     e3062               -1
    i1161     e3071               -1
    i1161     e3072               -1
    i1161     e3081               -1
    i1161     e3082               -1
    i1161     e3143               -1
    i1161     e3144               -1
    i1161     e3174               -1
    i1161     e3175               -1
    i1162     e3013                1
    i1162     e3053                1
    i1162     e3085               -1
    i1162     e3086               -1
    i1162     e3097               -1
    i1162     e3098               -1
    i1162     e3116               -1
    i1162     e3117               -1
    i1162     e3128               -1
    i1162     e3129               -1
    i1162     e3147               -1
    i1162     e3148               -1
    i1162     e3159               -1
    i1162     e3160               -1
    i1162     e4460               -1
    i1162     e4461               -1
    i1162     e4480               -1
    i1162     e4481               -1
    i1162     e4500               -1
    i1162     e4501               -1
    i1162     e4520               -1
    i1162     e4521               -1
    i1162     e4644               -1
    i1162     e4645               -1
    i1162     e4664               -1
    i1162     e4665               -1
    i1163     e3005               -1
    i1163     e3006               -1
    i1163     e3015               -1
    i1163     e3016               -1
    i1163     e3025               -1
    i1163     e3026               -1
    i1163     e3035               -1
    i1163     e3036               -1
    i1163     e3045               -1
    i1163     e3046               -1
    i1163     e3055               -1
    i1163     e3056               -1
    i1163     e3065               -1
    i1163     e3066               -1
    i1163     e3075               -1
    i1163     e3076               -1
    i1163     e3109               -1
    i1163     e3110               -1
    i1163     e3145                1
    i1163     e3171               -1
    i1163     e3172               -1
    i1163     e4423               -1
    i1163     e4424               -1
    i1163     e4684               -1
    i1163     e4685               -1
    i1164     e3004                1
    i1164     e3005                1
    i1164     e3006                1
    i1164     e3013               -1
    i1165     e3008               -1
    i1165     e3009               -1
    i1165     e3018               -1
    i1165     e3019               -1
    i1165     e3028               -1
    i1165     e3029               -1
    i1165     e3038               -1
    i1165     e3039               -1
    i1165     e3048               -1
    i1165     e3049               -1
    i1165     e3058               -1
    i1165     e3059               -1
    i1165     e3068               -1
    i1165     e3069               -1
    i1165     e3078               -1
    i1165     e3079               -1
    i1165     e3112               -1
    i1165     e3113               -1
    i1165     e3140               -1
    i1165     e3141               -1
    i1165     e3176                1
    i1165     e4380               -1
    i1165     e4381               -1
    i1165     e4689               -1
    i1165     e4690               -1
    i1166     e3007                1
    i1166     e3008                1
    i1166     e3009                1
    i1166     e3013               -1
    i1167     e3010                1
    i1167     e3011                1
    i1167     e3012                1
    i1167     e3013               -1
    i1168     e3023                1
    i1168     e3063                1
    i1168     e3088               -1
    i1168     e3089               -1
    i1168     e3100               -1
    i1168     e3101               -1
    i1168     e3119               -1
    i1168     e3120               -1
    i1168     e3131               -1
    i1168     e3132               -1
    i1168     e3150               -1
    i1168     e3151               -1
    i1168     e3162               -1
    i1168     e3163               -1
    i1168     e4465               -1
    i1168     e4466               -1
    i1168     e4485               -1
    i1168     e4486               -1
    i1168     e4505               -1
    i1168     e4506               -1
    i1168     e4525               -1
    i1168     e4526               -1
    i1168     e4649               -1
    i1168     e4650               -1
    i1168     e4669               -1
    i1168     e4670               -1
    i1169     e3014                1
    i1169     e3015                1
    i1169     e3016                1
    i1169     e3023               -1
    i1170     e3017                1
    i1170     e3018                1
    i1170     e3019                1
    i1170     e3023               -1
    i1171     e3020                1
    i1171     e3021                1
    i1171     e3022                1
    i1171     e3023               -1
    i1172     e3033                1
    i1172     e3073                1
    i1172     e3091               -1
    i1172     e3092               -1
    i1172     e3103               -1
    i1172     e3104               -1
    i1172     e3122               -1
    i1172     e3123               -1
    i1172     e3134               -1
    i1172     e3135               -1
    i1172     e3153               -1
    i1172     e3154               -1
    i1172     e3165               -1
    i1172     e3166               -1
    i1172     e4470               -1
    i1172     e4471               -1
    i1172     e4490               -1
    i1172     e4491               -1
    i1172     e4510               -1
    i1172     e4511               -1
    i1172     e4530               -1
    i1172     e4531               -1
    i1172     e4654               -1
    i1172     e4655               -1
    i1172     e4674               -1
    i1172     e4675               -1
    i1173     e3024                1
    i1173     e3025                1
    i1173     e3026                1
    i1173     e3033               -1
    i1174     e3027                1
    i1174     e3028                1
    i1174     e3029                1
    i1174     e3033               -1
    i1175     e3030                1
    i1175     e3031                1
    i1175     e3032                1
    i1175     e3033               -1
    i1176     e3043                1
    i1176     e3083                1
    i1176     e3094               -1
    i1176     e3095               -1
    i1176     e3106               -1
    i1176     e3107               -1
    i1176     e3125               -1
    i1176     e3126               -1
    i1176     e3137               -1
    i1176     e3138               -1
    i1176     e3156               -1
    i1176     e3157               -1
    i1176     e3168               -1
    i1176     e3169               -1
    i1176     e4475               -1
    i1176     e4476               -1
    i1176     e4495               -1
    i1176     e4496               -1
    i1176     e4515               -1
    i1176     e4516               -1
    i1176     e4535               -1
    i1176     e4536               -1
    i1176     e4659               -1
    i1176     e4660               -1
    i1176     e4679               -1
    i1176     e4680               -1
    i1177     e3034                1
    i1177     e3035                1
    i1177     e3036                1
    i1177     e3043               -1
    i1178     e3037                1
    i1178     e3038                1
    i1178     e3039                1
    i1178     e3043               -1
    i1179     e3040                1
    i1179     e3041                1
    i1179     e3042                1
    i1179     e3043               -1
    i1180     e3044                1
    i1180     e3045                1
    i1180     e3046                1
    i1180     e3053               -1
    i1181     e3047                1
    i1181     e3048                1
    i1181     e3049                1
    i1181     e3053               -1
    i1182     e3050                1
    i1182     e3051                1
    i1182     e3052                1
    i1182     e3053               -1
    i1183     e3054                1
    i1183     e3055                1
    i1183     e3056                1
    i1183     e3063               -1
    i1184     e3057                1
    i1184     e3058                1
    i1184     e3059                1
    i1184     e3063               -1
    i1185     e3060                1
    i1185     e3061                1
    i1185     e3062                1
    i1185     e3063               -1
    i1186     e3064                1
    i1186     e3065                1
    i1186     e3066                1
    i1186     e3073               -1
    i1187     e3067                1
    i1187     e3068                1
    i1187     e3069                1
    i1187     e3073               -1
    i1188     e3070                1
    i1188     e3071                1
    i1188     e3072                1
    i1188     e3073               -1
    i1189     e3074                1
    i1189     e3075                1
    i1189     e3076                1
    i1189     e3083               -1
    i1190     e3077                1
    i1190     e3078                1
    i1190     e3079                1
    i1190     e3083               -1
    i1191     e3080                1
    i1191     e3081                1
    i1191     e3082                1
    i1191     e3083               -1
    i1192     e3084                1
    i1192     e3085                1
    i1192     e3086                1
    i1192     e3114               -1
    i1193     e3087                1
    i1193     e3088                1
    i1193     e3089                1
    i1193     e3114               -1
    i1194     e3090                1
    i1194     e3091                1
    i1194     e3092                1
    i1194     e3114               -1
    i1195     e3093                1
    i1195     e3094                1
    i1195     e3095                1
    i1195     e3114               -1
    i1196     e3096                1
    i1196     e3097                1
    i1196     e3098                1
    i1196     e3114               -1
    i1197     e3099                1
    i1197     e3100                1
    i1197     e3101                1
    i1197     e3114               -1
    i1198     e3102                1
    i1198     e3103                1
    i1198     e3104                1
    i1198     e3114               -1
    i1199     e3105                1
    i1199     e3106                1
    i1199     e3107                1
    i1199     e3114               -1
    i1200     e3108                1
    i1200     e3109                1
    i1200     e3110                1
    i1200     e3114               -1
    i1201     e3111                1
    i1201     e3112                1
    i1201     e3113                1
    i1201     e3114               -1
    i1202     e3115                1
    i1202     e3116                1
    i1202     e3117                1
    i1202     e3145               -1
    i1203     e3118                1
    i1203     e3119                1
    i1203     e3120                1
    i1203     e3145               -1
    i1204     e3121                1
    i1204     e3122                1
    i1204     e3123                1
    i1204     e3145               -1
    i1205     e3124                1
    i1205     e3125                1
    i1205     e3126                1
    i1205     e3145               -1
    i1206     e3127                1
    i1206     e3128                1
    i1206     e3129                1
    i1206     e3145               -1
    i1207     e3130                1
    i1207     e3131                1
    i1207     e3132                1
    i1207     e3145               -1
    i1208     e3133                1
    i1208     e3134                1
    i1208     e3135                1
    i1208     e3145               -1
    i1209     e3136                1
    i1209     e3137                1
    i1209     e3138                1
    i1209     e3145               -1
    i1210     e3139                1
    i1210     e3140                1
    i1210     e3141                1
    i1210     e3145               -1
    i1211     e3142                1
    i1211     e3143                1
    i1211     e3144                1
    i1211     e3145               -1
    i1212     e3146                1
    i1212     e3147                1
    i1212     e3148                1
    i1212     e3176               -1
    i1213     e3149                1
    i1213     e3150                1
    i1213     e3151                1
    i1213     e3176               -1
    i1214     e3152                1
    i1214     e3153                1
    i1214     e3154                1
    i1214     e3176               -1
    i1215     e3155                1
    i1215     e3156                1
    i1215     e3157                1
    i1215     e3176               -1
    i1216     e3158                1
    i1216     e3159                1
    i1216     e3160                1
    i1216     e3176               -1
    i1217     e3161                1
    i1217     e3162                1
    i1217     e3163                1
    i1217     e3176               -1
    i1218     e3164                1
    i1218     e3165                1
    i1218     e3166                1
    i1218     e3176               -1
    i1219     e3167                1
    i1219     e3168                1
    i1219     e3169                1
    i1219     e3176               -1
    i1220     e3170                1
    i1220     e3171                1
    i1220     e3172                1
    i1220     e3176               -1
    i1221     e3173                1
    i1221     e3174                1
    i1221     e3175                1
    i1221     e3176               -1
    i1222     e3177                1
    i1222     e3178                1
    i1222     e3305               -2
    i1222     e3306               -2
    i1223     e3177                1
    i1223     e3178                1
    i1223     e3307               -2
    i1223     e3308               -2
    i1224     e3179                1
    i1224     e3180                1
    i1224     e3309               -2
    i1224     e3310               -2
    i1225     e3179                1
    i1225     e3180                1
    i1225     e3311               -2
    i1225     e3312               -2
    i1226     e3181                1
    i1226     e3182                1
    i1227     e3181                1
    i1227     e3182                1
    i1227     e3396               -7
    i1227     e3397               -7
    i1228     e3181                1
    i1228     e3182                1
    i1228     e3328               -7
    i1228     e3329               -7
    i1229     e3183                1
    i1229     e3184                1
    i1229     e3413               -7
    i1229     e3414               -7
    i1230     e3183                1
    i1230     e3184                1
    i1231     e3183                1
    i1231     e3184                1
    i1231     e3345               -7
    i1231     e3346               -7
    i1232     e3185                1
    i1232     e3186                1
    i1232     e3483               -2
    i1232     e3484               -2
    i1233     e3185                1
    i1233     e3186                1
    i1233     e3485               -2
    i1233     e3486               -2
    i1234     e3187                1
    i1234     e3188                1
    i1234     e3487               -2
    i1234     e3488               -2
    i1235     e3187                1
    i1235     e3188                1
    i1235     e3489               -2
    i1235     e3490               -2
    i1236     e3189                1
    i1236     e3190                1
    i1237     e3189                1
    i1237     e3190                1
    i1237     e3574               -7
    i1237     e3575               -7
    i1238     e3189                1
    i1238     e3190                1
    i1238     e3506               -7
    i1238     e3507               -7
    i1239     e3191                1
    i1239     e3192                1
    i1239     e3591               -7
    i1239     e3592               -7
    i1240     e3191                1
    i1240     e3192                1
    i1241     e3191                1
    i1241     e3192                1
    i1241     e3523               -7
    i1241     e3524               -7
    i1242     e3193                1
    i1242     e3194                1
    i1242     e3661               -2
    i1242     e3662               -2
    i1243     e3193                1
    i1243     e3194                1
    i1243     e3663               -2
    i1243     e3664               -2
    i1244     e3195                1
    i1244     e3196                1
    i1244     e3665               -2
    i1244     e3666               -2
    i1245     e3195                1
    i1245     e3196                1
    i1245     e3667               -2
    i1245     e3668               -2
    i1246     e3197                1
    i1246     e3198                1
    i1247     e3197                1
    i1247     e3198                1
    i1247     e3752               -7
    i1247     e3753               -7
    i1248     e3197                1
    i1248     e3198                1
    i1248     e3684               -7
    i1248     e3685               -7
    i1249     e3199                1
    i1249     e3200                1
    i1249     e3769               -7
    i1249     e3770               -7
    i1250     e3199                1
    i1250     e3200                1
    i1251     e3199                1
    i1251     e3200                1
    i1251     e3701               -7
    i1251     e3702               -7
    i1252     e3201                1
    i1252     e3202                1
    i1252     e3209                1
    i1252     e3210                1
    i1252     e3265                1
    i1252     e3266                1
    i1252     e3273                1
    i1252     e3274                1
    i1252     e4545               -4
    i1252     e4546               -4
    i1253     e3201                1
    i1253     e3202                1
    i1253     e3209                1
    i1253     e3210                1
    i1253     e3265                1
    i1253     e3266                1
    i1253     e3273                1
    i1253     e3274                1
    i1253     e4553               -4
    i1253     e4554               -4
    i1254     e3201                1
    i1254     e3202                1
    i1254     e3209                1
    i1254     e3210                1
    i1254     e3265                1
    i1254     e3266                1
    i1254     e3273                1
    i1254     e3274                1
    i1254     e4561               -4
    i1254     e4562               -4
    i1254     e5087               -1
    i1254     e5093                1
    i1254     e5094                1
    i1254     e5119               -1
    i1254     e5125                1
    i1254     e5126                1
    i1255     e3201                1
    i1255     e3202                1
    i1255     e3209                1
    i1255     e3210                1
    i1255     e3265                1
    i1255     e3266                1
    i1255     e3273                1
    i1255     e3274                1
    i1255     e4569               -4
    i1255     e4570               -4
    i1256     e3203                1
    i1256     e3204                1
    i1256     e3211                1
    i1256     e3212                1
    i1256     e3267                1
    i1256     e3268                1
    i1256     e3275                1
    i1256     e3276                1
    i1256     e4574               -3
    i1256     e4575               -3
    i1257     e3203                1
    i1257     e3204                1
    i1257     e3211                1
    i1257     e3212                1
    i1257     e3267                1
    i1257     e3268                1
    i1257     e3275                1
    i1257     e3276                1
    i1257     e4579               -3
    i1257     e4580               -3
    i1258     e3203                1
    i1258     e3204                1
    i1258     e3211                1
    i1258     e3212                1
    i1258     e3267                1
    i1258     e3268                1
    i1258     e3275                1
    i1258     e3276                1
    i1258     e4584               -3
    i1258     e4585               -3
    i1258     e5095               -1
    i1258     e5101                1
    i1258     e5102                1
    i1258     e5127               -1
    i1258     e5133                1
    i1258     e5134                1
    i1259     e3203                1
    i1259     e3204                1
    i1259     e3211                1
    i1259     e3212                1
    i1259     e3267                1
    i1259     e3268                1
    i1259     e3275                1
    i1259     e3276                1
    i1259     e4589               -3
    i1259     e4590               -3
    i1260     e3205                1
    i1260     e3206                1
    i1260     e3213                1
    i1260     e3214                1
    i1260     e3269                1
    i1260     e3270                1
    i1260     e3277                1
    i1260     e3278                1
    i1260     e4597               -4
    i1260     e4598               -4
    i1261     e3205                1
    i1261     e3206                1
    i1261     e3213                1
    i1261     e3214                1
    i1261     e3269                1
    i1261     e3270                1
    i1261     e3277                1
    i1261     e3278                1
    i1261     e4605               -4
    i1261     e4606               -4
    i1262     e3205                1
    i1262     e3206                1
    i1262     e3213                1
    i1262     e3214                1
    i1262     e3269                1
    i1262     e3270                1
    i1262     e3277                1
    i1262     e3278                1
    i1262     e4613               -4
    i1262     e4614               -4
    i1262     e5103               -1
    i1262     e5109                1
    i1262     e5110                1
    i1262     e5135               -1
    i1262     e5141                1
    i1262     e5142                1
    i1263     e3205                1
    i1263     e3206                1
    i1263     e3213                1
    i1263     e3214                1
    i1263     e3269                1
    i1263     e3270                1
    i1263     e3277                1
    i1263     e3278                1
    i1263     e4621               -4
    i1263     e4622               -4
    i1264     e3207                1
    i1264     e3208                1
    i1264     e3215                1
    i1264     e3216                1
    i1264     e3271                1
    i1264     e3272                1
    i1264     e3279                1
    i1264     e3280                1
    i1264     e4626               -3
    i1264     e4627               -3
    i1265     e3207                1
    i1265     e3208                1
    i1265     e3215                1
    i1265     e3216                1
    i1265     e3271                1
    i1265     e3272                1
    i1265     e3279                1
    i1265     e3280                1
    i1265     e4631               -3
    i1265     e4632               -3
    i1266     e3207                1
    i1266     e3208                1
    i1266     e3215                1
    i1266     e3216                1
    i1266     e3271                1
    i1266     e3272                1
    i1266     e3279                1
    i1266     e3280                1
    i1266     e4636               -3
    i1266     e4637               -3
    i1266     e5111               -1
    i1266     e5117                1
    i1266     e5118                1
    i1266     e5143               -1
    i1266     e5149                1
    i1266     e5150                1
    i1267     e3207                1
    i1267     e3208                1
    i1267     e3215                1
    i1267     e3216                1
    i1267     e3271                1
    i1267     e3272                1
    i1267     e3279                1
    i1267     e3280                1
    i1267     e4641               -3
    i1267     e4642               -3
    i1268     e3217                2
    i1268     e3218                2
    i1268     e3281                2
    i1268     e3282                2
    i1268     e4462               -3
    i1268     e4463               -3
    i1268     e4482               -3
    i1268     e4483               -3
    i1269     e3217                2
    i1269     e3218                2
    i1269     e3281                2
    i1269     e3282                2
    i1269     e4467               -3
    i1269     e4468               -3
    i1269     e4487               -3
    i1269     e4488               -3
    i1270     e3217                2
    i1270     e3218                2
    i1270     e3281                2
    i1270     e3282                2
    i1270     e4472               -3
    i1270     e4473               -3
    i1270     e4492               -3
    i1270     e4493               -3
    i1271     e3217                2
    i1271     e3218                2
    i1271     e3281                2
    i1271     e3282                2
    i1271     e4477               -3
    i1271     e4478               -3
    i1271     e4497               -3
    i1271     e4498               -3
    i1272     e3217                1
    i1272     e3218                1
    i1272     e3281                1
    i1272     e3282                1
    i1273     e3217                1
    i1273     e3218                1
    i1273     e3281                1
    i1273     e3282                1
    i1273     e4394               -9
    i1273     e4395               -9
    i1274     e3217                1
    i1274     e3218                1
    i1274     e3281                1
    i1274     e3282                1
    i1274     e5071               -1
    i1274     e5077                1
    i1274     e5078                1
    i1275     e3217                1
    i1275     e3218                1
    i1275     e3281                1
    i1275     e3282                1
    i1275     e4414               -8
    i1275     e4415               -8
    i1276     e3219                2
    i1276     e3220                2
    i1276     e3283                2
    i1276     e3284                2
    i1276     e4502               -3
    i1276     e4503               -3
    i1276     e4522               -3
    i1276     e4523               -3
    i1277     e3219                2
    i1277     e3220                2
    i1277     e3283                2
    i1277     e3284                2
    i1277     e4507               -3
    i1277     e4508               -3
    i1277     e4527               -3
    i1277     e4528               -3
    i1278     e3219                2
    i1278     e3220                2
    i1278     e3283                2
    i1278     e3284                2
    i1278     e4512               -3
    i1278     e4513               -3
    i1278     e4532               -3
    i1278     e4533               -3
    i1279     e3219                2
    i1279     e3220                2
    i1279     e3283                2
    i1279     e3284                2
    i1279     e4517               -3
    i1279     e4518               -3
    i1279     e4537               -3
    i1279     e4538               -3
    i1280     e3219                1
    i1280     e3220                1
    i1280     e3283                1
    i1280     e3284                1
    i1280     e4437               -9
    i1280     e4438               -9
    i1281     e3219                1
    i1281     e3220                1
    i1281     e3283                1
    i1281     e3284                1
    i1282     e3219                1
    i1282     e3220                1
    i1282     e3283                1
    i1282     e3284                1
    i1282     e5079               -1
    i1282     e5085                1
    i1282     e5086                1
    i1283     e3219                1
    i1283     e3220                1
    i1283     e3283                1
    i1283     e3284                1
    i1283     e4457               -8
    i1283     e4458               -8
    i1284     e3221                1
    i1284     e3222                1
    i1284     e3229                1
    i1284     e3230                1
    i1284     e3285                1
    i1284     e3286                1
    i1284     e3293                1
    i1284     e3294                1
    i1284     e4865               -4
    i1284     e4866               -4
    i1285     e3221                1
    i1285     e3222                1
    i1285     e3229                1
    i1285     e3230                1
    i1285     e3285                1
    i1285     e3286                1
    i1285     e3293                1
    i1285     e3294                1
    i1285     e4873               -4
    i1285     e4874               -4
    i1286     e3221                1
    i1286     e3222                1
    i1286     e3229                1
    i1286     e3230                1
    i1286     e3285                1
    i1286     e3286                1
    i1286     e3293                1
    i1286     e3294                1
    i1286     e4881               -4
    i1286     e4882               -4
    i1287     e3221                1
    i1287     e3222                1
    i1287     e3229                1
    i1287     e3230                1
    i1287     e3285                1
    i1287     e3286                1
    i1287     e3293                1
    i1287     e3294                1
    i1287     e4889               -4
    i1287     e4890               -4
    i1287     e5088               -1
    i1287     e5093                1
    i1287     e5094                1
    i1287     e5120               -1
    i1287     e5125                1
    i1287     e5126                1
    i1288     e3223                1
    i1288     e3224                1
    i1288     e3231                1
    i1288     e3232                1
    i1288     e3287                1
    i1288     e3288                1
    i1288     e3295                1
    i1288     e3296                1
    i1288     e4894               -3
    i1288     e4895               -3
    i1289     e3223                1
    i1289     e3224                1
    i1289     e3231                1
    i1289     e3232                1
    i1289     e3287                1
    i1289     e3288                1
    i1289     e3295                1
    i1289     e3296                1
    i1289     e4899               -3
    i1289     e4900               -3
    i1290     e3223                1
    i1290     e3224                1
    i1290     e3231                1
    i1290     e3232                1
    i1290     e3287                1
    i1290     e3288                1
    i1290     e3295                1
    i1290     e3296                1
    i1290     e4904               -3
    i1290     e4905               -3
    i1291     e3223                1
    i1291     e3224                1
    i1291     e3231                1
    i1291     e3232                1
    i1291     e3287                1
    i1291     e3288                1
    i1291     e3295                1
    i1291     e3296                1
    i1291     e4909               -3
    i1291     e4910               -3
    i1291     e5096               -1
    i1291     e5101                1
    i1291     e5102                1
    i1291     e5128               -1
    i1291     e5133                1
    i1291     e5134                1
    i1292     e3225                1
    i1292     e3226                1
    i1292     e3233                1
    i1292     e3234                1
    i1292     e3289                1
    i1292     e3290                1
    i1292     e3297                1
    i1292     e3298                1
    i1292     e4917               -4
    i1292     e4918               -4
    i1293     e3225                1
    i1293     e3226                1
    i1293     e3233                1
    i1293     e3234                1
    i1293     e3289                1
    i1293     e3290                1
    i1293     e3297                1
    i1293     e3298                1
    i1293     e4925               -4
    i1293     e4926               -4
    i1294     e3225                1
    i1294     e3226                1
    i1294     e3233                1
    i1294     e3234                1
    i1294     e3289                1
    i1294     e3290                1
    i1294     e3297                1
    i1294     e3298                1
    i1294     e4933               -4
    i1294     e4934               -4
    i1295     e3225                1
    i1295     e3226                1
    i1295     e3233                1
    i1295     e3234                1
    i1295     e3289                1
    i1295     e3290                1
    i1295     e3297                1
    i1295     e3298                1
    i1295     e4941               -4
    i1295     e4942               -4
    i1295     e5104               -1
    i1295     e5109                1
    i1295     e5110                1
    i1295     e5136               -1
    i1295     e5141                1
    i1295     e5142                1
    i1296     e3227                1
    i1296     e3228                1
    i1296     e3235                1
    i1296     e3236                1
    i1296     e3291                1
    i1296     e3292                1
    i1296     e3299                1
    i1296     e3300                1
    i1296     e4946               -3
    i1296     e4947               -3
    i1297     e3227                1
    i1297     e3228                1
    i1297     e3235                1
    i1297     e3236                1
    i1297     e3291                1
    i1297     e3292                1
    i1297     e3299                1
    i1297     e3300                1
    i1297     e4951               -3
    i1297     e4952               -3
    i1298     e3227                1
    i1298     e3228                1
    i1298     e3235                1
    i1298     e3236                1
    i1298     e3291                1
    i1298     e3292                1
    i1298     e3299                1
    i1298     e3300                1
    i1298     e4956               -3
    i1298     e4957               -3
    i1299     e3227                1
    i1299     e3228                1
    i1299     e3235                1
    i1299     e3236                1
    i1299     e3291                1
    i1299     e3292                1
    i1299     e3299                1
    i1299     e3300                1
    i1299     e4961               -3
    i1299     e4962               -3
    i1299     e5112               -1
    i1299     e5117                1
    i1299     e5118                1
    i1299     e5144               -1
    i1299     e5149                1
    i1299     e5150                1
    i1300     e3237                2
    i1300     e3238                2
    i1300     e3301                2
    i1300     e3302                2
    i1300     e4782               -3
    i1300     e4783               -3
    i1300     e4802               -3
    i1300     e4803               -3
    i1301     e3237                2
    i1301     e3238                2
    i1301     e3301                2
    i1301     e3302                2
    i1301     e4787               -3
    i1301     e4788               -3
    i1301     e4807               -3
    i1301     e4808               -3
    i1302     e3237                2
    i1302     e3238                2
    i1302     e3301                2
    i1302     e3302                2
    i1302     e4792               -3
    i1302     e4793               -3
    i1302     e4812               -3
    i1302     e4813               -3
    i1303     e3237                2
    i1303     e3238                2
    i1303     e3301                2
    i1303     e3302                2
    i1303     e4797               -3
    i1303     e4798               -3
    i1303     e4817               -3
    i1303     e4818               -3
    i1304     e3237                1
    i1304     e3238                1
    i1304     e3301                1
    i1304     e3302                1
    i1305     e3237                1
    i1305     e3238                1
    i1305     e3301                1
    i1305     e3302                1
    i1305     e4714               -9
    i1305     e4715               -9
    i1306     e3237                1
    i1306     e3238                1
    i1306     e3301                1
    i1306     e3302                1
    i1306     e4734               -8
    i1306     e4735               -8
    i1307     e3237                1
    i1307     e3238                1
    i1307     e3301                1
    i1307     e3302                1
    i1307     e5072               -1
    i1307     e5077                1
    i1307     e5078                1
    i1308     e3239                2
    i1308     e3240                2
    i1308     e3303                2
    i1308     e3304                2
    i1308     e4822               -3
    i1308     e4823               -3
    i1308     e4842               -3
    i1308     e4843               -3
    i1309     e3239                2
    i1309     e3240                2
    i1309     e3303                2
    i1309     e3304                2
    i1309     e4827               -3
    i1309     e4828               -3
    i1309     e4847               -3
    i1309     e4848               -3
    i1310     e3239                2
    i1310     e3240                2
    i1310     e3303                2
    i1310     e3304                2
    i1310     e4832               -3
    i1310     e4833               -3
    i1310     e4852               -3
    i1310     e4853               -3
    i1311     e3239                2
    i1311     e3240                2
    i1311     e3303                2
    i1311     e3304                2
    i1311     e4837               -3
    i1311     e4838               -3
    i1311     e4857               -3
    i1311     e4858               -3
    i1312     e3239                1
    i1312     e3240                1
    i1312     e3303                1
    i1312     e3304                1
    i1312     e4757               -9
    i1312     e4758               -9
    i1313     e3239                1
    i1313     e3240                1
    i1313     e3303                1
    i1313     e3304                1
    i1314     e3239                1
    i1314     e3240                1
    i1314     e3303                1
    i1314     e3304                1
    i1314     e4777               -8
    i1314     e4778               -8
    i1315     e3239                1
    i1315     e3240                1
    i1315     e3303                1
    i1315     e3304                1
    i1315     e5080               -1
    i1315     e5085                1
    i1315     e5086                1
    i1316     e3241                1
    i1316     e3242                1
    i1316     e3839               -2
    i1316     e3840               -2
    i1317     e3241                1
    i1317     e3242                1
    i1317     e3841               -2
    i1317     e3842               -2
    i1318     e3243                1
    i1318     e3244                1
    i1318     e3843               -2
    i1318     e3844               -2
    i1319     e3243                1
    i1319     e3244                1
    i1319     e3845               -2
    i1319     e3846               -2
    i1320     e3245                1
    i1320     e3246                1
    i1321     e3245                1
    i1321     e3246                1
    i1321     e3930               -7
    i1321     e3931               -7
    i1322     e3245                1
    i1322     e3246                1
    i1322     e3862               -7
    i1322     e3863               -7
    i1323     e3247                1
    i1323     e3248                1
    i1323     e3947               -7
    i1323     e3948               -7
    i1324     e3247                1
    i1324     e3248                1
    i1325     e3247                1
    i1325     e3248                1
    i1325     e3879               -7
    i1325     e3880               -7
    i1326     e3249                1
    i1326     e3250                1
    i1326     e4017               -2
    i1326     e4018               -2
    i1327     e3249                1
    i1327     e3250                1
    i1327     e4019               -2
    i1327     e4020               -2
    i1328     e3251                1
    i1328     e3252                1
    i1328     e4021               -2
    i1328     e4022               -2
    i1329     e3251                1
    i1329     e3252                1
    i1329     e4023               -2
    i1329     e4024               -2
    i1330     e3253                1
    i1330     e3254                1
    i1331     e3253                1
    i1331     e3254                1
    i1331     e4108               -7
    i1331     e4109               -7
    i1332     e3253                1
    i1332     e3254                1
    i1332     e4040               -7
    i1332     e4041               -7
    i1333     e3255                1
    i1333     e3256                1
    i1333     e4125               -7
    i1333     e4126               -7
    i1334     e3255                1
    i1334     e3256                1
    i1335     e3255                1
    i1335     e3256                1
    i1335     e4057               -7
    i1335     e4058               -7
    i1336     e3257                1
    i1336     e3258                1
    i1336     e4195               -2
    i1336     e4196               -2
    i1337     e3257                1
    i1337     e3258                1
    i1337     e4197               -2
    i1337     e4198               -2
    i1338     e3259                1
    i1338     e3260                1
    i1338     e4199               -2
    i1338     e4200               -2
    i1339     e3259                1
    i1339     e3260                1
    i1339     e4201               -2
    i1339     e4202               -2
    i1340     e3261                1
    i1340     e3262                1
    i1341     e3261                1
    i1341     e3262                1
    i1341     e4286               -7
    i1341     e4287               -7
    i1342     e3261                1
    i1342     e3262                1
    i1342     e4218               -7
    i1342     e4219               -7
    i1343     e3263                1
    i1343     e3264                1
    i1343     e4303               -7
    i1343     e4304               -7
    i1344     e3263                1
    i1344     e3264                1
    i1345     e3263                1
    i1345     e3264                1
    i1345     e4235               -7
    i1345     e4236               -7
    i1346     e3313                1
    i1346     e3314                1
    i1346     e3315                1
    i1346     e3328                1
    i1346     e3329                1
    i1347     e3316                1
    i1347     e3317                1
    i1347     e3318                1
    i1347     e3328                1
    i1347     e3329                1
    i1348     e3319                1
    i1348     e3320                1
    i1348     e3321                1
    i1348     e3328                1
    i1348     e3329                1
    i1349     e3322                1
    i1349     e3323                1
    i1349     e3324                1
    i1349     e3328                1
    i1349     e3329                1
    i1350     e3325                1
    i1350     e3326                1
    i1350     e3327                1
    i1350     e3328                1
    i1350     e3329                1
    i1351     e3330                1
    i1351     e3331                1
    i1351     e3332                1
    i1351     e3345                1
    i1351     e3346                1
    i1352     e3333                1
    i1352     e3334                1
    i1352     e3335                1
    i1352     e3345                1
    i1352     e3346                1
    i1353     e3336                1
    i1353     e3337                1
    i1353     e3338                1
    i1353     e3345                1
    i1353     e3346                1
    i1354     e3339                1
    i1354     e3340                1
    i1354     e3341                1
    i1354     e3345                1
    i1354     e3346                1
    i1355     e3342                1
    i1355     e3343                1
    i1355     e3344                1
    i1355     e3345                1
    i1355     e3346                1
    i1356     e3347                1
    i1356     e3348                1
    i1356     e3349                1
    i1356     e3362                1
    i1356     e3363                1
    i1357     e3350                1
    i1357     e3351                1
    i1357     e3352                1
    i1357     e3362                1
    i1357     e3363                1
    i1358     e3353                1
    i1358     e3354                1
    i1358     e3355                1
    i1358     e3362                1
    i1358     e3363                1
    i1359     e3356                1
    i1359     e3357                1
    i1359     e3358                1
    i1359     e3362                1
    i1359     e3363                1
    i1360     e3359                1
    i1360     e3360                1
    i1360     e3361                1
    i1360     e3362                1
    i1360     e3363                1
    i1361     e3362               -7
    i1361     e3363               -7
    i1362     e3364                1
    i1362     e3365                1
    i1362     e3366                1
    i1362     e3379                1
    i1362     e3380                1
    i1363     e3367                1
    i1363     e3368                1
    i1363     e3369                1
    i1363     e3379                1
    i1363     e3380                1
    i1364     e3370                1
    i1364     e3371                1
    i1364     e3372                1
    i1364     e3379                1
    i1364     e3380                1
    i1365     e3373                1
    i1365     e3374                1
    i1365     e3375                1
    i1365     e3379                1
    i1365     e3380                1
    i1366     e3376                1
    i1366     e3377                1
    i1366     e3378                1
    i1366     e3379                1
    i1366     e3380                1
    i1367     e3379               -7
    i1367     e3380               -7
    i1368     e3381                1
    i1368     e3382                1
    i1368     e3383                1
    i1368     e3396                1
    i1368     e3397                1
    i1369     e3384                1
    i1369     e3385                1
    i1369     e3386                1
    i1369     e3396                1
    i1369     e3397                1
    i1370     e3387                1
    i1370     e3388                1
    i1370     e3389                1
    i1370     e3396                1
    i1370     e3397                1
    i1371     e3390                1
    i1371     e3391                1
    i1371     e3392                1
    i1371     e3396                1
    i1371     e3397                1
    i1372     e3393                1
    i1372     e3394                1
    i1372     e3395                1
    i1372     e3396                1
    i1372     e3397                1
    i1373     e3398                1
    i1373     e3399                1
    i1373     e3400                1
    i1373     e3413                1
    i1373     e3414                1
    i1374     e3401                1
    i1374     e3402                1
    i1374     e3403                1
    i1374     e3413                1
    i1374     e3414                1
    i1375     e3404                1
    i1375     e3405                1
    i1375     e3406                1
    i1375     e3413                1
    i1375     e3414                1
    i1376     e3407                1
    i1376     e3408                1
    i1376     e3409                1
    i1376     e3413                1
    i1376     e3414                1
    i1377     e3410                1
    i1377     e3411                1
    i1377     e3412                1
    i1377     e3413                1
    i1377     e3414                1
    i1378     e3415                1
    i1378     e3416                1
    i1378     e3417                1
    i1378     e3430                1
    i1378     e3431                1
    i1379     e3418                1
    i1379     e3419                1
    i1379     e3420                1
    i1379     e3430                1
    i1379     e3431                1
    i1380     e3421                1
    i1380     e3422                1
    i1380     e3423                1
    i1380     e3430                1
    i1380     e3431                1
    i1381     e3424                1
    i1381     e3425                1
    i1381     e3426                1
    i1381     e3430                1
    i1381     e3431                1
    i1382     e3427                1
    i1382     e3428                1
    i1382     e3429                1
    i1382     e3430                1
    i1382     e3431                1
    i1383     e3430               -7
    i1383     e3431               -7
    i1384     e3432                1
    i1384     e3433                1
    i1384     e3434                1
    i1384     e3447                1
    i1384     e3448                1
    i1385     e3435                1
    i1385     e3436                1
    i1385     e3437                1
    i1385     e3447                1
    i1385     e3448                1
    i1386     e3438                1
    i1386     e3439                1
    i1386     e3440                1
    i1386     e3447                1
    i1386     e3448                1
    i1387     e3441                1
    i1387     e3442                1
    i1387     e3443                1
    i1387     e3447                1
    i1387     e3448                1
    i1388     e3444                1
    i1388     e3445                1
    i1388     e3446                1
    i1388     e3447                1
    i1388     e3448                1
    i1389     e3447               -7
    i1389     e3448               -7
    i1390     e3449                1
    i1390     e3450                1
    i1390     e3451                1
    i1390     e3464                1
    i1390     e3465                1
    i1391     e3452                1
    i1391     e3453                1
    i1391     e3454                1
    i1391     e3464                1
    i1391     e3465                1
    i1392     e3455                1
    i1392     e3456                1
    i1392     e3457                1
    i1392     e3464                1
    i1392     e3465                1
    i1393     e3458                1
    i1393     e3459                1
    i1393     e3460                1
    i1393     e3464                1
    i1393     e3465                1
    i1394     e3461                1
    i1394     e3462                1
    i1394     e3463                1
    i1394     e3464                1
    i1394     e3465                1
    i1395     e3464               -7
    i1395     e3465               -7
    i1396     e3466                1
    i1396     e3467                1
    i1396     e3468                1
    i1396     e3481                1
    i1396     e3482                1
    i1397     e3469                1
    i1397     e3470                1
    i1397     e3471                1
    i1397     e3481                1
    i1397     e3482                1
    i1398     e3472                1
    i1398     e3473                1
    i1398     e3474                1
    i1398     e3481                1
    i1398     e3482                1
    i1399     e3475                1
    i1399     e3476                1
    i1399     e3477                1
    i1399     e3481                1
    i1399     e3482                1
    i1400     e3478                1
    i1400     e3479                1
    i1400     e3480                1
    i1400     e3481                1
    i1400     e3482                1
    i1401     e3481               -7
    i1401     e3482               -7
    i1402     e3491                1
    i1402     e3492                1
    i1402     e3493                1
    i1402     e3506                1
    i1402     e3507                1
    i1403     e3494                1
    i1403     e3495                1
    i1403     e3496                1
    i1403     e3506                1
    i1403     e3507                1
    i1404     e3497                1
    i1404     e3498                1
    i1404     e3499                1
    i1404     e3506                1
    i1404     e3507                1
    i1405     e3500                1
    i1405     e3501                1
    i1405     e3502                1
    i1405     e3506                1
    i1405     e3507                1
    i1406     e3503                1
    i1406     e3504                1
    i1406     e3505                1
    i1406     e3506                1
    i1406     e3507                1
    i1407     e3508                1
    i1407     e3509                1
    i1407     e3510                1
    i1407     e3523                1
    i1407     e3524                1
    i1408     e3511                1
    i1408     e3512                1
    i1408     e3513                1
    i1408     e3523                1
    i1408     e3524                1
    i1409     e3514                1
    i1409     e3515                1
    i1409     e3516                1
    i1409     e3523                1
    i1409     e3524                1
    i1410     e3517                1
    i1410     e3518                1
    i1410     e3519                1
    i1410     e3523                1
    i1410     e3524                1
    i1411     e3520                1
    i1411     e3521                1
    i1411     e3522                1
    i1411     e3523                1
    i1411     e3524                1
    i1412     e3525                1
    i1412     e3526                1
    i1412     e3527                1
    i1412     e3540                1
    i1412     e3541                1
    i1413     e3528                1
    i1413     e3529                1
    i1413     e3530                1
    i1413     e3540                1
    i1413     e3541                1
    i1414     e3531                1
    i1414     e3532                1
    i1414     e3533                1
    i1414     e3540                1
    i1414     e3541                1
    i1415     e3534                1
    i1415     e3535                1
    i1415     e3536                1
    i1415     e3540                1
    i1415     e3541                1
    i1416     e3537                1
    i1416     e3538                1
    i1416     e3539                1
    i1416     e3540                1
    i1416     e3541                1
    i1417     e3540               -7
    i1417     e3541               -7
    i1418     e3542                1
    i1418     e3543                1
    i1418     e3544                1
    i1418     e3557                1
    i1418     e3558                1
    i1419     e3545                1
    i1419     e3546                1
    i1419     e3547                1
    i1419     e3557                1
    i1419     e3558                1
    i1420     e3548                1
    i1420     e3549                1
    i1420     e3550                1
    i1420     e3557                1
    i1420     e3558                1
    i1421     e3551                1
    i1421     e3552                1
    i1421     e3553                1
    i1421     e3557                1
    i1421     e3558                1
    i1422     e3554                1
    i1422     e3555                1
    i1422     e3556                1
    i1422     e3557                1
    i1422     e3558                1
    i1423     e3557               -7
    i1423     e3558               -7
    i1424     e3559                1
    i1424     e3560                1
    i1424     e3561                1
    i1424     e3574                1
    i1424     e3575                1
    i1425     e3562                1
    i1425     e3563                1
    i1425     e3564                1
    i1425     e3574                1
    i1425     e3575                1
    i1426     e3565                1
    i1426     e3566                1
    i1426     e3567                1
    i1426     e3574                1
    i1426     e3575                1
    i1427     e3568                1
    i1427     e3569                1
    i1427     e3570                1
    i1427     e3574                1
    i1427     e3575                1
    i1428     e3571                1
    i1428     e3572                1
    i1428     e3573                1
    i1428     e3574                1
    i1428     e3575                1
    i1429     e3576                1
    i1429     e3577                1
    i1429     e3578                1
    i1429     e3591                1
    i1429     e3592                1
    i1430     e3579                1
    i1430     e3580                1
    i1430     e3581                1
    i1430     e3591                1
    i1430     e3592                1
    i1431     e3582                1
    i1431     e3583                1
    i1431     e3584                1
    i1431     e3591                1
    i1431     e3592                1
    i1432     e3585                1
    i1432     e3586                1
    i1432     e3587                1
    i1432     e3591                1
    i1432     e3592                1
    i1433     e3588                1
    i1433     e3589                1
    i1433     e3590                1
    i1433     e3591                1
    i1433     e3592                1
    i1434     e3593                1
    i1434     e3594                1
    i1434     e3595                1
    i1434     e3608                1
    i1434     e3609                1
    i1435     e3596                1
    i1435     e3597                1
    i1435     e3598                1
    i1435     e3608                1
    i1435     e3609                1
    i1436     e3599                1
    i1436     e3600                1
    i1436     e3601                1
    i1436     e3608                1
    i1436     e3609                1
    i1437     e3602                1
    i1437     e3603                1
    i1437     e3604                1
    i1437     e3608                1
    i1437     e3609                1
    i1438     e3605                1
    i1438     e3606                1
    i1438     e3607                1
    i1438     e3608                1
    i1438     e3609                1
    i1439     e3608               -7
    i1439     e3609               -7
    i1440     e3610                1
    i1440     e3611                1
    i1440     e3612                1
    i1440     e3625                1
    i1440     e3626                1
    i1441     e3613                1
    i1441     e3614                1
    i1441     e3615                1
    i1441     e3625                1
    i1441     e3626                1
    i1442     e3616                1
    i1442     e3617                1
    i1442     e3618                1
    i1442     e3625                1
    i1442     e3626                1
    i1443     e3619                1
    i1443     e3620                1
    i1443     e3621                1
    i1443     e3625                1
    i1443     e3626                1
    i1444     e3622                1
    i1444     e3623                1
    i1444     e3624                1
    i1444     e3625                1
    i1444     e3626                1
    i1445     e3625               -7
    i1445     e3626               -7
    i1446     e3627                1
    i1446     e3628                1
    i1446     e3629                1
    i1446     e3642                1
    i1446     e3643                1
    i1447     e3630                1
    i1447     e3631                1
    i1447     e3632                1
    i1447     e3642                1
    i1447     e3643                1
    i1448     e3633                1
    i1448     e3634                1
    i1448     e3635                1
    i1448     e3642                1
    i1448     e3643                1
    i1449     e3636                1
    i1449     e3637                1
    i1449     e3638                1
    i1449     e3642                1
    i1449     e3643                1
    i1450     e3639                1
    i1450     e3640                1
    i1450     e3641                1
    i1450     e3642                1
    i1450     e3643                1
    i1451     e3642               -7
    i1451     e3643               -7
    i1452     e3644                1
    i1452     e3645                1
    i1452     e3646                1
    i1452     e3659                1
    i1452     e3660                1
    i1453     e3647                1
    i1453     e3648                1
    i1453     e3649                1
    i1453     e3659                1
    i1453     e3660                1
    i1454     e3650                1
    i1454     e3651                1
    i1454     e3652                1
    i1454     e3659                1
    i1454     e3660                1
    i1455     e3653                1
    i1455     e3654                1
    i1455     e3655                1
    i1455     e3659                1
    i1455     e3660                1
    i1456     e3656                1
    i1456     e3657                1
    i1456     e3658                1
    i1456     e3659                1
    i1456     e3660                1
    i1457     e3659               -7
    i1457     e3660               -7
    i1458     e3669                1
    i1458     e3670                1
    i1458     e3671                1
    i1458     e3684                1
    i1458     e3685                1
    i1459     e3672                1
    i1459     e3673                1
    i1459     e3674                1
    i1459     e3684                1
    i1459     e3685                1
    i1460     e3675                1
    i1460     e3676                1
    i1460     e3677                1
    i1460     e3684                1
    i1460     e3685                1
    i1461     e3678                1
    i1461     e3679                1
    i1461     e3680                1
    i1461     e3684                1
    i1461     e3685                1
    i1462     e3681                1
    i1462     e3682                1
    i1462     e3683                1
    i1462     e3684                1
    i1462     e3685                1
    i1463     e3686                1
    i1463     e3687                1
    i1463     e3688                1
    i1463     e3701                1
    i1463     e3702                1
    i1464     e3689                1
    i1464     e3690                1
    i1464     e3691                1
    i1464     e3701                1
    i1464     e3702                1
    i1465     e3692                1
    i1465     e3693                1
    i1465     e3694                1
    i1465     e3701                1
    i1465     e3702                1
    i1466     e3695                1
    i1466     e3696                1
    i1466     e3697                1
    i1466     e3701                1
    i1466     e3702                1
    i1467     e3698                1
    i1467     e3699                1
    i1467     e3700                1
    i1467     e3701                1
    i1467     e3702                1
    i1468     e3703                1
    i1468     e3704                1
    i1468     e3705                1
    i1468     e3718                1
    i1468     e3719                1
    i1469     e3706                1
    i1469     e3707                1
    i1469     e3708                1
    i1469     e3718                1
    i1469     e3719                1
    i1470     e3709                1
    i1470     e3710                1
    i1470     e3711                1
    i1470     e3718                1
    i1470     e3719                1
    i1471     e3712                1
    i1471     e3713                1
    i1471     e3714                1
    i1471     e3718                1
    i1471     e3719                1
    i1472     e3715                1
    i1472     e3716                1
    i1472     e3717                1
    i1472     e3718                1
    i1472     e3719                1
    i1473     e3718               -7
    i1473     e3719               -7
    i1474     e3720                1
    i1474     e3721                1
    i1474     e3722                1
    i1474     e3735                1
    i1474     e3736                1
    i1475     e3723                1
    i1475     e3724                1
    i1475     e3725                1
    i1475     e3735                1
    i1475     e3736                1
    i1476     e3726                1
    i1476     e3727                1
    i1476     e3728                1
    i1476     e3735                1
    i1476     e3736                1
    i1477     e3729                1
    i1477     e3730                1
    i1477     e3731                1
    i1477     e3735                1
    i1477     e3736                1
    i1478     e3732                1
    i1478     e3733                1
    i1478     e3734                1
    i1478     e3735                1
    i1478     e3736                1
    i1479     e3735               -7
    i1479     e3736               -7
    i1480     e3737                1
    i1480     e3738                1
    i1480     e3739                1
    i1480     e3752                1
    i1480     e3753                1
    i1481     e3740                1
    i1481     e3741                1
    i1481     e3742                1
    i1481     e3752                1
    i1481     e3753                1
    i1482     e3743                1
    i1482     e3744                1
    i1482     e3745                1
    i1482     e3752                1
    i1482     e3753                1
    i1483     e3746                1
    i1483     e3747                1
    i1483     e3748                1
    i1483     e3752                1
    i1483     e3753                1
    i1484     e3749                1
    i1484     e3750                1
    i1484     e3751                1
    i1484     e3752                1
    i1484     e3753                1
    i1485     e3754                1
    i1485     e3755                1
    i1485     e3756                1
    i1485     e3769                1
    i1485     e3770                1
    i1486     e3757                1
    i1486     e3758                1
    i1486     e3759                1
    i1486     e3769                1
    i1486     e3770                1
    i1487     e3760                1
    i1487     e3761                1
    i1487     e3762                1
    i1487     e3769                1
    i1487     e3770                1
    i1488     e3763                1
    i1488     e3764                1
    i1488     e3765                1
    i1488     e3769                1
    i1488     e3770                1
    i1489     e3766                1
    i1489     e3767                1
    i1489     e3768                1
    i1489     e3769                1
    i1489     e3770                1
    i1490     e3771                1
    i1490     e3772                1
    i1490     e3773                1
    i1490     e3786                1
    i1490     e3787                1
    i1491     e3774                1
    i1491     e3775                1
    i1491     e3776                1
    i1491     e3786                1
    i1491     e3787                1
    i1492     e3777                1
    i1492     e3778                1
    i1492     e3779                1
    i1492     e3786                1
    i1492     e3787                1
    i1493     e3780                1
    i1493     e3781                1
    i1493     e3782                1
    i1493     e3786                1
    i1493     e3787                1
    i1494     e3783                1
    i1494     e3784                1
    i1494     e3785                1
    i1494     e3786                1
    i1494     e3787                1
    i1495     e3786               -7
    i1495     e3787               -7
    i1496     e3788                1
    i1496     e3789                1
    i1496     e3790                1
    i1496     e3803                1
    i1496     e3804                1
    i1497     e3791                1
    i1497     e3792                1
    i1497     e3793                1
    i1497     e3803                1
    i1497     e3804                1
    i1498     e3794                1
    i1498     e3795                1
    i1498     e3796                1
    i1498     e3803                1
    i1498     e3804                1
    i1499     e3797                1
    i1499     e3798                1
    i1499     e3799                1
    i1499     e3803                1
    i1499     e3804                1
    i1500     e3800                1
    i1500     e3801                1
    i1500     e3802                1
    i1500     e3803                1
    i1500     e3804                1
    i1501     e3803               -7
    i1501     e3804               -7
    i1502     e3805                1
    i1502     e3806                1
    i1502     e3807                1
    i1502     e3820                1
    i1502     e3821                1
    i1503     e3808                1
    i1503     e3809                1
    i1503     e3810                1
    i1503     e3820                1
    i1503     e3821                1
    i1504     e3811                1
    i1504     e3812                1
    i1504     e3813                1
    i1504     e3820                1
    i1504     e3821                1
    i1505     e3814                1
    i1505     e3815                1
    i1505     e3816                1
    i1505     e3820                1
    i1505     e3821                1
    i1506     e3817                1
    i1506     e3818                1
    i1506     e3819                1
    i1506     e3820                1
    i1506     e3821                1
    i1507     e3820               -7
    i1507     e3821               -7
    i1508     e3822                1
    i1508     e3823                1
    i1508     e3824                1
    i1508     e3837                1
    i1508     e3838                1
    i1509     e3825                1
    i1509     e3826                1
    i1509     e3827                1
    i1509     e3837                1
    i1509     e3838                1
    i1510     e3828                1
    i1510     e3829                1
    i1510     e3830                1
    i1510     e3837                1
    i1510     e3838                1
    i1511     e3831                1
    i1511     e3832                1
    i1511     e3833                1
    i1511     e3837                1
    i1511     e3838                1
    i1512     e3834                1
    i1512     e3835                1
    i1512     e3836                1
    i1512     e3837                1
    i1512     e3838                1
    i1513     e3837               -7
    i1513     e3838               -7
    i1514     e3847                1
    i1514     e3848                1
    i1514     e3849                1
    i1514     e3862                1
    i1514     e3863                1
    i1515     e3850                1
    i1515     e3851                1
    i1515     e3852                1
    i1515     e3862                1
    i1515     e3863                1
    i1516     e3853                1
    i1516     e3854                1
    i1516     e3855                1
    i1516     e3862                1
    i1516     e3863                1
    i1517     e3856                1
    i1517     e3857                1
    i1517     e3858                1
    i1517     e3862                1
    i1517     e3863                1
    i1518     e3859                1
    i1518     e3860                1
    i1518     e3861                1
    i1518     e3862                1
    i1518     e3863                1
    i1519     e3864                1
    i1519     e3865                1
    i1519     e3866                1
    i1519     e3879                1
    i1519     e3880                1
    i1520     e3867                1
    i1520     e3868                1
    i1520     e3869                1
    i1520     e3879                1
    i1520     e3880                1
    i1521     e3870                1
    i1521     e3871                1
    i1521     e3872                1
    i1521     e3879                1
    i1521     e3880                1
    i1522     e3873                1
    i1522     e3874                1
    i1522     e3875                1
    i1522     e3879                1
    i1522     e3880                1
    i1523     e3876                1
    i1523     e3877                1
    i1523     e3878                1
    i1523     e3879                1
    i1523     e3880                1
    i1524     e3881                1
    i1524     e3882                1
    i1524     e3883                1
    i1524     e3896                1
    i1524     e3897                1
    i1525     e3884                1
    i1525     e3885                1
    i1525     e3886                1
    i1525     e3896                1
    i1525     e3897                1
    i1526     e3887                1
    i1526     e3888                1
    i1526     e3889                1
    i1526     e3896                1
    i1526     e3897                1
    i1527     e3890                1
    i1527     e3891                1
    i1527     e3892                1
    i1527     e3896                1
    i1527     e3897                1
    i1528     e3893                1
    i1528     e3894                1
    i1528     e3895                1
    i1528     e3896                1
    i1528     e3897                1
    i1529     e3896               -7
    i1529     e3897               -7
    i1530     e3898                1
    i1530     e3899                1
    i1530     e3900                1
    i1530     e3913                1
    i1530     e3914                1
    i1531     e3901                1
    i1531     e3902                1
    i1531     e3903                1
    i1531     e3913                1
    i1531     e3914                1
    i1532     e3904                1
    i1532     e3905                1
    i1532     e3906                1
    i1532     e3913                1
    i1532     e3914                1
    i1533     e3907                1
    i1533     e3908                1
    i1533     e3909                1
    i1533     e3913                1
    i1533     e3914                1
    i1534     e3910                1
    i1534     e3911                1
    i1534     e3912                1
    i1534     e3913                1
    i1534     e3914                1
    i1535     e3913               -7
    i1535     e3914               -7
    i1536     e3915                1
    i1536     e3916                1
    i1536     e3917                1
    i1536     e3930                1
    i1536     e3931                1
    i1537     e3918                1
    i1537     e3919                1
    i1537     e3920                1
    i1537     e3930                1
    i1537     e3931                1
    i1538     e3921                1
    i1538     e3922                1
    i1538     e3923                1
    i1538     e3930                1
    i1538     e3931                1
    i1539     e3924                1
    i1539     e3925                1
    i1539     e3926                1
    i1539     e3930                1
    i1539     e3931                1
    i1540     e3927                1
    i1540     e3928                1
    i1540     e3929                1
    i1540     e3930                1
    i1540     e3931                1
    i1541     e3932                1
    i1541     e3933                1
    i1541     e3934                1
    i1541     e3947                1
    i1541     e3948                1
    i1542     e3935                1
    i1542     e3936                1
    i1542     e3937                1
    i1542     e3947                1
    i1542     e3948                1
    i1543     e3938                1
    i1543     e3939                1
    i1543     e3940                1
    i1543     e3947                1
    i1543     e3948                1
    i1544     e3941                1
    i1544     e3942                1
    i1544     e3943                1
    i1544     e3947                1
    i1544     e3948                1
    i1545     e3944                1
    i1545     e3945                1
    i1545     e3946                1
    i1545     e3947                1
    i1545     e3948                1
    i1546     e3949                1
    i1546     e3950                1
    i1546     e3951                1
    i1546     e3964                1
    i1546     e3965                1
    i1547     e3952                1
    i1547     e3953                1
    i1547     e3954                1
    i1547     e3964                1
    i1547     e3965                1
    i1548     e3955                1
    i1548     e3956                1
    i1548     e3957                1
    i1548     e3964                1
    i1548     e3965                1
    i1549     e3958                1
    i1549     e3959                1
    i1549     e3960                1
    i1549     e3964                1
    i1549     e3965                1
    i1550     e3961                1
    i1550     e3962                1
    i1550     e3963                1
    i1550     e3964                1
    i1550     e3965                1
    i1551     e3964               -7
    i1551     e3965               -7
    i1552     e3966                1
    i1552     e3967                1
    i1552     e3968                1
    i1552     e3981                1
    i1552     e3982                1
    i1553     e3969                1
    i1553     e3970                1
    i1553     e3971                1
    i1553     e3981                1
    i1553     e3982                1
    i1554     e3972                1
    i1554     e3973                1
    i1554     e3974                1
    i1554     e3981                1
    i1554     e3982                1
    i1555     e3975                1
    i1555     e3976                1
    i1555     e3977                1
    i1555     e3981                1
    i1555     e3982                1
    i1556     e3978                1
    i1556     e3979                1
    i1556     e3980                1
    i1556     e3981                1
    i1556     e3982                1
    i1557     e3981               -7
    i1557     e3982               -7
    i1558     e3983                1
    i1558     e3984                1
    i1558     e3985                1
    i1558     e3998                1
    i1558     e3999                1
    i1559     e3986                1
    i1559     e3987                1
    i1559     e3988                1
    i1559     e3998                1
    i1559     e3999                1
    i1560     e3989                1
    i1560     e3990                1
    i1560     e3991                1
    i1560     e3998                1
    i1560     e3999                1
    i1561     e3992                1
    i1561     e3993                1
    i1561     e3994                1
    i1561     e3998                1
    i1561     e3999                1
    i1562     e3995                1
    i1562     e3996                1
    i1562     e3997                1
    i1562     e3998                1
    i1562     e3999                1
    i1563     e3998               -7
    i1563     e3999               -7
    i1564     e4000                1
    i1564     e4001                1
    i1564     e4002                1
    i1564     e4015                1
    i1564     e4016                1
    i1565     e4003                1
    i1565     e4004                1
    i1565     e4005                1
    i1565     e4015                1
    i1565     e4016                1
    i1566     e4006                1
    i1566     e4007                1
    i1566     e4008                1
    i1566     e4015                1
    i1566     e4016                1
    i1567     e4009                1
    i1567     e4010                1
    i1567     e4011                1
    i1567     e4015                1
    i1567     e4016                1
    i1568     e4012                1
    i1568     e4013                1
    i1568     e4014                1
    i1568     e4015                1
    i1568     e4016                1
    i1569     e4015               -7
    i1569     e4016               -7
    i1570     e4025                1
    i1570     e4026                1
    i1570     e4027                1
    i1570     e4040                1
    i1570     e4041                1
    i1571     e4028                1
    i1571     e4029                1
    i1571     e4030                1
    i1571     e4040                1
    i1571     e4041                1
    i1572     e4031                1
    i1572     e4032                1
    i1572     e4033                1
    i1572     e4040                1
    i1572     e4041                1
    i1573     e4034                1
    i1573     e4035                1
    i1573     e4036                1
    i1573     e4040                1
    i1573     e4041                1
    i1574     e4037                1
    i1574     e4038                1
    i1574     e4039                1
    i1574     e4040                1
    i1574     e4041                1
    i1575     e4042                1
    i1575     e4043                1
    i1575     e4044                1
    i1575     e4057                1
    i1575     e4058                1
    i1576     e4045                1
    i1576     e4046                1
    i1576     e4047                1
    i1576     e4057                1
    i1576     e4058                1
    i1577     e4048                1
    i1577     e4049                1
    i1577     e4050                1
    i1577     e4057                1
    i1577     e4058                1
    i1578     e4051                1
    i1578     e4052                1
    i1578     e4053                1
    i1578     e4057                1
    i1578     e4058                1
    i1579     e4054                1
    i1579     e4055                1
    i1579     e4056                1
    i1579     e4057                1
    i1579     e4058                1
    i1580     e4059                1
    i1580     e4060                1
    i1580     e4061                1
    i1580     e4074                1
    i1580     e4075                1
    i1581     e4062                1
    i1581     e4063                1
    i1581     e4064                1
    i1581     e4074                1
    i1581     e4075                1
    i1582     e4065                1
    i1582     e4066                1
    i1582     e4067                1
    i1582     e4074                1
    i1582     e4075                1
    i1583     e4068                1
    i1583     e4069                1
    i1583     e4070                1
    i1583     e4074                1
    i1583     e4075                1
    i1584     e4071                1
    i1584     e4072                1
    i1584     e4073                1
    i1584     e4074                1
    i1584     e4075                1
    i1585     e4074               -7
    i1585     e4075               -7
    i1586     e4076                1
    i1586     e4077                1
    i1586     e4078                1
    i1586     e4091                1
    i1586     e4092                1
    i1587     e4079                1
    i1587     e4080                1
    i1587     e4081                1
    i1587     e4091                1
    i1587     e4092                1
    i1588     e4082                1
    i1588     e4083                1
    i1588     e4084                1
    i1588     e4091                1
    i1588     e4092                1
    i1589     e4085                1
    i1589     e4086                1
    i1589     e4087                1
    i1589     e4091                1
    i1589     e4092                1
    i1590     e4088                1
    i1590     e4089                1
    i1590     e4090                1
    i1590     e4091                1
    i1590     e4092                1
    i1591     e4091               -7
    i1591     e4092               -7
    i1592     e4093                1
    i1592     e4094                1
    i1592     e4095                1
    i1592     e4108                1
    i1592     e4109                1
    i1593     e4096                1
    i1593     e4097                1
    i1593     e4098                1
    i1593     e4108                1
    i1593     e4109                1
    i1594     e4099                1
    i1594     e4100                1
    i1594     e4101                1
    i1594     e4108                1
    i1594     e4109                1
    i1595     e4102                1
    i1595     e4103                1
    i1595     e4104                1
    i1595     e4108                1
    i1595     e4109                1
    i1596     e4105                1
    i1596     e4106                1
    i1596     e4107                1
    i1596     e4108                1
    i1596     e4109                1
    i1597     e4110                1
    i1597     e4111                1
    i1597     e4112                1
    i1597     e4125                1
    i1597     e4126                1
    i1598     e4113                1
    i1598     e4114                1
    i1598     e4115                1
    i1598     e4125                1
    i1598     e4126                1
    i1599     e4116                1
    i1599     e4117                1
    i1599     e4118                1
    i1599     e4125                1
    i1599     e4126                1
    i1600     e4119                1
    i1600     e4120                1
    i1600     e4121                1
    i1600     e4125                1
    i1600     e4126                1
    i1601     e4122                1
    i1601     e4123                1
    i1601     e4124                1
    i1601     e4125                1
    i1601     e4126                1
    i1602     e4127                1
    i1602     e4128                1
    i1602     e4129                1
    i1602     e4142                1
    i1602     e4143                1
    i1603     e4130                1
    i1603     e4131                1
    i1603     e4132                1
    i1603     e4142                1
    i1603     e4143                1
    i1604     e4133                1
    i1604     e4134                1
    i1604     e4135                1
    i1604     e4142                1
    i1604     e4143                1
    i1605     e4136                1
    i1605     e4137                1
    i1605     e4138                1
    i1605     e4142                1
    i1605     e4143                1
    i1606     e4139                1
    i1606     e4140                1
    i1606     e4141                1
    i1606     e4142                1
    i1606     e4143                1
    i1607     e4142               -7
    i1607     e4143               -7
    i1608     e4144                1
    i1608     e4145                1
    i1608     e4146                1
    i1608     e4159                1
    i1608     e4160                1
    i1609     e4147                1
    i1609     e4148                1
    i1609     e4149                1
    i1609     e4159                1
    i1609     e4160                1
    i1610     e4150                1
    i1610     e4151                1
    i1610     e4152                1
    i1610     e4159                1
    i1610     e4160                1
    i1611     e4153                1
    i1611     e4154                1
    i1611     e4155                1
    i1611     e4159                1
    i1611     e4160                1
    i1612     e4156                1
    i1612     e4157                1
    i1612     e4158                1
    i1612     e4159                1
    i1612     e4160                1
    i1613     e4159               -7
    i1613     e4160               -7
    i1614     e4161                1
    i1614     e4162                1
    i1614     e4163                1
    i1614     e4176                1
    i1614     e4177                1
    i1615     e4164                1
    i1615     e4165                1
    i1615     e4166                1
    i1615     e4176                1
    i1615     e4177                1
    i1616     e4167                1
    i1616     e4168                1
    i1616     e4169                1
    i1616     e4176                1
    i1616     e4177                1
    i1617     e4170                1
    i1617     e4171                1
    i1617     e4172                1
    i1617     e4176                1
    i1617     e4177                1
    i1618     e4173                1
    i1618     e4174                1
    i1618     e4175                1
    i1618     e4176                1
    i1618     e4177                1
    i1619     e4176               -7
    i1619     e4177               -7
    i1620     e4178                1
    i1620     e4179                1
    i1620     e4180                1
    i1620     e4193                1
    i1620     e4194                1
    i1621     e4181                1
    i1621     e4182                1
    i1621     e4183                1
    i1621     e4193                1
    i1621     e4194                1
    i1622     e4184                1
    i1622     e4185                1
    i1622     e4186                1
    i1622     e4193                1
    i1622     e4194                1
    i1623     e4187                1
    i1623     e4188                1
    i1623     e4189                1
    i1623     e4193                1
    i1623     e4194                1
    i1624     e4190                1
    i1624     e4191                1
    i1624     e4192                1
    i1624     e4193                1
    i1624     e4194                1
    i1625     e4193               -7
    i1625     e4194               -7
    i1626     e4203                1
    i1626     e4204                1
    i1626     e4205                1
    i1626     e4218                1
    i1626     e4219                1
    i1627     e4206                1
    i1627     e4207                1
    i1627     e4208                1
    i1627     e4218                1
    i1627     e4219                1
    i1628     e4209                1
    i1628     e4210                1
    i1628     e4211                1
    i1628     e4218                1
    i1628     e4219                1
    i1629     e4212                1
    i1629     e4213                1
    i1629     e4214                1
    i1629     e4218                1
    i1629     e4219                1
    i1630     e4215                1
    i1630     e4216                1
    i1630     e4217                1
    i1630     e4218                1
    i1630     e4219                1
    i1631     e4220                1
    i1631     e4221                1
    i1631     e4222                1
    i1631     e4235                1
    i1631     e4236                1
    i1632     e4223                1
    i1632     e4224                1
    i1632     e4225                1
    i1632     e4235                1
    i1632     e4236                1
    i1633     e4226                1
    i1633     e4227                1
    i1633     e4228                1
    i1633     e4235                1
    i1633     e4236                1
    i1634     e4229                1
    i1634     e4230                1
    i1634     e4231                1
    i1634     e4235                1
    i1634     e4236                1
    i1635     e4232                1
    i1635     e4233                1
    i1635     e4234                1
    i1635     e4235                1
    i1635     e4236                1
    i1636     e4237                1
    i1636     e4238                1
    i1636     e4239                1
    i1636     e4252                1
    i1636     e4253                1
    i1637     e4240                1
    i1637     e4241                1
    i1637     e4242                1
    i1637     e4252                1
    i1637     e4253                1
    i1638     e4243                1
    i1638     e4244                1
    i1638     e4245                1
    i1638     e4252                1
    i1638     e4253                1
    i1639     e4246                1
    i1639     e4247                1
    i1639     e4248                1
    i1639     e4252                1
    i1639     e4253                1
    i1640     e4249                1
    i1640     e4250                1
    i1640     e4251                1
    i1640     e4252                1
    i1640     e4253                1
    i1641     e4252               -7
    i1641     e4253               -7
    i1642     e4254                1
    i1642     e4255                1
    i1642     e4256                1
    i1642     e4269                1
    i1642     e4270                1
    i1643     e4257                1
    i1643     e4258                1
    i1643     e4259                1
    i1643     e4269                1
    i1643     e4270                1
    i1644     e4260                1
    i1644     e4261                1
    i1644     e4262                1
    i1644     e4269                1
    i1644     e4270                1
    i1645     e4263                1
    i1645     e4264                1
    i1645     e4265                1
    i1645     e4269                1
    i1645     e4270                1
    i1646     e4266                1
    i1646     e4267                1
    i1646     e4268                1
    i1646     e4269                1
    i1646     e4270                1
    i1647     e4269               -7
    i1647     e4270               -7
    i1648     e4271                1
    i1648     e4272                1
    i1648     e4273                1
    i1648     e4286                1
    i1648     e4287                1
    i1649     e4274                1
    i1649     e4275                1
    i1649     e4276                1
    i1649     e4286                1
    i1649     e4287                1
    i1650     e4277                1
    i1650     e4278                1
    i1650     e4279                1
    i1650     e4286                1
    i1650     e4287                1
    i1651     e4280                1
    i1651     e4281                1
    i1651     e4282                1
    i1651     e4286                1
    i1651     e4287                1
    i1652     e4283                1
    i1652     e4284                1
    i1652     e4285                1
    i1652     e4286                1
    i1652     e4287                1
    i1653     e4288                1
    i1653     e4289                1
    i1653     e4290                1
    i1653     e4303                1
    i1653     e4304                1
    i1654     e4291                1
    i1654     e4292                1
    i1654     e4293                1
    i1654     e4303                1
    i1654     e4304                1
    i1655     e4294                1
    i1655     e4295                1
    i1655     e4296                1
    i1655     e4303                1
    i1655     e4304                1
    i1656     e4297                1
    i1656     e4298                1
    i1656     e4299                1
    i1656     e4303                1
    i1656     e4304                1
    i1657     e4300                1
    i1657     e4301                1
    i1657     e4302                1
    i1657     e4303                1
    i1657     e4304                1
    i1658     e4305                1
    i1658     e4306                1
    i1658     e4307                1
    i1658     e4320                1
    i1658     e4321                1
    i1659     e4308                1
    i1659     e4309                1
    i1659     e4310                1
    i1659     e4320                1
    i1659     e4321                1
    i1660     e4311                1
    i1660     e4312                1
    i1660     e4313                1
    i1660     e4320                1
    i1660     e4321                1
    i1661     e4314                1
    i1661     e4315                1
    i1661     e4316                1
    i1661     e4320                1
    i1661     e4321                1
    i1662     e4317                1
    i1662     e4318                1
    i1662     e4319                1
    i1662     e4320                1
    i1662     e4321                1
    i1663     e4320               -7
    i1663     e4321               -7
    i1664     e4322                1
    i1664     e4323                1
    i1664     e4324                1
    i1664     e4337                1
    i1664     e4338                1
    i1665     e4325                1
    i1665     e4326                1
    i1665     e4327                1
    i1665     e4337                1
    i1665     e4338                1
    i1666     e4328                1
    i1666     e4329                1
    i1666     e4330                1
    i1666     e4337                1
    i1666     e4338                1
    i1667     e4331                1
    i1667     e4332                1
    i1667     e4333                1
    i1667     e4337                1
    i1667     e4338                1
    i1668     e4334                1
    i1668     e4335                1
    i1668     e4336                1
    i1668     e4337                1
    i1668     e4338                1
    i1669     e4337               -7
    i1669     e4338               -7
    i1670     e4339                1
    i1670     e4340                1
    i1670     e4341                1
    i1670     e4354                1
    i1670     e4355                1
    i1671     e4342                1
    i1671     e4343                1
    i1671     e4344                1
    i1671     e4354                1
    i1671     e4355                1
    i1672     e4345                1
    i1672     e4346                1
    i1672     e4347                1
    i1672     e4354                1
    i1672     e4355                1
    i1673     e4348                1
    i1673     e4349                1
    i1673     e4350                1
    i1673     e4354                1
    i1673     e4355                1
    i1674     e4351                1
    i1674     e4352                1
    i1674     e4353                1
    i1674     e4354                1
    i1674     e4355                1
    i1675     e4354               -7
    i1675     e4355               -7
    i1676     e4356                1
    i1676     e4357                1
    i1676     e4358                1
    i1676     e4371                1
    i1676     e4372                1
    i1677     e4359                1
    i1677     e4360                1
    i1677     e4361                1
    i1677     e4371                1
    i1677     e4372                1
    i1678     e4362                1
    i1678     e4363                1
    i1678     e4364                1
    i1678     e4371                1
    i1678     e4372                1
    i1679     e4365                1
    i1679     e4366                1
    i1679     e4367                1
    i1679     e4371                1
    i1679     e4372                1
    i1680     e4368                1
    i1680     e4369                1
    i1680     e4370                1
    i1680     e4371                1
    i1680     e4372                1
    i1681     e4371               -7
    i1681     e4372               -7
    i1682     e4373                1
    i1682     e4374                1
    i1682     e4375                1
    i1682     e4394                1
    i1682     e4395                1
    i1683     e4376                1
    i1683     e4377                1
    i1683     e4378                1
    i1683     e4394                1
    i1683     e4395                1
    i1684     e4379                1
    i1684     e4380                1
    i1684     e4381                1
    i1684     e4394                1
    i1684     e4395                1
    i1685     e4382                1
    i1685     e4383                1
    i1685     e4384                1
    i1685     e4394                1
    i1685     e4395                1
    i1686     e4385                1
    i1686     e4386                1
    i1686     e4387                1
    i1686     e4394                1
    i1686     e4395                1
    i1687     e4388                1
    i1687     e4389                1
    i1687     e4390                1
    i1687     e4394                1
    i1687     e4395                1
    i1688     e4391                1
    i1688     e4392                1
    i1688     e4393                1
    i1688     e4394                1
    i1688     e4395                1
    i1689     e4396                1
    i1689     e4397                1
    i1689     e4398                1
    i1689     e4414                1
    i1689     e4415                1
    i1690     e4397               -1
    i1690     e4398               -1
    i1690     e4440               -1
    i1690     e4441               -1
    i1690     e4587               -1
    i1690     e4588               -1
    i1691     e4399                1
    i1691     e4400                1
    i1691     e4401                1
    i1691     e4414                1
    i1691     e4415                1
    i1692     e4400               -1
    i1692     e4401               -1
    i1692     e4443               -1
    i1692     e4444               -1
    i1692     e4567               -1
    i1692     e4568               -1
    i1693     e4402                1
    i1693     e4403                1
    i1693     e4404                1
    i1693     e4414                1
    i1693     e4415                1
    i1694     e4403               -1
    i1694     e4404               -1
    i1694     e4446               -1
    i1694     e4447               -1
    i1694     e4619               -1
    i1694     e4620               -1
    i1695     e4405                1
    i1695     e4406                1
    i1695     e4407                1
    i1695     e4414                1
    i1695     e4415                1
    i1696     e4406               -1
    i1696     e4407               -1
    i1696     e4449               -1
    i1696     e4450               -1
    i1696     e4639               -1
    i1696     e4640               -1
    i1697     e4408                1
    i1697     e4409                1
    i1697     e4410                1
    i1697     e4414                1
    i1697     e4415                1
    i1698     e4409               -1
    i1698     e4410               -1
    i1698     e4452               -1
    i1698     e4453               -1
    i1698     e4564               -1
    i1698     e4565               -1
    i1699     e4411                1
    i1699     e4412                1
    i1699     e4413                1
    i1699     e4414                1
    i1699     e4415                1
    i1700     e4412               -1
    i1700     e4413               -1
    i1700     e4455               -1
    i1700     e4456               -1
    i1700     e4616               -1
    i1700     e4617               -1
    i1701     e4416                1
    i1701     e4417                1
    i1701     e4418                1
    i1701     e4437                1
    i1701     e4438                1
    i1702     e4419                1
    i1702     e4420                1
    i1702     e4421                1
    i1702     e4437                1
    i1702     e4438                1
    i1703     e4422                1
    i1703     e4423                1
    i1703     e4424                1
    i1703     e4437                1
    i1703     e4438                1
    i1704     e4425                1
    i1704     e4426                1
    i1704     e4427                1
    i1704     e4437                1
    i1704     e4438                1
    i1705     e4428                1
    i1705     e4429                1
    i1705     e4430                1
    i1705     e4437                1
    i1705     e4438                1
    i1706     e4431                1
    i1706     e4432                1
    i1706     e4433                1
    i1706     e4437                1
    i1706     e4438                1
    i1707     e4434                1
    i1707     e4435                1
    i1707     e4436                1
    i1707     e4437                1
    i1707     e4438                1
    i1708     e4439                1
    i1708     e4440                1
    i1708     e4441                1
    i1708     e4457                1
    i1708     e4458                1
    i1709     e4442                1
    i1709     e4443                1
    i1709     e4444                1
    i1709     e4457                1
    i1709     e4458                1
    i1710     e4445                1
    i1710     e4446                1
    i1710     e4447                1
    i1710     e4457                1
    i1710     e4458                1
    i1711     e4448                1
    i1711     e4449                1
    i1711     e4450                1
    i1711     e4457                1
    i1711     e4458                1
    i1712     e4451                1
    i1712     e4452                1
    i1712     e4453                1
    i1712     e4457                1
    i1712     e4458                1
    i1713     e4454                1
    i1713     e4455                1
    i1713     e4456                1
    i1713     e4457                1
    i1713     e4458                1
    i1714     e4459                1
    i1714     e4460                1
    i1714     e4461                1
    i1714     e4462                1
    i1714     e4463                1
    i1715     e4464                1
    i1715     e4465                1
    i1715     e4466                1
    i1715     e4467                1
    i1715     e4468                1
    i1716     e4469                1
    i1716     e4470                1
    i1716     e4471                1
    i1716     e4472                1
    i1716     e4473                1
    i1717     e4474                1
    i1717     e4475                1
    i1717     e4476                1
    i1717     e4477                1
    i1717     e4478                1
    i1718     e4479                1
    i1718     e4480                1
    i1718     e4481                1
    i1718     e4482                1
    i1718     e4483                1
    i1719     e4484                1
    i1719     e4485                1
    i1719     e4486                1
    i1719     e4487                1
    i1719     e4488                1
    i1720     e4489                1
    i1720     e4490                1
    i1720     e4491                1
    i1720     e4492                1
    i1720     e4493                1
    i1721     e4494                1
    i1721     e4495                1
    i1721     e4496                1
    i1721     e4497                1
    i1721     e4498                1
    i1722     e4499                1
    i1722     e4500                1
    i1722     e4501                1
    i1722     e4502                1
    i1722     e4503                1
    i1723     e4504                1
    i1723     e4505                1
    i1723     e4506                1
    i1723     e4507                1
    i1723     e4508                1
    i1724     e4509                1
    i1724     e4510                1
    i1724     e4511                1
    i1724     e4512                1
    i1724     e4513                1
    i1725     e4514                1
    i1725     e4515                1
    i1725     e4516                1
    i1725     e4517                1
    i1725     e4518                1
    i1726     e4519                1
    i1726     e4520                1
    i1726     e4521                1
    i1726     e4522                1
    i1726     e4523                1
    i1727     e4524                1
    i1727     e4525                1
    i1727     e4526                1
    i1727     e4527                1
    i1727     e4528                1
    i1728     e4529                1
    i1728     e4530                1
    i1728     e4531                1
    i1728     e4532                1
    i1728     e4533                1
    i1729     e4534                1
    i1729     e4535                1
    i1729     e4536                1
    i1729     e4537                1
    i1729     e4538                1
    i1730     e4539                1
    i1730     e4540                1
    i1730     e4541                1
    i1730     e4545                1
    i1730     e4546                1
    i1731     e4542                1
    i1731     e4543                1
    i1731     e4544                1
    i1731     e4545                1
    i1731     e4546                1
    i1732     e4547                1
    i1732     e4548                1
    i1732     e4549                1
    i1732     e4553                1
    i1732     e4554                1
    i1733     e4550                1
    i1733     e4551                1
    i1733     e4552                1
    i1733     e4553                1
    i1733     e4554                1
    i1734     e4555                1
    i1734     e4556                1
    i1734     e4557                1
    i1734     e4561                1
    i1734     e4562                1
    i1735     e4558                1
    i1735     e4559                1
    i1735     e4560                1
    i1735     e4561                1
    i1735     e4562                1
    i1736     e4563                1
    i1736     e4564                1
    i1736     e4565                1
    i1736     e4569                1
    i1736     e4570                1
    i1737     e4566                1
    i1737     e4567                1
    i1737     e4568                1
    i1737     e4569                1
    i1737     e4570                1
    i1738     e4571                1
    i1738     e4572                1
    i1738     e4573                1
    i1738     e4574                1
    i1738     e4575                1
    i1739     e4576                1
    i1739     e4577                1
    i1739     e4578                1
    i1739     e4579                1
    i1739     e4580                1
    i1740     e4581                1
    i1740     e4582                1
    i1740     e4583                1
    i1740     e4584                1
    i1740     e4585                1
    i1741     e4586                1
    i1741     e4587                1
    i1741     e4588                1
    i1741     e4589                1
    i1741     e4590                1
    i1742     e4591                1
    i1742     e4592                1
    i1742     e4593                1
    i1742     e4597                1
    i1742     e4598                1
    i1743     e4594                1
    i1743     e4595                1
    i1743     e4596                1
    i1743     e4597                1
    i1743     e4598                1
    i1744     e4599                1
    i1744     e4600                1
    i1744     e4601                1
    i1744     e4605                1
    i1744     e4606                1
    i1745     e4602                1
    i1745     e4603                1
    i1745     e4604                1
    i1745     e4605                1
    i1745     e4606                1
    i1746     e4607                1
    i1746     e4608                1
    i1746     e4609                1
    i1746     e4613                1
    i1746     e4614                1
    i1747     e4610                1
    i1747     e4611                1
    i1747     e4612                1
    i1747     e4613                1
    i1747     e4614                1
    i1748     e4615                1
    i1748     e4616                1
    i1748     e4617                1
    i1748     e4621                1
    i1748     e4622                1
    i1749     e4618                1
    i1749     e4619                1
    i1749     e4620                1
    i1749     e4621                1
    i1749     e4622                1
    i1750     e4623                1
    i1750     e4624                1
    i1750     e4625                1
    i1750     e4626                1
    i1750     e4627                1
    i1751     e4628                1
    i1751     e4629                1
    i1751     e4630                1
    i1751     e4631                1
    i1751     e4632                1
    i1752     e4633                1
    i1752     e4634                1
    i1752     e4635                1
    i1752     e4636                1
    i1752     e4637                1
    i1753     e4638                1
    i1753     e4639                1
    i1753     e4640                1
    i1753     e4641                1
    i1753     e4642                1
    i1754     e4643                1
    i1754     e4644                1
    i1754     e4645                1
    i1754     e4646                1
    i1754     e4647                1
    i1755     e4646               -3
    i1755     e4647               -3
    i1755     e4666               -3
    i1755     e4667               -3
    i1756     e4648                1
    i1756     e4649                1
    i1756     e4650                1
    i1756     e4651                1
    i1756     e4652                1
    i1757     e4651               -3
    i1757     e4652               -3
    i1757     e4671               -3
    i1757     e4672               -3
    i1758     e4653                1
    i1758     e4654                1
    i1758     e4655                1
    i1758     e4656                1
    i1758     e4657                1
    i1759     e4656               -3
    i1759     e4657               -3
    i1759     e4676               -3
    i1759     e4677               -3
    i1760     e4658                1
    i1760     e4659                1
    i1760     e4660                1
    i1760     e4661                1
    i1760     e4662                1
    i1761     e4661               -3
    i1761     e4662               -3
    i1761     e4681               -3
    i1761     e4682               -3
    i1762     e4663                1
    i1762     e4664                1
    i1762     e4665                1
    i1762     e4666                1
    i1762     e4667                1
    i1763     e4668                1
    i1763     e4669                1
    i1763     e4670                1
    i1763     e4671                1
    i1763     e4672                1
    i1764     e4673                1
    i1764     e4674                1
    i1764     e4675                1
    i1764     e4676                1
    i1764     e4677                1
    i1765     e4678                1
    i1765     e4679                1
    i1765     e4680                1
    i1765     e4681                1
    i1765     e4682                1
    i1766     e4683                1
    i1766     e4684                1
    i1766     e4685                1
    i1766     e4686                1
    i1766     e4687                1
    i1767     e4686               -3
    i1767     e4687               -3
    i1768     e4688                1
    i1768     e4689                1
    i1768     e4690                1
    i1768     e4691                1
    i1768     e4692                1
    i1769     e4691               -3
    i1769     e4692               -3
    i1770     e4693                1
    i1770     e4694                1
    i1770     e4695                1
    i1770     e4714                1
    i1770     e4715                1
    i1771     e4696                1
    i1771     e4697                1
    i1771     e4698                1
    i1771     e4714                1
    i1771     e4715                1
    i1772     e4699                1
    i1772     e4700                1
    i1772     e4701                1
    i1772     e4714                1
    i1772     e4715                1
    i1773     e4702                1
    i1773     e4703                1
    i1773     e4704                1
    i1773     e4714                1
    i1773     e4715                1
    i1774     e4705                1
    i1774     e4706                1
    i1774     e4707                1
    i1774     e4714                1
    i1774     e4715                1
    i1775     e4708                1
    i1775     e4709                1
    i1775     e4710                1
    i1775     e4714                1
    i1775     e4715                1
    i1776     e4711                1
    i1776     e4712                1
    i1776     e4713                1
    i1776     e4714                1
    i1776     e4715                1
    i1777     e4716                1
    i1777     e4717                1
    i1777     e4718                1
    i1777     e4734                1
    i1777     e4735                1
    i1778     e4717               -1
    i1778     e4718               -1
    i1778     e4760               -1
    i1778     e4761               -1
    i1778     e4902               -1
    i1778     e4903               -1
    i1779     e4719                1
    i1779     e4720                1
    i1779     e4721                1
    i1779     e4734                1
    i1779     e4735                1
    i1780     e4720               -1
    i1780     e4721               -1
    i1780     e4763               -1
    i1780     e4764               -1
    i1780     e4879               -1
    i1780     e4880               -1
    i1781     e4722                1
    i1781     e4723                1
    i1781     e4724                1
    i1781     e4734                1
    i1781     e4735                1
    i1782     e4723               -1
    i1782     e4724               -1
    i1782     e4766               -1
    i1782     e4767               -1
    i1782     e4931               -1
    i1782     e4932               -1
    i1783     e4725                1
    i1783     e4726                1
    i1783     e4727                1
    i1783     e4734                1
    i1783     e4735                1
    i1784     e4726               -1
    i1784     e4727               -1
    i1784     e4769               -1
    i1784     e4770               -1
    i1784     e4954               -1
    i1784     e4955               -1
    i1785     e4728                1
    i1785     e4729                1
    i1785     e4730                1
    i1785     e4734                1
    i1785     e4735                1
    i1786     e4729               -1
    i1786     e4730               -1
    i1786     e4772               -1
    i1786     e4773               -1
    i1786     e4876               -1
    i1786     e4877               -1
    i1787     e4731                1
    i1787     e4732                1
    i1787     e4733                1
    i1787     e4734                1
    i1787     e4735                1
    i1788     e4732               -1
    i1788     e4733               -1
    i1788     e4775               -1
    i1788     e4776               -1
    i1788     e4928               -1
    i1788     e4929               -1
    i1789     e4736                1
    i1789     e4737                1
    i1789     e4738                1
    i1789     e4757                1
    i1789     e4758                1
    i1790     e4739                1
    i1790     e4740                1
    i1790     e4741                1
    i1790     e4757                1
    i1790     e4758                1
    i1791     e4742                1
    i1791     e4743                1
    i1791     e4744                1
    i1791     e4757                1
    i1791     e4758                1
    i1792     e4745                1
    i1792     e4746                1
    i1792     e4747                1
    i1792     e4757                1
    i1792     e4758                1
    i1793     e4748                1
    i1793     e4749                1
    i1793     e4750                1
    i1793     e4757                1
    i1793     e4758                1
    i1794     e4751                1
    i1794     e4752                1
    i1794     e4753                1
    i1794     e4757                1
    i1794     e4758                1
    i1795     e4754                1
    i1795     e4755                1
    i1795     e4756                1
    i1795     e4757                1
    i1795     e4758                1
    i1796     e4759                1
    i1796     e4760                1
    i1796     e4761                1
    i1796     e4777                1
    i1796     e4778                1
    i1797     e4762                1
    i1797     e4763                1
    i1797     e4764                1
    i1797     e4777                1
    i1797     e4778                1
    i1798     e4765                1
    i1798     e4766                1
    i1798     e4767                1
    i1798     e4777                1
    i1798     e4778                1
    i1799     e4768                1
    i1799     e4769                1
    i1799     e4770                1
    i1799     e4777                1
    i1799     e4778                1
    i1800     e4771                1
    i1800     e4772                1
    i1800     e4773                1
    i1800     e4777                1
    i1800     e4778                1
    i1801     e4774                1
    i1801     e4775                1
    i1801     e4776                1
    i1801     e4777                1
    i1801     e4778                1
    i1802     e4779                1
    i1802     e4780                1
    i1802     e4781                1
    i1802     e4782                1
    i1802     e4783                1
    i1803     e4784                1
    i1803     e4785                1
    i1803     e4786                1
    i1803     e4787                1
    i1803     e4788                1
    i1804     e4789                1
    i1804     e4790                1
    i1804     e4791                1
    i1804     e4792                1
    i1804     e4793                1
    i1805     e4794                1
    i1805     e4795                1
    i1805     e4796                1
    i1805     e4797                1
    i1805     e4798                1
    i1806     e4799                1
    i1806     e4800                1
    i1806     e4801                1
    i1806     e4802                1
    i1806     e4803                1
    i1807     e4804                1
    i1807     e4805                1
    i1807     e4806                1
    i1807     e4807                1
    i1807     e4808                1
    i1808     e4809                1
    i1808     e4810                1
    i1808     e4811                1
    i1808     e4812                1
    i1808     e4813                1
    i1809     e4814                1
    i1809     e4815                1
    i1809     e4816                1
    i1809     e4817                1
    i1809     e4818                1
    i1810     e4819                1
    i1810     e4820                1
    i1810     e4821                1
    i1810     e4822                1
    i1810     e4823                1
    i1811     e4824                1
    i1811     e4825                1
    i1811     e4826                1
    i1811     e4827                1
    i1811     e4828                1
    i1812     e4829                1
    i1812     e4830                1
    i1812     e4831                1
    i1812     e4832                1
    i1812     e4833                1
    i1813     e4834                1
    i1813     e4835                1
    i1813     e4836                1
    i1813     e4837                1
    i1813     e4838                1
    i1814     e4839                1
    i1814     e4840                1
    i1814     e4841                1
    i1814     e4842                1
    i1814     e4843                1
    i1815     e4844                1
    i1815     e4845                1
    i1815     e4846                1
    i1815     e4847                1
    i1815     e4848                1
    i1816     e4849                1
    i1816     e4850                1
    i1816     e4851                1
    i1816     e4852                1
    i1816     e4853                1
    i1817     e4854                1
    i1817     e4855                1
    i1817     e4856                1
    i1817     e4857                1
    i1817     e4858                1
    i1818     e4859                1
    i1818     e4860                1
    i1818     e4861                1
    i1818     e4865                1
    i1818     e4866                1
    i1819     e4862                1
    i1819     e4863                1
    i1819     e4864                1
    i1819     e4865                1
    i1819     e4866                1
    i1820     e4867                1
    i1820     e4868                1
    i1820     e4869                1
    i1820     e4873                1
    i1820     e4874                1
    i1821     e4870                1
    i1821     e4871                1
    i1821     e4872                1
    i1821     e4873                1
    i1821     e4874                1
    i1822     e4875                1
    i1822     e4876                1
    i1822     e4877                1
    i1822     e4881                1
    i1822     e4882                1
    i1823     e4878                1
    i1823     e4879                1
    i1823     e4880                1
    i1823     e4881                1
    i1823     e4882                1
    i1824     e4883                1
    i1824     e4884                1
    i1824     e4885                1
    i1824     e4889                1
    i1824     e4890                1
    i1825     e4886                1
    i1825     e4887                1
    i1825     e4888                1
    i1825     e4889                1
    i1825     e4890                1
    i1826     e4891                1
    i1826     e4892                1
    i1826     e4893                1
    i1826     e4894                1
    i1826     e4895                1
    i1827     e4896                1
    i1827     e4897                1
    i1827     e4898                1
    i1827     e4899                1
    i1827     e4900                1
    i1828     e4901                1
    i1828     e4902                1
    i1828     e4903                1
    i1828     e4904                1
    i1828     e4905                1
    i1829     e4906                1
    i1829     e4907                1
    i1829     e4908                1
    i1829     e4909                1
    i1829     e4910                1
    i1830     e4911                1
    i1830     e4912                1
    i1830     e4913                1
    i1830     e4917                1
    i1830     e4918                1
    i1831     e4914                1
    i1831     e4915                1
    i1831     e4916                1
    i1831     e4917                1
    i1831     e4918                1
    i1832     e4919                1
    i1832     e4920                1
    i1832     e4921                1
    i1832     e4925                1
    i1832     e4926                1
    i1833     e4922                1
    i1833     e4923                1
    i1833     e4924                1
    i1833     e4925                1
    i1833     e4926                1
    i1834     e4927                1
    i1834     e4928                1
    i1834     e4929                1
    i1834     e4933                1
    i1834     e4934                1
    i1835     e4930                1
    i1835     e4931                1
    i1835     e4932                1
    i1835     e4933                1
    i1835     e4934                1
    i1836     e4935                1
    i1836     e4936                1
    i1836     e4937                1
    i1836     e4941                1
    i1836     e4942                1
    i1837     e4938                1
    i1837     e4939                1
    i1837     e4940                1
    i1837     e4941                1
    i1837     e4942                1
    i1838     e4943                1
    i1838     e4944                1
    i1838     e4945                1
    i1838     e4946                1
    i1838     e4947                1
    i1839     e4948                1
    i1839     e4949                1
    i1839     e4950                1
    i1839     e4951                1
    i1839     e4952                1
    i1840     e4953                1
    i1840     e4954                1
    i1840     e4955                1
    i1840     e4956                1
    i1840     e4957                1
    i1841     e4958                1
    i1841     e4959                1
    i1841     e4960                1
    i1841     e4961                1
    i1841     e4962                1
    i1842     e4963                1
    i1842     e4964                1
    i1842     e4965                1
    i1842     e4966                1
    i1842     e4967                1
    i1843     e4966               -3
    i1843     e4967               -3
    i1843     e4986               -3
    i1843     e4987               -3
    i1844     e4968                1
    i1844     e4969                1
    i1844     e4970                1
    i1844     e4971                1
    i1844     e4972                1
    i1845     e4971               -3
    i1845     e4972               -3
    i1845     e4991               -3
    i1845     e4992               -3
    i1846     e4973                1
    i1846     e4974                1
    i1846     e4975                1
    i1846     e4976                1
    i1846     e4977                1
    i1847     e4976               -3
    i1847     e4977               -3
    i1847     e4996               -3
    i1847     e4997               -3
    i1848     e4978                1
    i1848     e4979                1
    i1848     e4980                1
    i1848     e4981                1
    i1848     e4982                1
    i1849     e4981               -3
    i1849     e4982               -3
    i1849     e5001               -3
    i1849     e5002               -3
    i1850     e4983                1
    i1850     e4984                1
    i1850     e4985                1
    i1850     e4986                1
    i1850     e4987                1
    i1851     e4988                1
    i1851     e4989                1
    i1851     e4990                1
    i1851     e4991                1
    i1851     e4992                1
    i1852     e4993                1
    i1852     e4994                1
    i1852     e4995                1
    i1852     e4996                1
    i1852     e4997                1
    i1853     e4998                1
    i1853     e4999                1
    i1853     e5000                1
    i1853     e5001                1
    i1853     e5002                1
    i1854     e5003                1
    i1854     e5004                1
    i1854     e5005                1
    i1854     e5006                1
    i1854     e5007                1
    i1855     e5006               -3
    i1855     e5007               -3
    i1856     e5008                1
    i1856     e5009                1
    i1856     e5010                1
    i1856     e5011                1
    i1856     e5012                1
    i1857     e5011               -3
    i1857     e5012               -3
    i1858     e5091                1
    i1858     e5092                1
    i1858     e5123                1
    i1858     e5124                1
    i1859     e5099                1
    i1859     e5100                1
    i1859     e5131                1
    i1859     e5132                1
    i1860     e5107                1
    i1860     e5108                1
    i1860     e5139                1
    i1860     e5140                1
    i1861     e5115                1
    i1861     e5116                1
    i1861     e5147                1
    i1861     e5148                1
    MARK1     'MARKER'                 'INTEND'
    x1862     obj                  1
    x1862     e5151                1
RHS
    rhs       e1                   1
    rhs       e3                   1
    rhs       e5                   1
    rhs       e7                   1
    rhs       e9                   1
    rhs       e11                  1
    rhs       e13                  1
    rhs       e15                  1
    rhs       e17                  1
    rhs       e19                  1
    rhs       e21                  1
    rhs       e23                  1
    rhs       e25                  1
    rhs       e27                  1
    rhs       e29                  1
    rhs       e31                  1
    rhs       e34                 -5
    rhs       e36                 -5
    rhs       e38                 -4
    rhs       e42                 -4
    rhs       e46                 -4
    rhs       e48                 -4
    rhs       e50                 -3
    rhs       e54                 -3
    rhs       e58                 -3
    rhs       e60                 -3
    rhs       e62                 -2
    rhs       e66                 -2
    rhs       e70                 -3
    rhs       e72                 -3
    rhs       e74                 -2
    rhs       e78                 -2
    rhs       e82                 -6
    rhs       e86                 -6
    rhs       e90                 -6
    rhs       e94                 -6
    rhs       e98                 -6
    rhs       e100                -6
    rhs       e102                -6
    rhs       e104                -6
    rhs       e106                -5
    rhs       e108                -5
    rhs       e110                -4
    rhs       e114                -4
    rhs       e118                -4
    rhs       e120                -4
    rhs       e124                -3
    rhs       e128                -3
    rhs       e132                -3
    rhs       e134                -3
    rhs       e136                -2
    rhs       e140                -2
    rhs       e144                -3
    rhs       e146                -3
    rhs       e150                -2
    rhs       e154                -2
    rhs       e158                -6
    rhs       e162                -6
    rhs       e166                -6
    rhs       e170                -6
    rhs       e172                -6
    rhs       e174                -6
    rhs       e176                -6
    rhs       e178                -6
    rhs       e180                -9
    rhs       e184                -8
    rhs       e188                -8
    rhs       e192                -9
    rhs       e194                -8
    rhs       e198                -8
    rhs       e202                -2
    rhs       e204                -2
    rhs       e206                -2
    rhs       e208                -2
    rhs       e209                 1
    rhs       e211                 1
    rhs       e213                 1
    rhs       e215                 1
    rhs       e217                 1
    rhs       e219                 1
    rhs       e221                 1
    rhs       e223                 1
    rhs       e225                 1
    rhs       e227                 1
    rhs       e229                 1
    rhs       e231                 1
    rhs       e233                 1
    rhs       e235                 1
    rhs       e237                 1
    rhs       e239                 1
    rhs       e241                 1
    rhs       e243                 1
    rhs       e245                 1
    rhs       e247                 1
    rhs       e249                 1
    rhs       e251                 1
    rhs       e253                 1
    rhs       e255                 1
    rhs       e257                 1
    rhs       e259                 1
    rhs       e261                 1
    rhs       e263                 1
    rhs       e265                 1
    rhs       e267                 1
    rhs       e269                 1
    rhs       e271                 1
    rhs       e273                 1
    rhs       e275                 1
    rhs       e277                 1
    rhs       e279                 1
    rhs       e281                 1
    rhs       e283                 1
    rhs       e285                 1
    rhs       e287                 1
    rhs       e289                 1
    rhs       e291                 1
    rhs       e293                 1
    rhs       e295                 1
    rhs       e298                 1
    rhs       e300                 1
    rhs       e302                 1
    rhs       e303                 1
    rhs       e305                 1
    rhs       e306                 1
    rhs       e307                 1
    rhs       e308                 1
    rhs       e311                -2
    rhs       e312               -18
    rhs       e313                18
    rhs       e316                -2
    rhs       e317               -18
    rhs       e318                18
    rhs       e319                 1
    rhs       e322                -2
    rhs       e323               -18
    rhs       e324                18
    rhs       e327                -2
    rhs       e328               -18
    rhs       e329                18
    rhs       e330                 1
    rhs       e333                -2
    rhs       e334               -18
    rhs       e335                18
    rhs       e338                -2
    rhs       e339               -18
    rhs       e340                18
    rhs       e343                -2
    rhs       e344               -18
    rhs       e345                18
    rhs       e346                 1
    rhs       e349                -2
    rhs       e350               -18
    rhs       e351                18
    rhs       e354                -2
    rhs       e355               -18
    rhs       e356                18
    rhs       e359                -2
    rhs       e360               -18
    rhs       e361                18
    rhs       e362                 1
    rhs       e365                -2
    rhs       e366               -18
    rhs       e367                18
    rhs       e370                -2
    rhs       e371               -18
    rhs       e372                18
    rhs       e373                 1
    rhs       e376                -2
    rhs       e377               -18
    rhs       e378                18
    rhs       e381                -2
    rhs       e382               -18
    rhs       e383                18
    rhs       e384                 1
    rhs       e387                -2
    rhs       e388               -18
    rhs       e389                18
    rhs       e392                -2
    rhs       e393               -18
    rhs       e394                18
    rhs       e395                 1
    rhs       e398                -2
    rhs       e399               -18
    rhs       e400                18
    rhs       e403                -2
    rhs       e404               -18
    rhs       e405                18
    rhs       e406                 1
    rhs       e409                -2
    rhs       e410               -18
    rhs       e411                18
    rhs       e414                -2
    rhs       e415               -18
    rhs       e416                18
    rhs       e419                -2
    rhs       e420               -18
    rhs       e421                18
    rhs       e422                 1
    rhs       e425                -2
    rhs       e426               -18
    rhs       e427                18
    rhs       e430                -2
    rhs       e431               -18
    rhs       e432                18
    rhs       e435                -2
    rhs       e436               -18
    rhs       e437                18
    rhs       e438                 1
    rhs       e441                -2
    rhs       e442               -18
    rhs       e443                18
    rhs       e446                -2
    rhs       e447               -18
    rhs       e448                18
    rhs       e449                 1
    rhs       e452                -2
    rhs       e453               -18
    rhs       e454                18
    rhs       e457                -2
    rhs       e458               -18
    rhs       e459                18
    rhs       e460                 1
    rhs       e463                -2
    rhs       e464               -18
    rhs       e465                18
    rhs       e468                -2
    rhs       e469               -18
    rhs       e470                18
    rhs       e471                 1
    rhs       e474                -2
    rhs       e475               -18
    rhs       e476                18
    rhs       e479                -2
    rhs       e480               -18
    rhs       e481                18
    rhs       e482                 1
    rhs       e485                -2
    rhs       e486               -18
    rhs       e487                18
    rhs       e490                -2
    rhs       e491               -18
    rhs       e492                18
    rhs       e495                -2
    rhs       e496               -18
    rhs       e497                18
    rhs       e498                 1
    rhs       e501                -2
    rhs       e502               -18
    rhs       e503                18
    rhs       e506                -2
    rhs       e507               -18
    rhs       e508                18
    rhs       e511                -2
    rhs       e512               -18
    rhs       e513                18
    rhs       e514                 1
    rhs       e517                -2
    rhs       e518               -18
    rhs       e519                18
    rhs       e522                -2
    rhs       e523               -18
    rhs       e524                18
    rhs       e525                 1
    rhs       e528                -2
    rhs       e529               -18
    rhs       e530                18
    rhs       e533                -2
    rhs       e534               -18
    rhs       e535                18
    rhs       e536                 1
    rhs       e539                -2
    rhs       e540               -18
    rhs       e541                18
    rhs       e544                -2
    rhs       e545               -18
    rhs       e546                18
    rhs       e549                -2
    rhs       e550               -18
    rhs       e551                18
    rhs       e552                 1
    rhs       e555                -2
    rhs       e556               -18
    rhs       e557                18
    rhs       e560                -2
    rhs       e561               -18
    rhs       e562                18
    rhs       e565                -2
    rhs       e566               -18
    rhs       e567                18
    rhs       e568                 1
    rhs       e571                -2
    rhs       e572               -18
    rhs       e573                18
    rhs       e576                -2
    rhs       e577               -18
    rhs       e578                18
    rhs       e581                -2
    rhs       e582               -18
    rhs       e583                18
    rhs       e584                 1
    rhs       e587                -2
    rhs       e588               -18
    rhs       e589                18
    rhs       e592                -2
    rhs       e593               -18
    rhs       e594                18
    rhs       e597                -2
    rhs       e598               -18
    rhs       e599                18
    rhs       e600                 1
    rhs       e603                -2
    rhs       e604               -18
    rhs       e605                18
    rhs       e608                -2
    rhs       e609               -18
    rhs       e610                18
    rhs       e613                -2
    rhs       e614               -18
    rhs       e615                18
    rhs       e616                 1
    rhs       e619                -2
    rhs       e620               -18
    rhs       e621                18
    rhs       e624                -2
    rhs       e625               -18
    rhs       e626                18
    rhs       e629                -2
    rhs       e630               -18
    rhs       e631                18
    rhs       e632                 1
    rhs       e635                -2
    rhs       e636               -18
    rhs       e637                18
    rhs       e640                -2
    rhs       e641               -18
    rhs       e642                18
    rhs       e645                -2
    rhs       e646               -18
    rhs       e647                18
    rhs       e648                 1
    rhs       e651                -2
    rhs       e652               -18
    rhs       e653                18
    rhs       e656                -2
    rhs       e657               -18
    rhs       e658                18
    rhs       e661                -2
    rhs       e662               -18
    rhs       e663                18
    rhs       e664                 1
    rhs       e667                -2
    rhs       e668               -18
    rhs       e669                18
    rhs       e672                -2
    rhs       e673               -18
    rhs       e674                18
    rhs       e677                -2
    rhs       e678               -18
    rhs       e679                18
    rhs       e682                -2
    rhs       e683               -18
    rhs       e684                18
    rhs       e687                -2
    rhs       e688               -18
    rhs       e689                18
    rhs       e692                -2
    rhs       e693               -18
    rhs       e694                18
    rhs       e697                -2
    rhs       e698               -18
    rhs       e699                18
    rhs       e702                -2
    rhs       e703               -18
    rhs       e704                18
    rhs       e707                -2
    rhs       e708               -18
    rhs       e709                18
    rhs       e712                -2
    rhs       e713               -18
    rhs       e714                18
    rhs       e715                 1
    rhs       e718                -2
    rhs       e719               -18
    rhs       e720                18
    rhs       e723                -2
    rhs       e724               -18
    rhs       e725                18
    rhs       e728                -2
    rhs       e729               -18
    rhs       e730                18
    rhs       e733                -2
    rhs       e734               -18
    rhs       e735                18
    rhs       e738                -2
    rhs       e739               -18
    rhs       e740                18
    rhs       e743                -2
    rhs       e744               -18
    rhs       e745                18
    rhs       e748                -2
    rhs       e749               -18
    rhs       e750                18
    rhs       e753                -2
    rhs       e754               -18
    rhs       e755                18
    rhs       e758                -2
    rhs       e759               -18
    rhs       e760                18
    rhs       e763                -2
    rhs       e764               -18
    rhs       e765                18
    rhs       e766                 1
    rhs       e769                -2
    rhs       e770               -18
    rhs       e771                18
    rhs       e774                -2
    rhs       e775               -18
    rhs       e776                18
    rhs       e779                -2
    rhs       e780               -18
    rhs       e781                18
    rhs       e784                -2
    rhs       e785               -18
    rhs       e786                18
    rhs       e789                -2
    rhs       e790               -18
    rhs       e791                18
    rhs       e794                -2
    rhs       e795               -18
    rhs       e796                18
    rhs       e799                -2
    rhs       e800               -18
    rhs       e801                18
    rhs       e804                -2
    rhs       e805               -18
    rhs       e806                18
    rhs       e809                -2
    rhs       e810               -18
    rhs       e811                18
    rhs       e814                -2
    rhs       e815               -18
    rhs       e816                18
    rhs       e819                -2
    rhs       e820               -18
    rhs       e821                18
    rhs       e822                 1
    rhs       e825                -2
    rhs       e826               -18
    rhs       e827                18
    rhs       e830                -2
    rhs       e831               -18
    rhs       e832                18
    rhs       e835                -2
    rhs       e836               -18
    rhs       e837                18
    rhs       e838                 1
    rhs       e841                -2
    rhs       e842               -18
    rhs       e843                18
    rhs       e846                -2
    rhs       e847               -18
    rhs       e848                18
    rhs       e851                -2
    rhs       e852               -18
    rhs       e853                18
    rhs       e854                 1
    rhs       e857                -2
    rhs       e858               -18
    rhs       e859                18
    rhs       e862                -2
    rhs       e863               -18
    rhs       e864                18
    rhs       e867                -2
    rhs       e868               -18
    rhs       e869                18
    rhs       e870                 1
    rhs       e873                -2
    rhs       e874               -18
    rhs       e875                18
    rhs       e878                -2
    rhs       e879               -18
    rhs       e880                18
    rhs       e883                -2
    rhs       e884               -18
    rhs       e885                18
    rhs       e886                 1
    rhs       e889                -2
    rhs       e890               -18
    rhs       e891                18
    rhs       e894                -2
    rhs       e895               -18
    rhs       e896                18
    rhs       e899                -2
    rhs       e900               -18
    rhs       e901                18
    rhs       e902                 1
    rhs       e905                -2
    rhs       e906               -18
    rhs       e907                18
    rhs       e910                -2
    rhs       e911               -18
    rhs       e912                18
    rhs       e915                -2
    rhs       e916               -18
    rhs       e917                18
    rhs       e918                 1
    rhs       e921                -2
    rhs       e922               -18
    rhs       e923                18
    rhs       e926                -2
    rhs       e927               -18
    rhs       e928                18
    rhs       e931                -2
    rhs       e932               -18
    rhs       e933                18
    rhs       e934                 1
    rhs       e937                -2
    rhs       e938               -18
    rhs       e939                18
    rhs       e942                -2
    rhs       e943               -18
    rhs       e944                18
    rhs       e947                -2
    rhs       e948               -18
    rhs       e949                18
    rhs       e950                 1
    rhs       e953                -2
    rhs       e954               -18
    rhs       e955                18
    rhs       e958                -2
    rhs       e959               -18
    rhs       e960                18
    rhs       e963                -2
    rhs       e964               -18
    rhs       e965                18
    rhs       e968                -2
    rhs       e969               -18
    rhs       e970                18
    rhs       e973                -2
    rhs       e974               -18
    rhs       e975                18
    rhs       e978                -2
    rhs       e979               -18
    rhs       e980                18
    rhs       e983                -2
    rhs       e984               -18
    rhs       e985                18
    rhs       e988                -2
    rhs       e989               -18
    rhs       e990                18
    rhs       e993                -2
    rhs       e994               -18
    rhs       e995                18
    rhs       e998                -2
    rhs       e999               -18
    rhs       e1000               18
    rhs       e1001                1
    rhs       e1004               -2
    rhs       e1005              -18
    rhs       e1006               18
    rhs       e1009               -2
    rhs       e1010              -18
    rhs       e1011               18
    rhs       e1014               -2
    rhs       e1015              -18
    rhs       e1016               18
    rhs       e1019               -2
    rhs       e1020              -18
    rhs       e1021               18
    rhs       e1024               -2
    rhs       e1025              -18
    rhs       e1026               18
    rhs       e1029               -2
    rhs       e1030              -18
    rhs       e1031               18
    rhs       e1034               -2
    rhs       e1035              -18
    rhs       e1036               18
    rhs       e1039               -2
    rhs       e1040              -18
    rhs       e1041               18
    rhs       e1044               -2
    rhs       e1045              -18
    rhs       e1046               18
    rhs       e1049               -2
    rhs       e1050              -18
    rhs       e1051               18
    rhs       e1052                1
    rhs       e1055               -2
    rhs       e1056              -18
    rhs       e1057               18
    rhs       e1060               -2
    rhs       e1061              -18
    rhs       e1062               18
    rhs       e1065               -2
    rhs       e1066              -18
    rhs       e1067               18
    rhs       e1070               -2
    rhs       e1071              -18
    rhs       e1072               18
    rhs       e1075               -2
    rhs       e1076              -18
    rhs       e1077               18
    rhs       e1080               -2
    rhs       e1081              -18
    rhs       e1082               18
    rhs       e1085               -2
    rhs       e1086              -18
    rhs       e1087               18
    rhs       e1090               -2
    rhs       e1091              -18
    rhs       e1092               18
    rhs       e1095               -2
    rhs       e1096              -18
    rhs       e1097               18
    rhs       e1100               -2
    rhs       e1101              -18
    rhs       e1102               18
    rhs       e1105               -2
    rhs       e1106              -18
    rhs       e1107               18
    rhs       e1108                1
    rhs       e1111               -2
    rhs       e1112              -18
    rhs       e1113               18
    rhs       e1116               -2
    rhs       e1117              -18
    rhs       e1118               18
    rhs       e1119                1
    rhs       e1122               -2
    rhs       e1123              -18
    rhs       e1124               18
    rhs       e1127               -2
    rhs       e1128              -18
    rhs       e1129               18
    rhs       e1130                1
    rhs       e1133               -2
    rhs       e1134              -18
    rhs       e1135               18
    rhs       e1138               -2
    rhs       e1139              -18
    rhs       e1140               18
    rhs       e1143               -2
    rhs       e1144              -18
    rhs       e1145               18
    rhs       e1146                1
    rhs       e1149               -2
    rhs       e1150              -18
    rhs       e1151               18
    rhs       e1154               -2
    rhs       e1155              -18
    rhs       e1156               18
    rhs       e1159               -2
    rhs       e1160              -18
    rhs       e1161               18
    rhs       e1162                1
    rhs       e1165               -2
    rhs       e1166              -18
    rhs       e1167               18
    rhs       e1170               -2
    rhs       e1171              -18
    rhs       e1172               18
    rhs       e1173                1
    rhs       e1176               -2
    rhs       e1177              -18
    rhs       e1178               18
    rhs       e1181               -2
    rhs       e1182              -18
    rhs       e1183               18
    rhs       e1184                1
    rhs       e1187               -2
    rhs       e1188              -18
    rhs       e1189               18
    rhs       e1192               -2
    rhs       e1193              -18
    rhs       e1194               18
    rhs       e1195                1
    rhs       e1198               -2
    rhs       e1199              -18
    rhs       e1200               18
    rhs       e1203               -2
    rhs       e1204              -18
    rhs       e1205               18
    rhs       e1206                1
    rhs       e1209               -2
    rhs       e1210              -18
    rhs       e1211               18
    rhs       e1214               -2
    rhs       e1215              -18
    rhs       e1216               18
    rhs       e1219               -2
    rhs       e1220              -18
    rhs       e1221               18
    rhs       e1222                1
    rhs       e1225               -2
    rhs       e1226              -18
    rhs       e1227               18
    rhs       e1230               -2
    rhs       e1231              -18
    rhs       e1232               18
    rhs       e1235               -2
    rhs       e1236              -18
    rhs       e1237               18
    rhs       e1238                1
    rhs       e1241               -2
    rhs       e1242              -18
    rhs       e1243               18
    rhs       e1246               -2
    rhs       e1247              -18
    rhs       e1248               18
    rhs       e1249                1
    rhs       e1252               -2
    rhs       e1253              -18
    rhs       e1254               18
    rhs       e1257               -2
    rhs       e1258              -18
    rhs       e1259               18
    rhs       e1260                1
    rhs       e1263               -2
    rhs       e1264              -18
    rhs       e1265               18
    rhs       e1268               -2
    rhs       e1269              -18
    rhs       e1270               18
    rhs       e1271                1
    rhs       e1274               -2
    rhs       e1275              -18
    rhs       e1276               18
    rhs       e1279               -2
    rhs       e1280              -18
    rhs       e1281               18
    rhs       e1282                1
    rhs       e1285               -2
    rhs       e1286              -18
    rhs       e1287               18
    rhs       e1290               -2
    rhs       e1291              -18
    rhs       e1292               18
    rhs       e1295               -2
    rhs       e1296              -18
    rhs       e1297               18
    rhs       e1298                1
    rhs       e1301               -2
    rhs       e1302              -18
    rhs       e1303               18
    rhs       e1306               -2
    rhs       e1307              -18
    rhs       e1308               18
    rhs       e1311               -2
    rhs       e1312              -18
    rhs       e1313               18
    rhs       e1314                1
    rhs       e1317               -2
    rhs       e1318              -18
    rhs       e1319               18
    rhs       e1322               -2
    rhs       e1323              -18
    rhs       e1324               18
    rhs       e1325                1
    rhs       e1328               -2
    rhs       e1329              -18
    rhs       e1330               18
    rhs       e1333               -2
    rhs       e1334              -18
    rhs       e1335               18
    rhs       e1336                1
    rhs       e1339               -2
    rhs       e1340              -18
    rhs       e1341               18
    rhs       e1344               -2
    rhs       e1345              -18
    rhs       e1346               18
    rhs       e1349               -2
    rhs       e1350              -18
    rhs       e1351               18
    rhs       e1352                1
    rhs       e1355               -2
    rhs       e1356              -18
    rhs       e1357               18
    rhs       e1360               -2
    rhs       e1361              -18
    rhs       e1362               18
    rhs       e1365               -2
    rhs       e1366              -18
    rhs       e1367               18
    rhs       e1368                1
    rhs       e1371               -2
    rhs       e1372              -18
    rhs       e1373               18
    rhs       e1376               -2
    rhs       e1377              -18
    rhs       e1378               18
    rhs       e1381               -2
    rhs       e1382              -18
    rhs       e1383               18
    rhs       e1384                1
    rhs       e1387               -2
    rhs       e1388              -18
    rhs       e1389               18
    rhs       e1392               -2
    rhs       e1393              -18
    rhs       e1394               18
    rhs       e1397               -2
    rhs       e1398              -18
    rhs       e1399               18
    rhs       e1400                1
    rhs       e1403               -2
    rhs       e1404              -18
    rhs       e1405               18
    rhs       e1408               -2
    rhs       e1409              -18
    rhs       e1410               18
    rhs       e1413               -2
    rhs       e1414              -18
    rhs       e1415               18
    rhs       e1416                1
    rhs       e1419               -2
    rhs       e1420              -18
    rhs       e1421               18
    rhs       e1424               -2
    rhs       e1425              -18
    rhs       e1426               18
    rhs       e1429               -2
    rhs       e1430              -18
    rhs       e1431               18
    rhs       e1432                1
    rhs       e1435               -2
    rhs       e1436              -18
    rhs       e1437               18
    rhs       e1440               -2
    rhs       e1441              -18
    rhs       e1442               18
    rhs       e1445               -2
    rhs       e1446              -18
    rhs       e1447               18
    rhs       e1448                1
    rhs       e1451               -2
    rhs       e1452              -18
    rhs       e1453               18
    rhs       e1456               -2
    rhs       e1457              -18
    rhs       e1458               18
    rhs       e1461               -2
    rhs       e1462              -18
    rhs       e1463               18
    rhs       e1464                1
    rhs       e1467               -2
    rhs       e1468              -18
    rhs       e1469               18
    rhs       e1472               -2
    rhs       e1473              -18
    rhs       e1474               18
    rhs       e1477               -2
    rhs       e1478              -18
    rhs       e1479               18
    rhs       e1482               -2
    rhs       e1483              -18
    rhs       e1484               18
    rhs       e1487               -2
    rhs       e1488              -18
    rhs       e1489               18
    rhs       e1492               -2
    rhs       e1493              -18
    rhs       e1494               18
    rhs       e1497               -2
    rhs       e1498              -18
    rhs       e1499               18
    rhs       e1502               -2
    rhs       e1503              -18
    rhs       e1504               18
    rhs       e1507               -2
    rhs       e1508              -18
    rhs       e1509               18
    rhs       e1512               -2
    rhs       e1513              -18
    rhs       e1514               18
    rhs       e1515                1
    rhs       e1518               -2
    rhs       e1519              -18
    rhs       e1520               18
    rhs       e1523               -2
    rhs       e1524              -18
    rhs       e1525               18
    rhs       e1528               -2
    rhs       e1529              -18
    rhs       e1530               18
    rhs       e1533               -2
    rhs       e1534              -18
    rhs       e1535               18
    rhs       e1538               -2
    rhs       e1539              -18
    rhs       e1540               18
    rhs       e1543               -2
    rhs       e1544              -18
    rhs       e1545               18
    rhs       e1548               -2
    rhs       e1549              -18
    rhs       e1550               18
    rhs       e1553               -2
    rhs       e1554              -18
    rhs       e1555               18
    rhs       e1558               -2
    rhs       e1559              -18
    rhs       e1560               18
    rhs       e1563               -2
    rhs       e1564              -18
    rhs       e1565               18
    rhs       e1566                1
    rhs       e1569               -2
    rhs       e1570              -18
    rhs       e1571               18
    rhs       e1574               -2
    rhs       e1575              -18
    rhs       e1576               18
    rhs       e1579               -2
    rhs       e1580              -18
    rhs       e1581               18
    rhs       e1584               -2
    rhs       e1585              -18
    rhs       e1586               18
    rhs       e1589               -2
    rhs       e1590              -18
    rhs       e1591               18
    rhs       e1594               -2
    rhs       e1595              -18
    rhs       e1596               18
    rhs       e1599               -2
    rhs       e1600              -18
    rhs       e1601               18
    rhs       e1604               -2
    rhs       e1605              -18
    rhs       e1606               18
    rhs       e1609               -2
    rhs       e1610              -18
    rhs       e1611               18
    rhs       e1614               -2
    rhs       e1615              -18
    rhs       e1616               18
    rhs       e1619               -2
    rhs       e1620              -18
    rhs       e1621               18
    rhs       e1622                1
    rhs       e1625               -2
    rhs       e1626              -18
    rhs       e1627               18
    rhs       e1630               -2
    rhs       e1631              -18
    rhs       e1632               18
    rhs       e1635               -2
    rhs       e1636              -18
    rhs       e1637               18
    rhs       e1638                1
    rhs       e1641               -2
    rhs       e1642              -18
    rhs       e1643               18
    rhs       e1646               -2
    rhs       e1647              -18
    rhs       e1648               18
    rhs       e1651               -2
    rhs       e1652              -18
    rhs       e1653               18
    rhs       e1654                1
    rhs       e1657               -2
    rhs       e1658              -18
    rhs       e1659               18
    rhs       e1662               -2
    rhs       e1663              -18
    rhs       e1664               18
    rhs       e1667               -2
    rhs       e1668              -18
    rhs       e1669               18
    rhs       e1670                1
    rhs       e1673               -2
    rhs       e1674              -18
    rhs       e1675               18
    rhs       e1678               -2
    rhs       e1679              -18
    rhs       e1680               18
    rhs       e1683               -2
    rhs       e1684              -18
    rhs       e1685               18
    rhs       e1686                1
    rhs       e1689               -2
    rhs       e1690              -18
    rhs       e1691               18
    rhs       e1694               -2
    rhs       e1695              -18
    rhs       e1696               18
    rhs       e1699               -2
    rhs       e1700              -18
    rhs       e1701               18
    rhs       e1702                1
    rhs       e1705               -2
    rhs       e1706              -18
    rhs       e1707               18
    rhs       e1710               -2
    rhs       e1711              -18
    rhs       e1712               18
    rhs       e1715               -2
    rhs       e1716              -18
    rhs       e1717               18
    rhs       e1718                1
    rhs       e1721               -2
    rhs       e1722              -18
    rhs       e1723               18
    rhs       e1726               -2
    rhs       e1727              -18
    rhs       e1728               18
    rhs       e1731               -2
    rhs       e1732              -18
    rhs       e1733               18
    rhs       e1734                1
    rhs       e1737               -2
    rhs       e1738              -18
    rhs       e1739               18
    rhs       e1742               -2
    rhs       e1743              -18
    rhs       e1744               18
    rhs       e1747               -2
    rhs       e1748              -18
    rhs       e1749               18
    rhs       e1750                1
    rhs       e1753               -2
    rhs       e1754              -18
    rhs       e1755               18
    rhs       e1758               -2
    rhs       e1759              -18
    rhs       e1760               18
    rhs       e1763               -2
    rhs       e1764              -18
    rhs       e1765               18
    rhs       e1768               -2
    rhs       e1769              -18
    rhs       e1770               18
    rhs       e1773               -2
    rhs       e1774              -18
    rhs       e1775               18
    rhs       e1778               -2
    rhs       e1779              -18
    rhs       e1780               18
    rhs       e1783               -2
    rhs       e1784              -18
    rhs       e1785               18
    rhs       e1788               -2
    rhs       e1789              -18
    rhs       e1790               18
    rhs       e1793               -2
    rhs       e1794              -18
    rhs       e1795               18
    rhs       e1798               -2
    rhs       e1799              -18
    rhs       e1800               18
    rhs       e1801                1
    rhs       e1804               -2
    rhs       e1805              -18
    rhs       e1806               18
    rhs       e1809               -2
    rhs       e1810              -18
    rhs       e1811               18
    rhs       e1814               -2
    rhs       e1815              -18
    rhs       e1816               18
    rhs       e1819               -2
    rhs       e1820              -18
    rhs       e1821               18
    rhs       e1824               -2
    rhs       e1825              -18
    rhs       e1826               18
    rhs       e1829               -2
    rhs       e1830              -18
    rhs       e1831               18
    rhs       e1834               -2
    rhs       e1835              -18
    rhs       e1836               18
    rhs       e1839               -2
    rhs       e1840              -18
    rhs       e1841               18
    rhs       e1844               -2
    rhs       e1845              -18
    rhs       e1846               18
    rhs       e1849               -2
    rhs       e1850              -18
    rhs       e1851               18
    rhs       e1852                1
    rhs       e1855               -2
    rhs       e1856              -18
    rhs       e1857               18
    rhs       e1860               -2
    rhs       e1861              -18
    rhs       e1862               18
    rhs       e1865               -2
    rhs       e1866              -18
    rhs       e1867               18
    rhs       e1870               -2
    rhs       e1871              -18
    rhs       e1872               18
    rhs       e1875               -2
    rhs       e1876              -18
    rhs       e1877               18
    rhs       e1880               -2
    rhs       e1881              -18
    rhs       e1882               18
    rhs       e1885               -2
    rhs       e1886              -18
    rhs       e1887               18
    rhs       e1890               -2
    rhs       e1891              -18
    rhs       e1892               18
    rhs       e1895               -2
    rhs       e1896              -18
    rhs       e1897               18
    rhs       e1900               -2
    rhs       e1901              -18
    rhs       e1902               18
    rhs       e1905               -2
    rhs       e1906              -18
    rhs       e1907               18
    rhs       e1908                1
    rhs       e1909                1
    rhs       e1910                1
    rhs       e1913               -1
    rhs       e1916               -1
    rhs       e1920               -1
    rhs       e1923               -1
    rhs       e1927               -1
    rhs       e1930               -1
    rhs       e1932                1
    rhs       e1933                1
    rhs       e1936               -1
    rhs       e1939               -1
    rhs       e1943               -1
    rhs       e1946               -1
    rhs       e1950               -1
    rhs       e1953               -1
    rhs       e1955                1
    rhs       e1956                1
    rhs       e1959               -1
    rhs       e1962               -1
    rhs       e1966               -1
    rhs       e1969               -1
    rhs       e1973               -1
    rhs       e1976               -1
    rhs       e1978                1
    rhs       e1979                1
    rhs       e1982               -1
    rhs       e1985               -1
    rhs       e1989               -1
    rhs       e1992               -1
    rhs       e1996               -1
    rhs       e1999               -1
    rhs       e2001                1
    rhs       e2002                1
    rhs       e2005               -1
    rhs       e2008               -1
    rhs       e2012               -1
    rhs       e2015               -1
    rhs       e2019               -1
    rhs       e2022               -1
    rhs       e2024                1
    rhs       e2025                1
    rhs       e2028               -1
    rhs       e2031               -1
    rhs       e2035               -1
    rhs       e2038               -1
    rhs       e2042               -1
    rhs       e2045               -1
    rhs       e2047                1
    rhs       e2048                1
    rhs       e2051               -1
    rhs       e2054               -1
    rhs       e2058               -1
    rhs       e2061               -1
    rhs       e2065               -1
    rhs       e2068               -1
    rhs       e2070                1
    rhs       e2071                1
    rhs       e2074               -1
    rhs       e2077               -1
    rhs       e2081               -1
    rhs       e2084               -1
    rhs       e2088               -1
    rhs       e2091               -1
    rhs       e2093                1
    rhs       e2094                1
    rhs       e2097               -1
    rhs       e2100               -1
    rhs       e2104               -1
    rhs       e2107               -1
    rhs       e2111               -1
    rhs       e2114               -1
    rhs       e2116                1
    rhs       e2117                1
    rhs       e2120               -1
    rhs       e2123               -1
    rhs       e2127               -1
    rhs       e2130               -1
    rhs       e2134               -1
    rhs       e2137               -1
    rhs       e2139                1
    rhs       e2140                1
    rhs       e2143               -1
    rhs       e2146               -1
    rhs       e2150               -1
    rhs       e2153               -1
    rhs       e2157               -1
    rhs       e2160               -1
    rhs       e2162                1
    rhs       e2163                1
    rhs       e2166               -1
    rhs       e2169               -1
    rhs       e2173               -1
    rhs       e2176               -1
    rhs       e2180               -1
    rhs       e2183               -1
    rhs       e2185                1
    rhs       e2186                1
    rhs       e2189               -1
    rhs       e2192               -1
    rhs       e2196               -1
    rhs       e2199               -1
    rhs       e2203               -1
    rhs       e2206               -1
    rhs       e2208                1
    rhs       e2209                1
    rhs       e2212               -1
    rhs       e2215               -1
    rhs       e2219               -1
    rhs       e2222               -1
    rhs       e2226               -1
    rhs       e2229               -1
    rhs       e2231                1
    rhs       e2232                1
    rhs       e2235               -1
    rhs       e2238               -1
    rhs       e2242               -1
    rhs       e2245               -1
    rhs       e2249               -1
    rhs       e2252               -1
    rhs       e2254                1
    rhs       e2255                1
    rhs       e2258               -1
    rhs       e2261               -1
    rhs       e2265               -1
    rhs       e2268               -1
    rhs       e2272               -1
    rhs       e2275               -1
    rhs       e2277                1
    rhs       e2278                1
    rhs       e2281               -1
    rhs       e2284               -1
    rhs       e2288               -1
    rhs       e2291               -1
    rhs       e2295               -1
    rhs       e2298               -1
    rhs       e2300                1
    rhs       e2301                1
    rhs       e2304               -1
    rhs       e2307               -1
    rhs       e2311               -1
    rhs       e2314               -1
    rhs       e2318               -1
    rhs       e2321               -1
    rhs       e2323                1
    rhs       e2324                1
    rhs       e2327               -1
    rhs       e2330               -1
    rhs       e2334               -1
    rhs       e2337               -1
    rhs       e2339                1
    rhs       e2340                1
    rhs       e2343               -1
    rhs       e2346               -1
    rhs       e2350               -1
    rhs       e2353               -1
    rhs       e2355                1
    rhs       e2356                1
    rhs       e2359               -1
    rhs       e2362               -1
    rhs       e2366               -1
    rhs       e2369               -1
    rhs       e2371                1
    rhs       e2372                1
    rhs       e2375               -1
    rhs       e2378               -1
    rhs       e2382               -1
    rhs       e2385               -1
    rhs       e2387                1
    rhs       e2388                1
    rhs       e2391               -1
    rhs       e2394               -1
    rhs       e2398               -1
    rhs       e2401               -1
    rhs       e2403                1
    rhs       e2404                1
    rhs       e2407               -1
    rhs       e2410               -1
    rhs       e2414               -1
    rhs       e2417               -1
    rhs       e2419                1
    rhs       e2420                1
    rhs       e2423               -1
    rhs       e2426               -1
    rhs       e2430               -1
    rhs       e2433               -1
    rhs       e2435                1
    rhs       e2436                1
    rhs       e2439               -1
    rhs       e2442               -1
    rhs       e2446               -1
    rhs       e2449               -1
    rhs       e2451                1
    rhs       e2452                1
    rhs       e2455               -1
    rhs       e2458               -1
    rhs       e2462               -1
    rhs       e2465               -1
    rhs       e2467                1
    rhs       e2468                1
    rhs       e2471               -1
    rhs       e2474               -1
    rhs       e2478               -1
    rhs       e2481               -1
    rhs       e2483                1
    rhs       e2484                1
    rhs       e2487               -1
    rhs       e2490               -1
    rhs       e2494               -1
    rhs       e2497               -1
    rhs       e2499                1
    rhs       e2500                1
    rhs       e2503               -1
    rhs       e2506               -1
    rhs       e2510               -1
    rhs       e2513               -1
    rhs       e2515                1
    rhs       e2516                1
    rhs       e2519               -1
    rhs       e2522               -1
    rhs       e2526               -1
    rhs       e2529               -1
    rhs       e2533               -1
    rhs       e2536               -1
    rhs       e2539               -1
    rhs       e2541                1
    rhs       e2542                1
    rhs       e2545               -1
    rhs       e2548               -1
    rhs       e2552               -1
    rhs       e2555               -1
    rhs       e2559               -1
    rhs       e2562               -1
    rhs       e2565               -1
    rhs       e2567                1
    rhs       e2568                1
    rhs       e2571               -1
    rhs       e2574               -1
    rhs       e2578               -1
    rhs       e2581               -1
    rhs       e2585               -1
    rhs       e2588               -1
    rhs       e2591               -1
    rhs       e2593                1
    rhs       e2594                1
    rhs       e2597               -1
    rhs       e2600               -1
    rhs       e2604               -1
    rhs       e2607               -1
    rhs       e2611               -1
    rhs       e2614               -1
    rhs       e2617               -1
    rhs       e2619                1
    rhs       e2620                1
    rhs       e2623               -1
    rhs       e2626               -1
    rhs       e2630               -1
    rhs       e2633               -1
    rhs       e2637               -1
    rhs       e2640               -1
    rhs       e2643               -1
    rhs       e2645                1
    rhs       e2646                1
    rhs       e2649               -1
    rhs       e2652               -1
    rhs       e2656               -1
    rhs       e2659               -1
    rhs       e2663               -1
    rhs       e2666               -1
    rhs       e2669               -1
    rhs       e2671                1
    rhs       e2672                1
    rhs       e2675               -1
    rhs       e2678               -1
    rhs       e2682               -1
    rhs       e2685               -1
    rhs       e2689               -1
    rhs       e2692               -1
    rhs       e2695               -1
    rhs       e2697                1
    rhs       e2698                1
    rhs       e2701               -1
    rhs       e2704               -1
    rhs       e2708               -1
    rhs       e2711               -1
    rhs       e2715               -1
    rhs       e2718               -1
    rhs       e2721               -1
    rhs       e2723                1
    rhs       e2724                1
    rhs       e2727               -1
    rhs       e2730               -1
    rhs       e2734               -1
    rhs       e2737               -1
    rhs       e2741               -1
    rhs       e2744               -1
    rhs       e2747               -1
    rhs       e2749                1
    rhs       e2750                1
    rhs       e2753               -1
    rhs       e2756               -1
    rhs       e2760               -1
    rhs       e2763               -1
    rhs       e2767               -1
    rhs       e2770               -1
    rhs       e2773               -1
    rhs       e2775                1
    rhs       e2776                1
    rhs       e2779               -1
    rhs       e2782               -1
    rhs       e2786               -1
    rhs       e2789               -1
    rhs       e2793               -1
    rhs       e2796               -1
    rhs       e2799               -1
    rhs       e2801                1
    rhs       e2802                1
    rhs       e2805               -1
    rhs       e2808               -1
    rhs       e2812               -1
    rhs       e2815               -1
    rhs       e2819               -1
    rhs       e2822               -1
    rhs       e2825               -1
    rhs       e2827                1
    rhs       e2828                1
    rhs       e2831               -1
    rhs       e2834               -1
    rhs       e2837               -1
    rhs       e2841               -1
    rhs       e2844               -1
    rhs       e2847               -1
    rhs       e2851               -1
    rhs       e2854               -1
    rhs       e2857               -1
    rhs       e2861               -1
    rhs       e2864               -1
    rhs       e2867               -1
    rhs       e2871               -1
    rhs       e2874               -1
    rhs       e2877               -1
    rhs       e2881               -1
    rhs       e2884               -1
    rhs       e2887               -1
    rhs       e2891               -1
    rhs       e2894               -1
    rhs       e2897               -1
    rhs       e2901               -1
    rhs       e2904               -1
    rhs       e2907               -1
    rhs       e2911               -1
    rhs       e2914               -1
    rhs       e2917               -1
    rhs       e2920               -1
    rhs       e2923               -1
    rhs       e2926               -1
    rhs       e2929               -1
    rhs       e2932               -1
    rhs       e2935               -1
    rhs       e2938               -1
    rhs       e2942               -1
    rhs       e2945               -1
    rhs       e2948               -1
    rhs       e2951               -1
    rhs       e2954               -1
    rhs       e2957               -1
    rhs       e2960               -1
    rhs       e2963               -1
    rhs       e2966               -1
    rhs       e2969               -1
    rhs       e2973               -1
    rhs       e2976               -1
    rhs       e2979               -1
    rhs       e2982               -1
    rhs       e2985               -1
    rhs       e2988               -1
    rhs       e2991               -1
    rhs       e2994               -1
    rhs       e2997               -1
    rhs       e3000               -1
    rhs       e3002                1
    rhs       e3003                1
    rhs       e3006               -1
    rhs       e3009               -1
    rhs       e3012               -1
    rhs       e3016               -1
    rhs       e3019               -1
    rhs       e3022               -1
    rhs       e3026               -1
    rhs       e3029               -1
    rhs       e3032               -1
    rhs       e3036               -1
    rhs       e3039               -1
    rhs       e3042               -1
    rhs       e3046               -1
    rhs       e3049               -1
    rhs       e3052               -1
    rhs       e3056               -1
    rhs       e3059               -1
    rhs       e3062               -1
    rhs       e3066               -1
    rhs       e3069               -1
    rhs       e3072               -1
    rhs       e3076               -1
    rhs       e3079               -1
    rhs       e3082               -1
    rhs       e3086               -1
    rhs       e3089               -1
    rhs       e3092               -1
    rhs       e3095               -1
    rhs       e3098               -1
    rhs       e3101               -1
    rhs       e3104               -1
    rhs       e3107               -1
    rhs       e3110               -1
    rhs       e3113               -1
    rhs       e3117               -1
    rhs       e3120               -1
    rhs       e3123               -1
    rhs       e3126               -1
    rhs       e3129               -1
    rhs       e3132               -1
    rhs       e3135               -1
    rhs       e3138               -1
    rhs       e3141               -1
    rhs       e3144               -1
    rhs       e3148               -1
    rhs       e3151               -1
    rhs       e3154               -1
    rhs       e3157               -1
    rhs       e3160               -1
    rhs       e3163               -1
    rhs       e3166               -1
    rhs       e3169               -1
    rhs       e3172               -1
    rhs       e3175               -1
    rhs       e3177                1
    rhs       e3179                1
    rhs       e3181                1
    rhs       e3183                1
    rhs       e3185                1
    rhs       e3187                1
    rhs       e3189                1
    rhs       e3191                1
    rhs       e3193                1
    rhs       e3195                1
    rhs       e3197                1
    rhs       e3199                1
    rhs       e3201                1
    rhs       e3203                1
    rhs       e3205                1
    rhs       e3207                1
    rhs       e3209                1
    rhs       e3211                1
    rhs       e3213                1
    rhs       e3215                1
    rhs       e3217                1
    rhs       e3219                1
    rhs       e3221                1
    rhs       e3223                1
    rhs       e3225                1
    rhs       e3227                1
    rhs       e3229                1
    rhs       e3231                1
    rhs       e3233                1
    rhs       e3235                1
    rhs       e3237                1
    rhs       e3239                1
    rhs       e3241                1
    rhs       e3243                1
    rhs       e3245                1
    rhs       e3247                1
    rhs       e3249                1
    rhs       e3251                1
    rhs       e3253                1
    rhs       e3255                1
    rhs       e3257                1
    rhs       e3259                1
    rhs       e3261                1
    rhs       e3263                1
    rhs       e3265                1
    rhs       e3267                1
    rhs       e3269                1
    rhs       e3271                1
    rhs       e3273                1
    rhs       e3275                1
    rhs       e3277                1
    rhs       e3279                1
    rhs       e3281                1
    rhs       e3283                1
    rhs       e3285                1
    rhs       e3287                1
    rhs       e3289                1
    rhs       e3291                1
    rhs       e3293                1
    rhs       e3295                1
    rhs       e3297                1
    rhs       e3299                1
    rhs       e3301                1
    rhs       e3303                1
    rhs       e3306               -1
    rhs       e3308               -1
    rhs       e3310               -1
    rhs       e3312               -1
    rhs       e3315               -1
    rhs       e3318               -1
    rhs       e3321               -1
    rhs       e3324               -1
    rhs       e3327               -1
    rhs       e3329               -6
    rhs       e3332               -1
    rhs       e3335               -1
    rhs       e3338               -1
    rhs       e3341               -1
    rhs       e3344               -1
    rhs       e3346               -6
    rhs       e3349               -1
    rhs       e3352               -1
    rhs       e3355               -1
    rhs       e3358               -1
    rhs       e3361               -1
    rhs       e3363               -6
    rhs       e3366               -1
    rhs       e3369               -1
    rhs       e3372               -1
    rhs       e3375               -1
    rhs       e3378               -1
    rhs       e3380               -6
    rhs       e3383               -1
    rhs       e3386               -1
    rhs       e3389               -1
    rhs       e3392               -1
    rhs       e3395               -1
    rhs       e3397               -6
    rhs       e3400               -1
    rhs       e3403               -1
    rhs       e3406               -1
    rhs       e3409               -1
    rhs       e3412               -1
    rhs       e3414               -6
    rhs       e3417               -1
    rhs       e3420               -1
    rhs       e3423               -1
    rhs       e3426               -1
    rhs       e3429               -1
    rhs       e3431               -6
    rhs       e3434               -1
    rhs       e3437               -1
    rhs       e3440               -1
    rhs       e3443               -1
    rhs       e3446               -1
    rhs       e3448               -6
    rhs       e3451               -1
    rhs       e3454               -1
    rhs       e3457               -1
    rhs       e3460               -1
    rhs       e3463               -1
    rhs       e3465               -6
    rhs       e3468               -1
    rhs       e3471               -1
    rhs       e3474               -1
    rhs       e3477               -1
    rhs       e3480               -1
    rhs       e3482               -6
    rhs       e3484               -1
    rhs       e3486               -1
    rhs       e3488               -1
    rhs       e3490               -1
    rhs       e3493               -1
    rhs       e3496               -1
    rhs       e3499               -1
    rhs       e3502               -1
    rhs       e3505               -1
    rhs       e3507               -6
    rhs       e3510               -1
    rhs       e3513               -1
    rhs       e3516               -1
    rhs       e3519               -1
    rhs       e3522               -1
    rhs       e3524               -6
    rhs       e3527               -1
    rhs       e3530               -1
    rhs       e3533               -1
    rhs       e3536               -1
    rhs       e3539               -1
    rhs       e3541               -6
    rhs       e3544               -1
    rhs       e3547               -1
    rhs       e3550               -1
    rhs       e3553               -1
    rhs       e3556               -1
    rhs       e3558               -6
    rhs       e3561               -1
    rhs       e3564               -1
    rhs       e3567               -1
    rhs       e3570               -1
    rhs       e3573               -1
    rhs       e3575               -6
    rhs       e3578               -1
    rhs       e3581               -1
    rhs       e3584               -1
    rhs       e3587               -1
    rhs       e3590               -1
    rhs       e3592               -6
    rhs       e3595               -1
    rhs       e3598               -1
    rhs       e3601               -1
    rhs       e3604               -1
    rhs       e3607               -1
    rhs       e3609               -6
    rhs       e3612               -1
    rhs       e3615               -1
    rhs       e3618               -1
    rhs       e3621               -1
    rhs       e3624               -1
    rhs       e3626               -6
    rhs       e3629               -1
    rhs       e3632               -1
    rhs       e3635               -1
    rhs       e3638               -1
    rhs       e3641               -1
    rhs       e3643               -6
    rhs       e3646               -1
    rhs       e3649               -1
    rhs       e3652               -1
    rhs       e3655               -1
    rhs       e3658               -1
    rhs       e3660               -6
    rhs       e3662               -1
    rhs       e3664               -1
    rhs       e3666               -1
    rhs       e3668               -1
    rhs       e3671               -1
    rhs       e3674               -1
    rhs       e3677               -1
    rhs       e3680               -1
    rhs       e3683               -1
    rhs       e3685               -6
    rhs       e3688               -1
    rhs       e3691               -1
    rhs       e3694               -1
    rhs       e3697               -1
    rhs       e3700               -1
    rhs       e3702               -6
    rhs       e3705               -1
    rhs       e3708               -1
    rhs       e3711               -1
    rhs       e3714               -1
    rhs       e3717               -1
    rhs       e3719               -6
    rhs       e3722               -1
    rhs       e3725               -1
    rhs       e3728               -1
    rhs       e3731               -1
    rhs       e3734               -1
    rhs       e3736               -6
    rhs       e3739               -1
    rhs       e3742               -1
    rhs       e3745               -1
    rhs       e3748               -1
    rhs       e3751               -1
    rhs       e3753               -6
    rhs       e3756               -1
    rhs       e3759               -1
    rhs       e3762               -1
    rhs       e3765               -1
    rhs       e3768               -1
    rhs       e3770               -6
    rhs       e3773               -1
    rhs       e3776               -1
    rhs       e3779               -1
    rhs       e3782               -1
    rhs       e3785               -1
    rhs       e3787               -6
    rhs       e3790               -1
    rhs       e3793               -1
    rhs       e3796               -1
    rhs       e3799               -1
    rhs       e3802               -1
    rhs       e3804               -6
    rhs       e3807               -1
    rhs       e3810               -1
    rhs       e3813               -1
    rhs       e3816               -1
    rhs       e3819               -1
    rhs       e3821               -6
    rhs       e3824               -1
    rhs       e3827               -1
    rhs       e3830               -1
    rhs       e3833               -1
    rhs       e3836               -1
    rhs       e3838               -6
    rhs       e3840               -1
    rhs       e3842               -1
    rhs       e3844               -1
    rhs       e3846               -1
    rhs       e3849               -1
    rhs       e3852               -1
    rhs       e3855               -1
    rhs       e3858               -1
    rhs       e3861               -1
    rhs       e3863               -6
    rhs       e3866               -1
    rhs       e3869               -1
    rhs       e3872               -1
    rhs       e3875               -1
    rhs       e3878               -1
    rhs       e3880               -6
    rhs       e3883               -1
    rhs       e3886               -1
    rhs       e3889               -1
    rhs       e3892               -1
    rhs       e3895               -1
    rhs       e3897               -6
    rhs       e3900               -1
    rhs       e3903               -1
    rhs       e3906               -1
    rhs       e3909               -1
    rhs       e3912               -1
    rhs       e3914               -6
    rhs       e3917               -1
    rhs       e3920               -1
    rhs       e3923               -1
    rhs       e3926               -1
    rhs       e3929               -1
    rhs       e3931               -6
    rhs       e3934               -1
    rhs       e3937               -1
    rhs       e3940               -1
    rhs       e3943               -1
    rhs       e3946               -1
    rhs       e3948               -6
    rhs       e3951               -1
    rhs       e3954               -1
    rhs       e3957               -1
    rhs       e3960               -1
    rhs       e3963               -1
    rhs       e3965               -6
    rhs       e3968               -1
    rhs       e3971               -1
    rhs       e3974               -1
    rhs       e3977               -1
    rhs       e3980               -1
    rhs       e3982               -6
    rhs       e3985               -1
    rhs       e3988               -1
    rhs       e3991               -1
    rhs       e3994               -1
    rhs       e3997               -1
    rhs       e3999               -6
    rhs       e4002               -1
    rhs       e4005               -1
    rhs       e4008               -1
    rhs       e4011               -1
    rhs       e4014               -1
    rhs       e4016               -6
    rhs       e4018               -1
    rhs       e4020               -1
    rhs       e4022               -1
    rhs       e4024               -1
    rhs       e4027               -1
    rhs       e4030               -1
    rhs       e4033               -1
    rhs       e4036               -1
    rhs       e4039               -1
    rhs       e4041               -6
    rhs       e4044               -1
    rhs       e4047               -1
    rhs       e4050               -1
    rhs       e4053               -1
    rhs       e4056               -1
    rhs       e4058               -6
    rhs       e4061               -1
    rhs       e4064               -1
    rhs       e4067               -1
    rhs       e4070               -1
    rhs       e4073               -1
    rhs       e4075               -6
    rhs       e4078               -1
    rhs       e4081               -1
    rhs       e4084               -1
    rhs       e4087               -1
    rhs       e4090               -1
    rhs       e4092               -6
    rhs       e4095               -1
    rhs       e4098               -1
    rhs       e4101               -1
    rhs       e4104               -1
    rhs       e4107               -1
    rhs       e4109               -6
    rhs       e4112               -1
    rhs       e4115               -1
    rhs       e4118               -1
    rhs       e4121               -1
    rhs       e4124               -1
    rhs       e4126               -6
    rhs       e4129               -1
    rhs       e4132               -1
    rhs       e4135               -1
    rhs       e4138               -1
    rhs       e4141               -1
    rhs       e4143               -6
    rhs       e4146               -1
    rhs       e4149               -1
    rhs       e4152               -1
    rhs       e4155               -1
    rhs       e4158               -1
    rhs       e4160               -6
    rhs       e4163               -1
    rhs       e4166               -1
    rhs       e4169               -1
    rhs       e4172               -1
    rhs       e4175               -1
    rhs       e4177               -6
    rhs       e4180               -1
    rhs       e4183               -1
    rhs       e4186               -1
    rhs       e4189               -1
    rhs       e4192               -1
    rhs       e4194               -6
    rhs       e4196               -1
    rhs       e4198               -1
    rhs       e4200               -1
    rhs       e4202               -1
    rhs       e4205               -1
    rhs       e4208               -1
    rhs       e4211               -1
    rhs       e4214               -1
    rhs       e4217               -1
    rhs       e4219               -6
    rhs       e4222               -1
    rhs       e4225               -1
    rhs       e4228               -1
    rhs       e4231               -1
    rhs       e4234               -1
    rhs       e4236               -6
    rhs       e4239               -1
    rhs       e4242               -1
    rhs       e4245               -1
    rhs       e4248               -1
    rhs       e4251               -1
    rhs       e4253               -6
    rhs       e4256               -1
    rhs       e4259               -1
    rhs       e4262               -1
    rhs       e4265               -1
    rhs       e4268               -1
    rhs       e4270               -6
    rhs       e4273               -1
    rhs       e4276               -1
    rhs       e4279               -1
    rhs       e4282               -1
    rhs       e4285               -1
    rhs       e4287               -6
    rhs       e4290               -1
    rhs       e4293               -1
    rhs       e4296               -1
    rhs       e4299               -1
    rhs       e4302               -1
    rhs       e4304               -6
    rhs       e4307               -1
    rhs       e4310               -1
    rhs       e4313               -1
    rhs       e4316               -1
    rhs       e4319               -1
    rhs       e4321               -6
    rhs       e4324               -1
    rhs       e4327               -1
    rhs       e4330               -1
    rhs       e4333               -1
    rhs       e4336               -1
    rhs       e4338               -6
    rhs       e4341               -1
    rhs       e4344               -1
    rhs       e4347               -1
    rhs       e4350               -1
    rhs       e4353               -1
    rhs       e4355               -6
    rhs       e4358               -1
    rhs       e4361               -1
    rhs       e4364               -1
    rhs       e4367               -1
    rhs       e4370               -1
    rhs       e4372               -6
    rhs       e4375               -1
    rhs       e4378               -1
    rhs       e4381               -1
    rhs       e4384               -1
    rhs       e4387               -1
    rhs       e4390               -1
    rhs       e4393               -1
    rhs       e4395               -8
    rhs       e4398               -1
    rhs       e4401               -1
    rhs       e4404               -1
    rhs       e4407               -1
    rhs       e4410               -1
    rhs       e4413               -1
    rhs       e4415               -7
    rhs       e4418               -1
    rhs       e4421               -1
    rhs       e4424               -1
    rhs       e4427               -1
    rhs       e4430               -1
    rhs       e4433               -1
    rhs       e4436               -1
    rhs       e4438               -8
    rhs       e4441               -1
    rhs       e4444               -1
    rhs       e4447               -1
    rhs       e4450               -1
    rhs       e4453               -1
    rhs       e4456               -1
    rhs       e4458               -7
    rhs       e4461               -1
    rhs       e4463               -2
    rhs       e4466               -1
    rhs       e4468               -2
    rhs       e4471               -1
    rhs       e4473               -2
    rhs       e4476               -1
    rhs       e4478               -2
    rhs       e4481               -1
    rhs       e4483               -2
    rhs       e4486               -1
    rhs       e4488               -2
    rhs       e4491               -1
    rhs       e4493               -2
    rhs       e4496               -1
    rhs       e4498               -2
    rhs       e4501               -1
    rhs       e4503               -2
    rhs       e4506               -1
    rhs       e4508               -2
    rhs       e4511               -1
    rhs       e4513               -2
    rhs       e4516               -1
    rhs       e4518               -2
    rhs       e4521               -1
    rhs       e4523               -2
    rhs       e4526               -1
    rhs       e4528               -2
    rhs       e4531               -1
    rhs       e4533               -2
    rhs       e4536               -1
    rhs       e4538               -2
    rhs       e4541               -1
    rhs       e4544               -1
    rhs       e4546               -3
    rhs       e4549               -1
    rhs       e4552               -1
    rhs       e4554               -3
    rhs       e4557               -1
    rhs       e4560               -1
    rhs       e4562               -3
    rhs       e4565               -1
    rhs       e4568               -1
    rhs       e4570               -3
    rhs       e4573               -1
    rhs       e4575               -2
    rhs       e4578               -1
    rhs       e4580               -2
    rhs       e4583               -1
    rhs       e4585               -2
    rhs       e4588               -1
    rhs       e4590               -2
    rhs       e4593               -1
    rhs       e4596               -1
    rhs       e4598               -3
    rhs       e4601               -1
    rhs       e4604               -1
    rhs       e4606               -3
    rhs       e4609               -1
    rhs       e4612               -1
    rhs       e4614               -3
    rhs       e4617               -1
    rhs       e4620               -1
    rhs       e4622               -3
    rhs       e4625               -1
    rhs       e4627               -2
    rhs       e4630               -1
    rhs       e4632               -2
    rhs       e4635               -1
    rhs       e4637               -2
    rhs       e4640               -1
    rhs       e4642               -2
    rhs       e4645               -1
    rhs       e4647               -2
    rhs       e4650               -1
    rhs       e4652               -2
    rhs       e4655               -1
    rhs       e4657               -2
    rhs       e4660               -1
    rhs       e4662               -2
    rhs       e4665               -1
    rhs       e4667               -2
    rhs       e4670               -1
    rhs       e4672               -2
    rhs       e4675               -1
    rhs       e4677               -2
    rhs       e4680               -1
    rhs       e4682               -2
    rhs       e4685               -1
    rhs       e4687               -2
    rhs       e4690               -1
    rhs       e4692               -2
    rhs       e4695               -1
    rhs       e4698               -1
    rhs       e4701               -1
    rhs       e4704               -1
    rhs       e4707               -1
    rhs       e4710               -1
    rhs       e4713               -1
    rhs       e4715               -8
    rhs       e4718               -1
    rhs       e4721               -1
    rhs       e4724               -1
    rhs       e4727               -1
    rhs       e4730               -1
    rhs       e4733               -1
    rhs       e4735               -7
    rhs       e4738               -1
    rhs       e4741               -1
    rhs       e4744               -1
    rhs       e4747               -1
    rhs       e4750               -1
    rhs       e4753               -1
    rhs       e4756               -1
    rhs       e4758               -8
    rhs       e4761               -1
    rhs       e4764               -1
    rhs       e4767               -1
    rhs       e4770               -1
    rhs       e4773               -1
    rhs       e4776               -1
    rhs       e4778               -7
    rhs       e4781               -1
    rhs       e4783               -2
    rhs       e4786               -1
    rhs       e4788               -2
    rhs       e4791               -1
    rhs       e4793               -2
    rhs       e4796               -1
    rhs       e4798               -2
    rhs       e4801               -1
    rhs       e4803               -2
    rhs       e4806               -1
    rhs       e4808               -2
    rhs       e4811               -1
    rhs       e4813               -2
    rhs       e4816               -1
    rhs       e4818               -2
    rhs       e4821               -1
    rhs       e4823               -2
    rhs       e4826               -1
    rhs       e4828               -2
    rhs       e4831               -1
    rhs       e4833               -2
    rhs       e4836               -1
    rhs       e4838               -2
    rhs       e4841               -1
    rhs       e4843               -2
    rhs       e4846               -1
    rhs       e4848               -2
    rhs       e4851               -1
    rhs       e4853               -2
    rhs       e4856               -1
    rhs       e4858               -2
    rhs       e4861               -1
    rhs       e4864               -1
    rhs       e4866               -3
    rhs       e4869               -1
    rhs       e4872               -1
    rhs       e4874               -3
    rhs       e4877               -1
    rhs       e4880               -1
    rhs       e4882               -3
    rhs       e4885               -1
    rhs       e4888               -1
    rhs       e4890               -3
    rhs       e4893               -1
    rhs       e4895               -2
    rhs       e4898               -1
    rhs       e4900               -2
    rhs       e4903               -1
    rhs       e4905               -2
    rhs       e4908               -1
    rhs       e4910               -2
    rhs       e4913               -1
    rhs       e4916               -1
    rhs       e4918               -3
    rhs       e4921               -1
    rhs       e4924               -1
    rhs       e4926               -3
    rhs       e4929               -1
    rhs       e4932               -1
    rhs       e4934               -3
    rhs       e4937               -1
    rhs       e4940               -1
    rhs       e4942               -3
    rhs       e4945               -1
    rhs       e4947               -2
    rhs       e4950               -1
    rhs       e4952               -2
    rhs       e4955               -1
    rhs       e4957               -2
    rhs       e4960               -1
    rhs       e4962               -2
    rhs       e4965               -1
    rhs       e4967               -2
    rhs       e4970               -1
    rhs       e4972               -2
    rhs       e4975               -1
    rhs       e4977               -2
    rhs       e4980               -1
    rhs       e4982               -2
    rhs       e4985               -1
    rhs       e4987               -2
    rhs       e4990               -1
    rhs       e4992               -2
    rhs       e4995               -1
    rhs       e4997               -2
    rhs       e5000               -1
    rhs       e5002               -2
    rhs       e5005               -1
    rhs       e5007               -2
    rhs       e5010               -1
    rhs       e5012               -2
    rhs       e5013                4
    rhs       e5014                5
    rhs       e5015                5
    rhs       e5016                3
    rhs       e5017                3
    rhs       e5018                3
    rhs       e5019                3
    rhs       e5020                3
    rhs       e5021                3
    rhs       e5022                3
    rhs       e5023                3
    rhs       e5024                3
    rhs       e5025                4
    rhs       e5026                6
    rhs       e5027                6
    rhs       e5028                3
    rhs       e5029                3
    rhs       e5030                3
    rhs       e5031                3
    rhs       e5032                3
    rhs       e5033                3
    rhs       e5034                3
    rhs       e5035                3
    rhs       e5036                3
    rhs       e5069                2
    rhs       e5070                2
    rhs       e5073                1
    rhs       e5075                1
    rhs       e5077                1
    rhs       e5081                1
    rhs       e5083                1
    rhs       e5085                1
    rhs       e5089                1
    rhs       e5091                1
    rhs       e5093                1
    rhs       e5097                1
    rhs       e5099                1
    rhs       e5101                1
    rhs       e5105                1
    rhs       e5107                1
    rhs       e5109                1
    rhs       e5113                1
    rhs       e5115                1
    rhs       e5117                1
    rhs       e5121                1
    rhs       e5123                1
    rhs       e5125                1
    rhs       e5129                1
    rhs       e5131                1
    rhs       e5133                1
    rhs       e5137                1
    rhs       e5139                1
    rhs       e5141                1
    rhs       e5145                1
    rhs       e5147                1
    rhs       e5149                1
BOUNDS
 LO bnd       i1                   2
 UP bnd       i1                  18
 LO bnd       i2                   2
 UP bnd       i2                  18
 LO bnd       i3                   2
 UP bnd       i3                  18
 LO bnd       i4                   2
 UP bnd       i4                  18
 LO bnd       i5                   2
 UP bnd       i5                  18
 LO bnd       i6                   2
 UP bnd       i6                  18
 LO bnd       i7                   2
 UP bnd       i7                  18
 LO bnd       i8                   2
 UP bnd       i8                  18
 LO bnd       i9                   2
 UP bnd       i9                  18
 LO bnd       i10                  2
 UP bnd       i10                 18
 LO bnd       i11                  2
 UP bnd       i11                 18
 LO bnd       i12                  2
 UP bnd       i12                 18
 LO bnd       i13                  2
 UP bnd       i13                 18
 LO bnd       i14                  2
 UP bnd       i14                 18
 LO bnd       i15                  2
 UP bnd       i15                 18
 LO bnd       i16                  2
 UP bnd       i16                 18
 LO bnd       i17                  2
 UP bnd       i17                 18
 LO bnd       i18                  2
 UP bnd       i18                 18
 LO bnd       i19                  2
 UP bnd       i19                 18
 LO bnd       i20                  2
 UP bnd       i20                 18
 LO bnd       i21                  2
 UP bnd       i21                 18
 LO bnd       i22                  2
 UP bnd       i22                 18
 LO bnd       i23                  2
 UP bnd       i23                 18
 LO bnd       i24                  2
 UP bnd       i24                 18
 LO bnd       i25                  2
 UP bnd       i25                 18
 LO bnd       i26                  2
 UP bnd       i26                 18
 LO bnd       i27                  2
 UP bnd       i27                 18
 LO bnd       i28                  2
 UP bnd       i28                 18
 LO bnd       i29                  2
 UP bnd       i29                 18
 LO bnd       i30                  2
 UP bnd       i30                 18
 LO bnd       i31                  2
 UP bnd       i31                 18
 LO bnd       i32                  2
 UP bnd       i32                 18
 LO bnd       i33                  2
 UP bnd       i33                 18
 LO bnd       i34                  2
 UP bnd       i34                 18
 LO bnd       i35                  2
 UP bnd       i35                 18
 LO bnd       i36                  2
 UP bnd       i36                 18
 LO bnd       i37                  2
 UP bnd       i37                 18
 LO bnd       i38                  2
 UP bnd       i38                 18
 LO bnd       i39                  2
 UP bnd       i39                 18
 LO bnd       i40                  2
 UP bnd       i40                 18
 LO bnd       i41                  2
 UP bnd       i41                 18
 LO bnd       i42                  2
 UP bnd       i42                 18
 LO bnd       i43                  2
 UP bnd       i43                 18
 LO bnd       i44                  2
 UP bnd       i44                 18
 LO bnd       i45                  2
 UP bnd       i45                 18
 LO bnd       i46                  2
 UP bnd       i46                 18
 LO bnd       i47                  2
 UP bnd       i47                 18
 LO bnd       i48                  2
 UP bnd       i48                 18
 LO bnd       i49                  2
 UP bnd       i49                 18
 LO bnd       i50                  2
 UP bnd       i50                 18
 LO bnd       i51                  2
 UP bnd       i51                 18
 LO bnd       i52                  2
 UP bnd       i52                 18
 LO bnd       i53                  2
 UP bnd       i53                 18
 LO bnd       i54                  2
 UP bnd       i54                 18
 LO bnd       i55                  2
 UP bnd       i55                 18
 LO bnd       i56                  2
 UP bnd       i56                 18
 UP bnd       i57                  1
 UP bnd       i58                  1
 UP bnd       i59                  1
 UP bnd       i60                  1
 UP bnd       i61                  1
 UP bnd       i62                  1
 UP bnd       i63                  1
 UP bnd       i64                  1
 UP bnd       i65                  1
 UP bnd       i66                  1
 UP bnd       i67                  1
 UP bnd       i68                  1
 UP bnd       i69                  1
 UP bnd       i70                  1
 UP bnd       i71                  1
 UP bnd       i72                  1
 UP bnd       i73                  1
 UP bnd       i74                  1
 UP bnd       i75                  1
 UP bnd       i76                  1
 UP bnd       i77                  1
 UP bnd       i78                  1
 UP bnd       i79                  1
 UP bnd       i80                  1
 UP bnd       i81                  1
 UP bnd       i82                  1
 UP bnd       i83                  1
 UP bnd       i84                  1
 UP bnd       i85                  1
 UP bnd       i86                  1
 UP bnd       i87                  1
 UP bnd       i88                  1
 UP bnd       i89                  1
 UP bnd       i90                  1
 UP bnd       i91                  1
 UP bnd       i92                  1
 UP bnd       i93                  1
 UP bnd       i94                  1
 UP bnd       i95                  1
 UP bnd       i96                  1
 UP bnd       i97                  1
 UP bnd       i98                  1
 UP bnd       i99                  1
 UP bnd       i100                 1
 UP bnd       i101                 1
 UP bnd       i102                 1
 UP bnd       i103                 1
 UP bnd       i104                 1
 UP bnd       i105                 1
 UP bnd       i106                 1
 UP bnd       i107                 1
 UP bnd       i108                 1
 UP bnd       i109                 1
 UP bnd       i110                 1
 UP bnd       i111                 1
 UP bnd       i112                 1
 UP bnd       i113                 1
 UP bnd       i114                 1
 UP bnd       i115                 1
 UP bnd       i116                 1
 UP bnd       i117                 1
 UP bnd       i118                 1
 UP bnd       i119                 1
 UP bnd       i120                 1
 UP bnd       i121                 1
 UP bnd       i122                 1
 UP bnd       i123                 1
 UP bnd       i124                 1
 UP bnd       i125                 1
 UP bnd       i126                 1
 UP bnd       i127                 1
 UP bnd       i128                 1
 UP bnd       i129                 1
 UP bnd       i130                 1
 UP bnd       i131                 1
 UP bnd       i132                 1
 UP bnd       i133                 1
 UP bnd       i134                 1
 UP bnd       i135                 1
 UP bnd       i136                 1
 UP bnd       i137                 1
 UP bnd       i138                 1
 UP bnd       i139                 1
 UP bnd       i140                 1
 UP bnd       i141                 1
 UP bnd       i142                 1
 UP bnd       i143                 1
 UP bnd       i144                 1
 UP bnd       i145                 1
 UP bnd       i146                 1
 UP bnd       i147                 1
 UP bnd       i148                 1
 UP bnd       i149                 1
 UP bnd       i150                 1
 UP bnd       i151                 1
 UP bnd       i152                 1
 UP bnd       i153                 1
 UP bnd       i154                 1
 UP bnd       i155                 1
 UP bnd       i156                 1
 UP bnd       i157                 1
 UP bnd       i158                 1
 UP bnd       i159                 1
 UP bnd       i160                 1
 UP bnd       i161                 1
 UP bnd       i162                 1
 UP bnd       i163                 1
 UP bnd       i164                 1
 UP bnd       i165                 1
 UP bnd       i166                 1
 UP bnd       i167                 1
 UP bnd       i168                 1
 UP bnd       i169                 1
 UP bnd       i170                 1
 UP bnd       i171                 1
 UP bnd       i172                 1
 UP bnd       i173                 1
 UP bnd       i174                 1
 UP bnd       i175                 1
 UP bnd       i176                 1
 UP bnd       i177                 1
 UP bnd       i178                 1
 UP bnd       i179                 1
 UP bnd       i180                 1
 UP bnd       i181                 1
 UP bnd       i182                 1
 UP bnd       i183                 1
 UP bnd       i184                 1
 UP bnd       i185                 1
 UP bnd       i186                 1
 UP bnd       i187                 1
 UP bnd       i188                 1
 UP bnd       i189                 1
 UP bnd       i190                 1
 UP bnd       i191                 1
 UP bnd       i192                 1
 UP bnd       i193                 1
 UP bnd       i194                 1
 UP bnd       i195                 1
 UP bnd       i196                 1
 UP bnd       i197                 1
 UP bnd       i198                 1
 UP bnd       i199                 1
 UP bnd       i200                 1
 UP bnd       i201                 1
 UP bnd       i202                 1
 UP bnd       i203                 1
 UP bnd       i204                 1
 UP bnd       i205                 1
 UP bnd       i206                 1
 UP bnd       i207                 1
 UP bnd       i208                 1
 UP bnd       i209                 1
 UP bnd       i210                 1
 UP bnd       i211                 1
 UP bnd       i212                 1
 UP bnd       i213                 1
 UP bnd       i214                 1
 UP bnd       i215                 1
 UP bnd       i216                 1
 UP bnd       i217                 1
 UP bnd       i218                 1
 UP bnd       i219                 1
 UP bnd       i220                 1
 UP bnd       i221                 1
 UP bnd       i222                 1
 UP bnd       i223                 1
 UP bnd       i224                 1
 UP bnd       i225                 1
 UP bnd       i226                 1
 UP bnd       i227                 1
 UP bnd       i228                 1
 UP bnd       i229                 1
 UP bnd       i230                 1
 UP bnd       i231                 1
 UP bnd       i232                 1
 UP bnd       i233                 1
 UP bnd       i234                 1
 UP bnd       i235                 1
 UP bnd       i236                 1
 UP bnd       i237                 1
 UP bnd       i238                 1
 UP bnd       i239                 1
 UP bnd       i240                 1
 UP bnd       i241                 1
 UP bnd       i242                 1
 UP bnd       i243                 1
 UP bnd       i244                 1
 UP bnd       i245                 1
 UP bnd       i246                 1
 UP bnd       i247                 1
 UP bnd       i248                 1
 UP bnd       i249                 1
 UP bnd       i250                 1
 UP bnd       i251                 1
 UP bnd       i252                 1
 UP bnd       i253                 1
 UP bnd       i254                 1
 UP bnd       i255                 1
 UP bnd       i256                 1
 UP bnd       i257                 1
 UP bnd       i258                 1
 UP bnd       i259                 1
 UP bnd       i260                 1
 UP bnd       i261                 1
 UP bnd       i262                 1
 UP bnd       i263                 1
 UP bnd       i264                 1
 UP bnd       i265                 1
 UP bnd       i266                 1
 UP bnd       i267                 1
 UP bnd       i268                 1
 UP bnd       i269                 1
 UP bnd       i270                 1
 UP bnd       i271                 1
 UP bnd       i272                 1
 UP bnd       i273                 1
 UP bnd       i274                 1
 UP bnd       i275                 1
 UP bnd       i276                 1
 UP bnd       i277                 1
 UP bnd       i278                 1
 UP bnd       i279                 1
 UP bnd       i280                 1
 UP bnd       i281                 1
 UP bnd       i282                 1
 UP bnd       i283                 1
 UP bnd       i284                 1
 UP bnd       i285                 1
 UP bnd       i286                 1
 UP bnd       i287                 1
 UP bnd       i288                 1
 UP bnd       i289                 1
 UP bnd       i290                 1
 UP bnd       i291                 1
 UP bnd       i292                 1
 UP bnd       i293                 1
 UP bnd       i294                 1
 UP bnd       i295                 1
 UP bnd       i296                 1
 UP bnd       i297                 1
 UP bnd       i298                 1
 UP bnd       i299                 1
 UP bnd       i300                 1
 UP bnd       i301                 1
 UP bnd       i302                 1
 UP bnd       i303                 1
 UP bnd       i304                 1
 UP bnd       i305                 1
 UP bnd       i306                 1
 UP bnd       i307                 1
 UP bnd       i308                 1
 UP bnd       i309                 1
 UP bnd       i310                 1
 UP bnd       i311                 1
 UP bnd       i312                 1
 UP bnd       i313                 1
 UP bnd       i314                 1
 UP bnd       i315                 1
 UP bnd       i316                 1
 UP bnd       i317                 1
 UP bnd       i318                 1
 UP bnd       i319                 1
 UP bnd       i320                 1
 UP bnd       i321                 1
 UP bnd       i322                 1
 UP bnd       i323                 1
 UP bnd       i324                 1
 UP bnd       i325                 1
 UP bnd       i326                 1
 UP bnd       i327                 1
 UP bnd       i328                 1
 UP bnd       i329                 1
 UP bnd       i330                 1
 UP bnd       i331                 1
 UP bnd       i332                 2
 UP bnd       i333                 2
 UP bnd       i334                 2
 UP bnd       i335                 2
 UP bnd       i336                 2
 UP bnd       i337                 2
 UP bnd       i338                 2
 UP bnd       i339                 2
 LO bnd       i340                 2
 UP bnd       i340                18
 LO bnd       i341                 2
 UP bnd       i341                18
 UP bnd       i342                18
 LO bnd       i343                 2
 UP bnd       i343                18
 UP bnd       i344                18
 UP bnd       i345                18
 UP bnd       i346                18
 UP bnd       i347                18
 UP bnd       i348                18
 UP bnd       i349                18
 UP bnd       i350                18
 UP bnd       i351                18
 UP bnd       i352                18
 LO bnd       i353                 2
 UP bnd       i353                18
 UP bnd       i354                18
 UP bnd       i355                18
 LO bnd       i356                 2
 UP bnd       i356                18
 UP bnd       i357                18
 UP bnd       i358                18
 LO bnd       i359                 2
 UP bnd       i359                18
 LO bnd       i360                 2
 UP bnd       i360                18
 UP bnd       i361                18
 LO bnd       i362                 2
 UP bnd       i362                18
 UP bnd       i363                18
 UP bnd       i364                18
 UP bnd       i365                18
 UP bnd       i366                18
 UP bnd       i367                18
 UP bnd       i368                18
 UP bnd       i369                18
 UP bnd       i370                18
 UP bnd       i371                18
 LO bnd       i372                 2
 UP bnd       i372                18
 UP bnd       i373                18
 UP bnd       i374                18
 LO bnd       i375                 2
 UP bnd       i375                18
 UP bnd       i376                18
 UP bnd       i377                18
 LO bnd       i378                 2
 UP bnd       i378                18
 LO bnd       i379                 2
 UP bnd       i379                18
 UP bnd       i380                18
 LO bnd       i381                 2
 UP bnd       i381                18
 UP bnd       i382                18
 UP bnd       i383                18
 UP bnd       i384                18
 UP bnd       i385                18
 UP bnd       i386                18
 UP bnd       i387                18
 UP bnd       i388                18
 UP bnd       i389                18
 UP bnd       i390                18
 LO bnd       i391                 2
 UP bnd       i391                18
 UP bnd       i392                18
 UP bnd       i393                18
 LO bnd       i394                 2
 UP bnd       i394                18
 UP bnd       i395                18
 UP bnd       i396                18
 LO bnd       i397                 2
 UP bnd       i397                18
 LO bnd       i398                 2
 UP bnd       i398                18
 UP bnd       i399                18
 LO bnd       i400                 2
 UP bnd       i400                18
 UP bnd       i401                18
 LO bnd       i402                 2
 UP bnd       i402                18
 UP bnd       i403                18
 LO bnd       i404                 2
 UP bnd       i404                18
 UP bnd       i405                18
 UP bnd       i406                18
 UP bnd       i407                18
 LO bnd       i408                 2
 UP bnd       i408                18
 UP bnd       i409                18
 UP bnd       i410                18
 UP bnd       i411                18
 LO bnd       i412                 2
 UP bnd       i412                18
 UP bnd       i413                18
 UP bnd       i414                18
 UP bnd       i415                18
 UP bnd       i416                18
 UP bnd       i417                18
 UP bnd       i418                18
 UP bnd       i419                18
 UP bnd       i420                18
 UP bnd       i421                18
 UP bnd       i422                18
 UP bnd       i423                18
 UP bnd       i424                18
 UP bnd       i425                18
 UP bnd       i426                18
 UP bnd       i427                18
 UP bnd       i428                18
 UP bnd       i429                18
 UP bnd       i430                18
 UP bnd       i431                18
 UP bnd       i432                18
 UP bnd       i433                18
 UP bnd       i434                18
 UP bnd       i435                18
 UP bnd       i436                18
 UP bnd       i437                18
 UP bnd       i438                18
 UP bnd       i439                18
 UP bnd       i440                18
 UP bnd       i441                18
 UP bnd       i442                18
 UP bnd       i443                18
 UP bnd       i444                18
 UP bnd       i445                18
 UP bnd       i446                18
 UP bnd       i447                18
 UP bnd       i448                18
 UP bnd       i449                18
 UP bnd       i450                18
 UP bnd       i451                18
 UP bnd       i452                18
 UP bnd       i453                18
 UP bnd       i454                18
 UP bnd       i455                18
 UP bnd       i456                18
 UP bnd       i457                18
 UP bnd       i458                 1
 UP bnd       i459                18
 LO bnd       i460                 2
 UP bnd       i460                18
 LO bnd       i461                 2
 UP bnd       i461                18
 UP bnd       i462                18
 LO bnd       i463                 2
 UP bnd       i463                18
 UP bnd       i464                18
 LO bnd       i465                 2
 UP bnd       i465                18
 UP bnd       i466                18
 LO bnd       i467                 2
 UP bnd       i467                18
 UP bnd       i468                18
 UP bnd       i469                18
 UP bnd       i470                18
 LO bnd       i471                 2
 UP bnd       i471                18
 UP bnd       i472                18
 UP bnd       i473                18
 UP bnd       i474                18
 LO bnd       i475                 2
 UP bnd       i475                18
 UP bnd       i476                18
 UP bnd       i477                18
 UP bnd       i478                18
 UP bnd       i479                18
 UP bnd       i480                18
 UP bnd       i481                18
 UP bnd       i482                18
 UP bnd       i483                18
 UP bnd       i484                18
 UP bnd       i485                18
 UP bnd       i486                18
 UP bnd       i487                18
 UP bnd       i488                18
 UP bnd       i489                18
 UP bnd       i490                18
 UP bnd       i491                18
 UP bnd       i492                18
 UP bnd       i493                18
 UP bnd       i494                18
 UP bnd       i495                18
 UP bnd       i496                18
 UP bnd       i497                18
 UP bnd       i498                18
 UP bnd       i499                18
 UP bnd       i500                18
 UP bnd       i501                18
 UP bnd       i502                18
 UP bnd       i503                18
 UP bnd       i504                18
 UP bnd       i505                18
 UP bnd       i506                18
 UP bnd       i507                18
 UP bnd       i508                18
 UP bnd       i509                18
 UP bnd       i510                18
 UP bnd       i511                18
 UP bnd       i512                18
 UP bnd       i513                18
 UP bnd       i514                18
 UP bnd       i515                18
 UP bnd       i516                18
 UP bnd       i517                18
 UP bnd       i518                18
 UP bnd       i519                18
 UP bnd       i520                18
 UP bnd       i521                 1
 UP bnd       i522                18
 LO bnd       i523                 2
 UP bnd       i523                18
 LO bnd       i524                 2
 UP bnd       i524                18
 UP bnd       i525                18
 LO bnd       i526                 2
 UP bnd       i526                18
 UP bnd       i527                18
 UP bnd       i528                18
 UP bnd       i529                18
 UP bnd       i530                18
 UP bnd       i531                18
 UP bnd       i532                18
 UP bnd       i533                18
 UP bnd       i534                18
 UP bnd       i535                18
 LO bnd       i536                 2
 UP bnd       i536                18
 UP bnd       i537                18
 UP bnd       i538                18
 LO bnd       i539                 2
 UP bnd       i539                18
 UP bnd       i540                18
 UP bnd       i541                18
 LO bnd       i542                 2
 UP bnd       i542                18
 LO bnd       i543                 2
 UP bnd       i543                18
 UP bnd       i544                18
 LO bnd       i545                 2
 UP bnd       i545                18
 UP bnd       i546                18
 UP bnd       i547                18
 UP bnd       i548                18
 UP bnd       i549                18
 UP bnd       i550                18
 UP bnd       i551                18
 UP bnd       i552                18
 UP bnd       i553                18
 UP bnd       i554                18
 LO bnd       i555                 2
 UP bnd       i555                18
 UP bnd       i556                18
 UP bnd       i557                18
 LO bnd       i558                 2
 UP bnd       i558                18
 UP bnd       i559                18
 UP bnd       i560                18
 LO bnd       i561                 2
 UP bnd       i561                18
 LO bnd       i562                 2
 UP bnd       i562                18
 UP bnd       i563                18
 LO bnd       i564                 2
 UP bnd       i564                18
 UP bnd       i565                18
 UP bnd       i566                18
 UP bnd       i567                18
 UP bnd       i568                18
 UP bnd       i569                18
 UP bnd       i570                18
 UP bnd       i571                18
 UP bnd       i572                18
 UP bnd       i573                18
 LO bnd       i574                 2
 UP bnd       i574                18
 UP bnd       i575                18
 UP bnd       i576                18
 LO bnd       i577                 2
 UP bnd       i577                18
 UP bnd       i578                18
 UP bnd       i579                18
 UP bnd       i580                18
 UP bnd       i581                18
 UP bnd       i582                18
 UP bnd       i583                18
 UP bnd       i584                18
 UP bnd       i585                18
 UP bnd       i586                18
 UP bnd       i587                18
 UP bnd       i588                18
 UP bnd       i589                18
 UP bnd       i590                18
 UP bnd       i591                18
 UP bnd       i592                18
 UP bnd       i593                18
 UP bnd       i594                18
 UP bnd       i595                18
 UP bnd       i596                18
 UP bnd       i597                18
 UP bnd       i598                18
 UP bnd       i599                18
 UP bnd       i600                18
 UP bnd       i601                18
 UP bnd       i602                18
 UP bnd       i603                18
 UP bnd       i604                18
 UP bnd       i605                18
 UP bnd       i606                18
 UP bnd       i607                18
 UP bnd       i608                18
 UP bnd       i609                18
 UP bnd       i610                18
 UP bnd       i611                18
 UP bnd       i612                18
 UP bnd       i613                18
 UP bnd       i614                18
 UP bnd       i615                18
 UP bnd       i616                18
 UP bnd       i617                18
 UP bnd       i618                18
 UP bnd       i619                18
 UP bnd       i620                18
 UP bnd       i621                18
 UP bnd       i622                18
 UP bnd       i623                18
 UP bnd       i624                18
 UP bnd       i625                18
 UP bnd       i626                18
 UP bnd       i627                18
 UP bnd       i628                18
 UP bnd       i629                18
 UP bnd       i630                18
 UP bnd       i631                18
 UP bnd       i632                18
 UP bnd       i633                18
 UP bnd       i634                18
 UP bnd       i635                18
 UP bnd       i636                18
 UP bnd       i637                18
 UP bnd       i638                18
 UP bnd       i639                18
 UP bnd       i640                18
 UP bnd       i641                18
 UP bnd       i642                18
 UP bnd       i643                18
 UP bnd       i644                18
 UP bnd       i645                18
 UP bnd       i646                18
 UP bnd       i647                18
 UP bnd       i648                18
 UP bnd       i649                18
 UP bnd       i650                18
 UP bnd       i651                18
 UP bnd       i652                18
 UP bnd       i653                18
 UP bnd       i654                18
 UP bnd       i655                18
 UP bnd       i656                18
 UP bnd       i657                18
 UP bnd       i658                18
 UP bnd       i659                18
 UP bnd       i660                18
 UP bnd       i661                18
 UP bnd       i662                18
 UP bnd       i663                18
 UP bnd       i664                18
 UP bnd       i665                18
 UP bnd       i666                18
 UP bnd       i667                18
 UP bnd       i668                18
 UP bnd       i669                18
 UP bnd       i670                18
 UP bnd       i671                18
 UP bnd       i672                18
 UP bnd       i673                18
 UP bnd       i674                18
 UP bnd       i675                18
 UP bnd       i676                18
 UP bnd       i677                18
 UP bnd       i678                18
 UP bnd       i679                18
 UP bnd       i680                18
 UP bnd       i681                18
 UP bnd       i682                18
 UP bnd       i683                18
 UP bnd       i684                18
 UP bnd       i685                18
 UP bnd       i686                18
 UP bnd       i687                18
 UP bnd       i688                18
 UP bnd       i689                18
 UP bnd       i690                 1
 UP bnd       i691                 1
 UP bnd       i692                 1
 UP bnd       i693                 1
 UP bnd       i694                 1
 UP bnd       i695                 1
 UP bnd       i696                 1
 UP bnd       i697                 1
 UP bnd       i698                 1
 UP bnd       i699                 1
 UP bnd       i700                 1
 UP bnd       i701                 1
 UP bnd       i702                 1
 UP bnd       i703                 1
 UP bnd       i704                 1
 UP bnd       i705                 1
 UP bnd       i706                 1
 UP bnd       i707                 1
 UP bnd       i708                 1
 UP bnd       i709                 1
 UP bnd       i710                 1
 UP bnd       i711                 1
 UP bnd       i712                 1
 UP bnd       i713                 1
 UP bnd       i714                 1
 UP bnd       i715                 1
 UP bnd       i716                 1
 UP bnd       i717                 1
 UP bnd       i718                 1
 UP bnd       i719                 1
 UP bnd       i720                 1
 UP bnd       i721                 1
 UP bnd       i722                 1
 UP bnd       i723                 1
 UP bnd       i724                 1
 UP bnd       i725                 1
 UP bnd       i726                 1
 UP bnd       i727                 1
 UP bnd       i728                 1
 UP bnd       i729                 1
 UP bnd       i730                 1
 UP bnd       i731                 1
 UP bnd       i732                 1
 UP bnd       i733                 1
 UP bnd       i734                 1
 UP bnd       i735                 1
 UP bnd       i736                 1
 UP bnd       i737                 1
 UP bnd       i738                 1
 UP bnd       i739                 1
 UP bnd       i740                 1
 UP bnd       i741                 1
 UP bnd       i742                 1
 UP bnd       i743                 1
 UP bnd       i744                 1
 UP bnd       i745                 1
 UP bnd       i746                 1
 UP bnd       i747                 1
 UP bnd       i748                 1
 UP bnd       i749                 1
 UP bnd       i750                 1
 UP bnd       i751                 1
 UP bnd       i752                 1
 UP bnd       i753                 1
 UP bnd       i754                 1
 UP bnd       i755                 1
 UP bnd       i756                 1
 UP bnd       i757                 1
 UP bnd       i758                 1
 UP bnd       i759                 1
 UP bnd       i760                 1
 UP bnd       i761                 1
 UP bnd       i762                 1
 UP bnd       i763                 1
 UP bnd       i764                 1
 UP bnd       i765                 1
 UP bnd       i766                 1
 UP bnd       i767                 1
 UP bnd       i768                 1
 UP bnd       i769                 1
 UP bnd       i770                 1
 UP bnd       i771                 1
 UP bnd       i772                 1
 UP bnd       i773                 1
 UP bnd       i774                 1
 UP bnd       i775                 1
 UP bnd       i776                 1
 UP bnd       i777                 1
 UP bnd       i778                 1
 UP bnd       i779                 1
 UP bnd       i780                 1
 UP bnd       i781                 1
 UP bnd       i782                 1
 UP bnd       i783                 1
 UP bnd       i784                 1
 UP bnd       i785                 1
 UP bnd       i786                 1
 UP bnd       i787                 1
 UP bnd       i788                 1
 UP bnd       i789                 1
 UP bnd       i790                 1
 UP bnd       i791                 1
 UP bnd       i792                 1
 UP bnd       i793                 1
 UP bnd       i794                 1
 UP bnd       i795                 1
 UP bnd       i796                 1
 UP bnd       i797                 1
 UP bnd       i798                 1
 UP bnd       i799                 1
 UP bnd       i800                 1
 UP bnd       i801                 1
 UP bnd       i802                 1
 UP bnd       i803                 1
 UP bnd       i804                 1
 UP bnd       i805                 1
 UP bnd       i806                 1
 UP bnd       i807                 1
 UP bnd       i808                 1
 UP bnd       i809                 1
 UP bnd       i810                 1
 UP bnd       i811                 1
 UP bnd       i812                 1
 UP bnd       i813                 1
 UP bnd       i814                 1
 UP bnd       i815                 1
 UP bnd       i816                 1
 UP bnd       i817                 1
 UP bnd       i818                 1
 UP bnd       i819                 1
 UP bnd       i820                 1
 UP bnd       i821                 1
 UP bnd       i822                 1
 UP bnd       i823                 1
 UP bnd       i824                 1
 UP bnd       i825                 1
 UP bnd       i826                 1
 UP bnd       i827                 1
 UP bnd       i828                 1
 UP bnd       i829                 1
 UP bnd       i830                 1
 UP bnd       i831                 1
 UP bnd       i832                 1
 UP bnd       i833                 1
 UP bnd       i834                 1
 UP bnd       i835                 1
 UP bnd       i836                 1
 UP bnd       i837                 1
 UP bnd       i838                 1
 UP bnd       i839                 1
 UP bnd       i840                 1
 UP bnd       i841                 1
 UP bnd       i842                 1
 UP bnd       i843                 1
 UP bnd       i844                 1
 UP bnd       i845                 1
 UP bnd       i846                 1
 UP bnd       i847                 1
 UP bnd       i848                 1
 UP bnd       i849                 1
 UP bnd       i850                 1
 UP bnd       i851                 1
 UP bnd       i852                 1
 UP bnd       i853                 1
 UP bnd       i854                 1
 UP bnd       i855                 1
 UP bnd       i856                 1
 UP bnd       i857                 1
 UP bnd       i858                 1
 UP bnd       i859                 1
 UP bnd       i860                 1
 UP bnd       i861                 1
 UP bnd       i862                 1
 UP bnd       i863                 1
 UP bnd       i864                 1
 UP bnd       i865                 1
 UP bnd       i866                 1
 UP bnd       i867                 1
 UP bnd       i868                 1
 UP bnd       i869                 1
 UP bnd       i870                 1
 UP bnd       i871                 1
 UP bnd       i872                 1
 UP bnd       i873                 1
 UP bnd       i874                 1
 UP bnd       i875                 1
 UP bnd       i876                 1
 UP bnd       i877                 1
 UP bnd       i878                 1
 UP bnd       i879                 1
 UP bnd       i880                 1
 UP bnd       i881                 1
 UP bnd       i882                 1
 UP bnd       i883                 1
 UP bnd       i884                 1
 UP bnd       i885                 1
 UP bnd       i886                 1
 UP bnd       i887                 1
 UP bnd       i888                 1
 UP bnd       i889                 1
 UP bnd       i890                 1
 UP bnd       i891                 1
 UP bnd       i892                 1
 UP bnd       i893                 1
 UP bnd       i894                 1
 UP bnd       i895                 1
 UP bnd       i896                 1
 UP bnd       i897                 1
 UP bnd       i898                 1
 UP bnd       i899                 1
 UP bnd       i900                 1
 UP bnd       i901                 1
 UP bnd       i902                 1
 UP bnd       i903                 1
 UP bnd       i904                 1
 UP bnd       i905                 1
 UP bnd       i906                 1
 UP bnd       i907                 1
 UP bnd       i908                 1
 UP bnd       i909                 1
 UP bnd       i910                 1
 UP bnd       i911                 1
 UP bnd       i912                 1
 UP bnd       i913                 1
 UP bnd       i914                 1
 UP bnd       i915                 1
 UP bnd       i916                 1
 UP bnd       i917                 1
 UP bnd       i918                 1
 UP bnd       i919                 1
 UP bnd       i920                 1
 UP bnd       i921                 1
 UP bnd       i922                 1
 UP bnd       i923                 1
 UP bnd       i924                 1
 UP bnd       i925                 1
 UP bnd       i926                 1
 UP bnd       i927                 1
 UP bnd       i928                 1
 UP bnd       i929                 1
 UP bnd       i930                 1
 UP bnd       i931                 1
 UP bnd       i932                 1
 UP bnd       i933                 1
 UP bnd       i934                 1
 UP bnd       i935                 1
 UP bnd       i936                 1
 UP bnd       i937                 1
 UP bnd       i938                 1
 UP bnd       i939                 1
 UP bnd       i940                 1
 UP bnd       i941                 1
 UP bnd       i942                 1
 UP bnd       i943                 1
 UP bnd       i944                 1
 UP bnd       i945                 1
 UP bnd       i946                 1
 UP bnd       i947                 1
 UP bnd       i948                 1
 UP bnd       i949                 1
 UP bnd       i950                 1
 UP bnd       i951                 1
 UP bnd       i952                 1
 UP bnd       i953                 1
 UP bnd       i954                 1
 UP bnd       i955                 1
 UP bnd       i956                 1
 UP bnd       i957                 1
 UP bnd       i958                 1
 UP bnd       i959                 1
 UP bnd       i960                 1
 UP bnd       i961                 1
 UP bnd       i962                 1
 UP bnd       i963                 1
 UP bnd       i964                 1
 UP bnd       i965                 1
 UP bnd       i966                 1
 UP bnd       i967                 1
 UP bnd       i968                 1
 UP bnd       i969                 1
 UP bnd       i970                 1
 UP bnd       i971                 1
 UP bnd       i972                 1
 UP bnd       i973                 1
 UP bnd       i974                 1
 UP bnd       i975                 1
 UP bnd       i976                 1
 UP bnd       i977                 1
 UP bnd       i978                 1
 UP bnd       i979                 1
 UP bnd       i980                 1
 UP bnd       i981                 1
 UP bnd       i982                 1
 UP bnd       i983                 1
 UP bnd       i984                 1
 UP bnd       i985                 1
 UP bnd       i986                 1
 UP bnd       i987                 1
 UP bnd       i988                 1
 UP bnd       i989                 1
 UP bnd       i990                 1
 UP bnd       i991                 1
 UP bnd       i992                 1
 UP bnd       i993                 1
 UP bnd       i994                 1
 UP bnd       i995                 1
 UP bnd       i996                 1
 UP bnd       i997                 1
 UP bnd       i998                 1
 UP bnd       i999                 1
 UP bnd       i1000                1
 UP bnd       i1001                1
 UP bnd       i1002                1
 UP bnd       i1003                1
 UP bnd       i1004                1
 UP bnd       i1005                1
 UP bnd       i1006                1
 UP bnd       i1007                1
 UP bnd       i1008                1
 UP bnd       i1009                1
 UP bnd       i1010                1
 UP bnd       i1011                1
 UP bnd       i1012                1
 UP bnd       i1013                1
 UP bnd       i1014                1
 UP bnd       i1015                1
 UP bnd       i1016                1
 UP bnd       i1017                1
 UP bnd       i1018                1
 UP bnd       i1019                1
 UP bnd       i1020                1
 UP bnd       i1021                1
 UP bnd       i1022                1
 UP bnd       i1023                1
 UP bnd       i1024                1
 UP bnd       i1025                1
 UP bnd       i1026                1
 UP bnd       i1027                1
 UP bnd       i1028                1
 UP bnd       i1029                1
 UP bnd       i1030                1
 UP bnd       i1031                1
 UP bnd       i1032                1
 UP bnd       i1033                1
 UP bnd       i1034                1
 UP bnd       i1035                1
 UP bnd       i1036                1
 UP bnd       i1037                1
 UP bnd       i1038                1
 UP bnd       i1039                1
 UP bnd       i1040                1
 UP bnd       i1041                1
 UP bnd       i1042                1
 UP bnd       i1043                1
 UP bnd       i1044                1
 UP bnd       i1045                1
 UP bnd       i1046                1
 UP bnd       i1047                1
 UP bnd       i1048                1
 UP bnd       i1049                1
 UP bnd       i1050                1
 UP bnd       i1051                1
 UP bnd       i1052                1
 UP bnd       i1053                1
 UP bnd       i1054                1
 UP bnd       i1055                1
 UP bnd       i1056                1
 UP bnd       i1057                1
 UP bnd       i1058                1
 UP bnd       i1059                1
 UP bnd       i1060                1
 UP bnd       i1061                1
 UP bnd       i1062                1
 UP bnd       i1063                1
 UP bnd       i1064                1
 UP bnd       i1065                1
 UP bnd       i1066                1
 UP bnd       i1067                1
 UP bnd       i1068                1
 UP bnd       i1069                1
 UP bnd       i1070                1
 UP bnd       i1071                1
 UP bnd       i1072                1
 UP bnd       i1073                1
 UP bnd       i1074                1
 UP bnd       i1075                1
 UP bnd       i1076                1
 UP bnd       i1077                1
 UP bnd       i1078                1
 UP bnd       i1079                1
 UP bnd       i1080                1
 UP bnd       i1081                1
 UP bnd       i1082                1
 UP bnd       i1083                1
 UP bnd       i1084                1
 UP bnd       i1085                1
 UP bnd       i1086                1
 UP bnd       i1087                1
 UP bnd       i1088                1
 UP bnd       i1089                1
 UP bnd       i1090                1
 UP bnd       i1091                1
 UP bnd       i1092                1
 UP bnd       i1093                1
 UP bnd       i1094                1
 UP bnd       i1095                1
 UP bnd       i1096                1
 UP bnd       i1097                1
 UP bnd       i1098                1
 UP bnd       i1099                1
 UP bnd       i1100                1
 UP bnd       i1101                1
 UP bnd       i1102                1
 UP bnd       i1103                1
 UP bnd       i1104                1
 UP bnd       i1105                1
 UP bnd       i1106                1
 UP bnd       i1107                1
 UP bnd       i1108                1
 UP bnd       i1109                1
 UP bnd       i1110                1
 UP bnd       i1111                1
 UP bnd       i1112                1
 UP bnd       i1113                1
 UP bnd       i1114                1
 UP bnd       i1115                1
 UP bnd       i1116                1
 UP bnd       i1117                1
 UP bnd       i1118                1
 UP bnd       i1119                1
 UP bnd       i1120                1
 UP bnd       i1121                1
 UP bnd       i1122                1
 UP bnd       i1123                1
 UP bnd       i1124                1
 UP bnd       i1125                1
 UP bnd       i1126                1
 UP bnd       i1127                1
 UP bnd       i1128                1
 UP bnd       i1129                1
 UP bnd       i1130                1
 UP bnd       i1131                1
 UP bnd       i1132                1
 UP bnd       i1133                1
 UP bnd       i1134                1
 UP bnd       i1135                1
 UP bnd       i1136                1
 UP bnd       i1137                1
 UP bnd       i1138                1
 UP bnd       i1139                1
 UP bnd       i1140                1
 UP bnd       i1141                1
 UP bnd       i1142                1
 UP bnd       i1143                1
 UP bnd       i1144                1
 UP bnd       i1145                1
 UP bnd       i1146                1
 UP bnd       i1147                1
 UP bnd       i1148                1
 UP bnd       i1149                1
 UP bnd       i1150                1
 UP bnd       i1151                1
 UP bnd       i1152                1
 UP bnd       i1153                1
 UP bnd       i1154                1
 UP bnd       i1155                1
 UP bnd       i1156                1
 UP bnd       i1157                1
 UP bnd       i1158                1
 UP bnd       i1159                1
 UP bnd       i1160                1
 UP bnd       i1161                1
 UP bnd       i1162                1
 UP bnd       i1163                1
 UP bnd       i1164                1
 UP bnd       i1165                1
 UP bnd       i1166                1
 UP bnd       i1167                1
 UP bnd       i1168                1
 UP bnd       i1169                1
 UP bnd       i1170                1
 UP bnd       i1171                1
 UP bnd       i1172                1
 UP bnd       i1173                1
 UP bnd       i1174                1
 UP bnd       i1175                1
 UP bnd       i1176                1
 UP bnd       i1177                1
 UP bnd       i1178                1
 UP bnd       i1179                1
 UP bnd       i1180                1
 UP bnd       i1181                1
 UP bnd       i1182                1
 UP bnd       i1183                1
 UP bnd       i1184                1
 UP bnd       i1185                1
 UP bnd       i1186                1
 UP bnd       i1187                1
 UP bnd       i1188                1
 UP bnd       i1189                1
 UP bnd       i1190                1
 UP bnd       i1191                1
 UP bnd       i1192                1
 UP bnd       i1193                1
 UP bnd       i1194                1
 UP bnd       i1195                1
 UP bnd       i1196                1
 UP bnd       i1197                1
 UP bnd       i1198                1
 UP bnd       i1199                1
 UP bnd       i1200                1
 UP bnd       i1201                1
 UP bnd       i1202                1
 UP bnd       i1203                1
 UP bnd       i1204                1
 UP bnd       i1205                1
 UP bnd       i1206                1
 UP bnd       i1207                1
 UP bnd       i1208                1
 UP bnd       i1209                1
 UP bnd       i1210                1
 UP bnd       i1211                1
 UP bnd       i1212                1
 UP bnd       i1213                1
 UP bnd       i1214                1
 UP bnd       i1215                1
 UP bnd       i1216                1
 UP bnd       i1217                1
 UP bnd       i1218                1
 UP bnd       i1219                1
 UP bnd       i1220                1
 UP bnd       i1221                1
 UP bnd       i1222                1
 UP bnd       i1223                1
 UP bnd       i1224                1
 UP bnd       i1225                1
 UP bnd       i1226                1
 UP bnd       i1227                1
 UP bnd       i1228                1
 UP bnd       i1229                1
 UP bnd       i1230                1
 UP bnd       i1231                1
 UP bnd       i1232                1
 UP bnd       i1233                1
 UP bnd       i1234                1
 UP bnd       i1235                1
 UP bnd       i1236                1
 UP bnd       i1237                1
 UP bnd       i1238                1
 UP bnd       i1239                1
 UP bnd       i1240                1
 UP bnd       i1241                1
 UP bnd       i1242                1
 UP bnd       i1243                1
 UP bnd       i1244                1
 UP bnd       i1245                1
 UP bnd       i1246                1
 UP bnd       i1247                1
 UP bnd       i1248                1
 UP bnd       i1249                1
 UP bnd       i1250                1
 UP bnd       i1251                1
 UP bnd       i1252                1
 UP bnd       i1253                1
 UP bnd       i1254                1
 UP bnd       i1255                1
 UP bnd       i1256                1
 UP bnd       i1257                1
 UP bnd       i1258                1
 UP bnd       i1259                1
 UP bnd       i1260                1
 UP bnd       i1261                1
 UP bnd       i1262                1
 UP bnd       i1263                1
 UP bnd       i1264                1
 UP bnd       i1265                1
 UP bnd       i1266                1
 UP bnd       i1267                1
 UP bnd       i1268                1
 UP bnd       i1269                1
 UP bnd       i1270                1
 UP bnd       i1271                1
 UP bnd       i1272                1
 UP bnd       i1273                1
 UP bnd       i1274                1
 UP bnd       i1275                1
 UP bnd       i1276                1
 UP bnd       i1277                1
 UP bnd       i1278                1
 UP bnd       i1279                1
 UP bnd       i1280                1
 UP bnd       i1281                1
 UP bnd       i1282                1
 UP bnd       i1283                1
 UP bnd       i1284                1
 UP bnd       i1285                1
 UP bnd       i1286                1
 UP bnd       i1287                1
 UP bnd       i1288                1
 UP bnd       i1289                1
 UP bnd       i1290                1
 UP bnd       i1291                1
 UP bnd       i1292                1
 UP bnd       i1293                1
 UP bnd       i1294                1
 UP bnd       i1295                1
 UP bnd       i1296                1
 UP bnd       i1297                1
 UP bnd       i1298                1
 UP bnd       i1299                1
 UP bnd       i1300                1
 UP bnd       i1301                1
 UP bnd       i1302                1
 UP bnd       i1303                1
 UP bnd       i1304                1
 UP bnd       i1305                1
 UP bnd       i1306                1
 UP bnd       i1307                1
 UP bnd       i1308                1
 UP bnd       i1309                1
 UP bnd       i1310                1
 UP bnd       i1311                1
 UP bnd       i1312                1
 UP bnd       i1313                1
 UP bnd       i1314                1
 UP bnd       i1315                1
 UP bnd       i1316                1
 UP bnd       i1317                1
 UP bnd       i1318                1
 UP bnd       i1319                1
 UP bnd       i1320                1
 UP bnd       i1321                1
 UP bnd       i1322                1
 UP bnd       i1323                1
 UP bnd       i1324                1
 UP bnd       i1325                1
 UP bnd       i1326                1
 UP bnd       i1327                1
 UP bnd       i1328                1
 UP bnd       i1329                1
 UP bnd       i1330                1
 UP bnd       i1331                1
 UP bnd       i1332                1
 UP bnd       i1333                1
 UP bnd       i1334                1
 UP bnd       i1335                1
 UP bnd       i1336                1
 UP bnd       i1337                1
 UP bnd       i1338                1
 UP bnd       i1339                1
 UP bnd       i1340                1
 UP bnd       i1341                1
 UP bnd       i1342                1
 UP bnd       i1343                1
 UP bnd       i1344                1
 UP bnd       i1345                1
 UP bnd       i1346                1
 UP bnd       i1347                1
 UP bnd       i1348                1
 UP bnd       i1349                1
 UP bnd       i1350                1
 UP bnd       i1351                1
 UP bnd       i1352                1
 UP bnd       i1353                1
 UP bnd       i1354                1
 UP bnd       i1355                1
 UP bnd       i1356                1
 UP bnd       i1357                1
 UP bnd       i1358                1
 UP bnd       i1359                1
 UP bnd       i1360                1
 UP bnd       i1361                1
 UP bnd       i1362                1
 UP bnd       i1363                1
 UP bnd       i1364                1
 UP bnd       i1365                1
 UP bnd       i1366                1
 UP bnd       i1367                1
 UP bnd       i1368                1
 UP bnd       i1369                1
 UP bnd       i1370                1
 UP bnd       i1371                1
 UP bnd       i1372                1
 UP bnd       i1373                1
 UP bnd       i1374                1
 UP bnd       i1375                1
 UP bnd       i1376                1
 UP bnd       i1377                1
 UP bnd       i1378                1
 UP bnd       i1379                1
 UP bnd       i1380                1
 UP bnd       i1381                1
 UP bnd       i1382                1
 UP bnd       i1383                1
 UP bnd       i1384                1
 UP bnd       i1385                1
 UP bnd       i1386                1
 UP bnd       i1387                1
 UP bnd       i1388                1
 UP bnd       i1389                1
 UP bnd       i1390                1
 UP bnd       i1391                1
 UP bnd       i1392                1
 UP bnd       i1393                1
 UP bnd       i1394                1
 UP bnd       i1395                1
 UP bnd       i1396                1
 UP bnd       i1397                1
 UP bnd       i1398                1
 UP bnd       i1399                1
 UP bnd       i1400                1
 UP bnd       i1401                1
 UP bnd       i1402                1
 UP bnd       i1403                1
 UP bnd       i1404                1
 UP bnd       i1405                1
 UP bnd       i1406                1
 UP bnd       i1407                1
 UP bnd       i1408                1
 UP bnd       i1409                1
 UP bnd       i1410                1
 UP bnd       i1411                1
 UP bnd       i1412                1
 UP bnd       i1413                1
 UP bnd       i1414                1
 UP bnd       i1415                1
 UP bnd       i1416                1
 UP bnd       i1417                1
 UP bnd       i1418                1
 UP bnd       i1419                1
 UP bnd       i1420                1
 UP bnd       i1421                1
 UP bnd       i1422                1
 UP bnd       i1423                1
 UP bnd       i1424                1
 UP bnd       i1425                1
 UP bnd       i1426                1
 UP bnd       i1427                1
 UP bnd       i1428                1
 UP bnd       i1429                1
 UP bnd       i1430                1
 UP bnd       i1431                1
 UP bnd       i1432                1
 UP bnd       i1433                1
 UP bnd       i1434                1
 UP bnd       i1435                1
 UP bnd       i1436                1
 UP bnd       i1437                1
 UP bnd       i1438                1
 UP bnd       i1439                1
 UP bnd       i1440                1
 UP bnd       i1441                1
 UP bnd       i1442                1
 UP bnd       i1443                1
 UP bnd       i1444                1
 UP bnd       i1445                1
 UP bnd       i1446                1
 UP bnd       i1447                1
 UP bnd       i1448                1
 UP bnd       i1449                1
 UP bnd       i1450                1
 UP bnd       i1451                1
 UP bnd       i1452                1
 UP bnd       i1453                1
 UP bnd       i1454                1
 UP bnd       i1455                1
 UP bnd       i1456                1
 UP bnd       i1457                1
 UP bnd       i1458                1
 UP bnd       i1459                1
 UP bnd       i1460                1
 UP bnd       i1461                1
 UP bnd       i1462                1
 UP bnd       i1463                1
 UP bnd       i1464                1
 UP bnd       i1465                1
 UP bnd       i1466                1
 UP bnd       i1467                1
 UP bnd       i1468                1
 UP bnd       i1469                1
 UP bnd       i1470                1
 UP bnd       i1471                1
 UP bnd       i1472                1
 UP bnd       i1473                1
 UP bnd       i1474                1
 UP bnd       i1475                1
 UP bnd       i1476                1
 UP bnd       i1477                1
 UP bnd       i1478                1
 UP bnd       i1479                1
 UP bnd       i1480                1
 UP bnd       i1481                1
 UP bnd       i1482                1
 UP bnd       i1483                1
 UP bnd       i1484                1
 UP bnd       i1485                1
 UP bnd       i1486                1
 UP bnd       i1487                1
 UP bnd       i1488                1
 UP bnd       i1489                1
 UP bnd       i1490                1
 UP bnd       i1491                1
 UP bnd       i1492                1
 UP bnd       i1493                1
 UP bnd       i1494                1
 UP bnd       i1495                1
 UP bnd       i1496                1
 UP bnd       i1497                1
 UP bnd       i1498                1
 UP bnd       i1499                1
 UP bnd       i1500                1
 UP bnd       i1501                1
 UP bnd       i1502                1
 UP bnd       i1503                1
 UP bnd       i1504                1
 UP bnd       i1505                1
 UP bnd       i1506                1
 UP bnd       i1507                1
 UP bnd       i1508                1
 UP bnd       i1509                1
 UP bnd       i1510                1
 UP bnd       i1511                1
 UP bnd       i1512                1
 UP bnd       i1513                1
 UP bnd       i1514                1
 UP bnd       i1515                1
 UP bnd       i1516                1
 UP bnd       i1517                1
 UP bnd       i1518                1
 UP bnd       i1519                1
 UP bnd       i1520                1
 UP bnd       i1521                1
 UP bnd       i1522                1
 UP bnd       i1523                1
 UP bnd       i1524                1
 UP bnd       i1525                1
 UP bnd       i1526                1
 UP bnd       i1527                1
 UP bnd       i1528                1
 UP bnd       i1529                1
 UP bnd       i1530                1
 UP bnd       i1531                1
 UP bnd       i1532                1
 UP bnd       i1533                1
 UP bnd       i1534                1
 UP bnd       i1535                1
 UP bnd       i1536                1
 UP bnd       i1537                1
 UP bnd       i1538                1
 UP bnd       i1539                1
 UP bnd       i1540                1
 UP bnd       i1541                1
 UP bnd       i1542                1
 UP bnd       i1543                1
 UP bnd       i1544                1
 UP bnd       i1545                1
 UP bnd       i1546                1
 UP bnd       i1547                1
 UP bnd       i1548                1
 UP bnd       i1549                1
 UP bnd       i1550                1
 UP bnd       i1551                1
 UP bnd       i1552                1
 UP bnd       i1553                1
 UP bnd       i1554                1
 UP bnd       i1555                1
 UP bnd       i1556                1
 UP bnd       i1557                1
 UP bnd       i1558                1
 UP bnd       i1559                1
 UP bnd       i1560                1
 UP bnd       i1561                1
 UP bnd       i1562                1
 UP bnd       i1563                1
 UP bnd       i1564                1
 UP bnd       i1565                1
 UP bnd       i1566                1
 UP bnd       i1567                1
 UP bnd       i1568                1
 UP bnd       i1569                1
 UP bnd       i1570                1
 UP bnd       i1571                1
 UP bnd       i1572                1
 UP bnd       i1573                1
 UP bnd       i1574                1
 UP bnd       i1575                1
 UP bnd       i1576                1
 UP bnd       i1577                1
 UP bnd       i1578                1
 UP bnd       i1579                1
 UP bnd       i1580                1
 UP bnd       i1581                1
 UP bnd       i1582                1
 UP bnd       i1583                1
 UP bnd       i1584                1
 UP bnd       i1585                1
 UP bnd       i1586                1
 UP bnd       i1587                1
 UP bnd       i1588                1
 UP bnd       i1589                1
 UP bnd       i1590                1
 UP bnd       i1591                1
 UP bnd       i1592                1
 UP bnd       i1593                1
 UP bnd       i1594                1
 UP bnd       i1595                1
 UP bnd       i1596                1
 UP bnd       i1597                1
 UP bnd       i1598                1
 UP bnd       i1599                1
 UP bnd       i1600                1
 UP bnd       i1601                1
 UP bnd       i1602                1
 UP bnd       i1603                1
 UP bnd       i1604                1
 UP bnd       i1605                1
 UP bnd       i1606                1
 UP bnd       i1607                1
 UP bnd       i1608                1
 UP bnd       i1609                1
 UP bnd       i1610                1
 UP bnd       i1611                1
 UP bnd       i1612                1
 UP bnd       i1613                1
 UP bnd       i1614                1
 UP bnd       i1615                1
 UP bnd       i1616                1
 UP bnd       i1617                1
 UP bnd       i1618                1
 UP bnd       i1619                1
 UP bnd       i1620                1
 UP bnd       i1621                1
 UP bnd       i1622                1
 UP bnd       i1623                1
 UP bnd       i1624                1
 UP bnd       i1625                1
 UP bnd       i1626                1
 UP bnd       i1627                1
 UP bnd       i1628                1
 UP bnd       i1629                1
 UP bnd       i1630                1
 UP bnd       i1631                1
 UP bnd       i1632                1
 UP bnd       i1633                1
 UP bnd       i1634                1
 UP bnd       i1635                1
 UP bnd       i1636                1
 UP bnd       i1637                1
 UP bnd       i1638                1
 UP bnd       i1639                1
 UP bnd       i1640                1
 UP bnd       i1641                1
 UP bnd       i1642                1
 UP bnd       i1643                1
 UP bnd       i1644                1
 UP bnd       i1645                1
 UP bnd       i1646                1
 UP bnd       i1647                1
 UP bnd       i1648                1
 UP bnd       i1649                1
 UP bnd       i1650                1
 UP bnd       i1651                1
 UP bnd       i1652                1
 UP bnd       i1653                1
 UP bnd       i1654                1
 UP bnd       i1655                1
 UP bnd       i1656                1
 UP bnd       i1657                1
 UP bnd       i1658                1
 UP bnd       i1659                1
 UP bnd       i1660                1
 UP bnd       i1661                1
 UP bnd       i1662                1
 UP bnd       i1663                1
 UP bnd       i1664                1
 UP bnd       i1665                1
 UP bnd       i1666                1
 UP bnd       i1667                1
 UP bnd       i1668                1
 UP bnd       i1669                1
 UP bnd       i1670                1
 UP bnd       i1671                1
 UP bnd       i1672                1
 UP bnd       i1673                1
 UP bnd       i1674                1
 UP bnd       i1675                1
 UP bnd       i1676                1
 UP bnd       i1677                1
 UP bnd       i1678                1
 UP bnd       i1679                1
 UP bnd       i1680                1
 UP bnd       i1681                1
 UP bnd       i1682                1
 UP bnd       i1683                1
 UP bnd       i1684                1
 UP bnd       i1685                1
 UP bnd       i1686                1
 UP bnd       i1687                1
 UP bnd       i1688                1
 UP bnd       i1689                1
 UP bnd       i1690                1
 UP bnd       i1691                1
 UP bnd       i1692                1
 UP bnd       i1693                1
 UP bnd       i1694                1
 UP bnd       i1695                1
 UP bnd       i1696                1
 UP bnd       i1697                1
 UP bnd       i1698                1
 UP bnd       i1699                1
 UP bnd       i1700                1
 UP bnd       i1701                1
 UP bnd       i1702                1
 UP bnd       i1703                1
 UP bnd       i1704                1
 UP bnd       i1705                1
 UP bnd       i1706                1
 UP bnd       i1707                1
 UP bnd       i1708                1
 UP bnd       i1709                1
 UP bnd       i1710                1
 UP bnd       i1711                1
 UP bnd       i1712                1
 UP bnd       i1713                1
 UP bnd       i1714                1
 UP bnd       i1715                1
 UP bnd       i1716                1
 UP bnd       i1717                1
 UP bnd       i1718                1
 UP bnd       i1719                1
 UP bnd       i1720                1
 UP bnd       i1721                1
 UP bnd       i1722                1
 UP bnd       i1723                1
 UP bnd       i1724                1
 UP bnd       i1725                1
 UP bnd       i1726                1
 UP bnd       i1727                1
 UP bnd       i1728                1
 UP bnd       i1729                1
 UP bnd       i1730                1
 UP bnd       i1731                1
 UP bnd       i1732                1
 UP bnd       i1733                1
 UP bnd       i1734                1
 UP bnd       i1735                1
 UP bnd       i1736                1
 UP bnd       i1737                1
 UP bnd       i1738                1
 UP bnd       i1739                1
 UP bnd       i1740                1
 UP bnd       i1741                1
 UP bnd       i1742                1
 UP bnd       i1743                1
 UP bnd       i1744                1
 UP bnd       i1745                1
 UP bnd       i1746                1
 UP bnd       i1747                1
 UP bnd       i1748                1
 UP bnd       i1749                1
 UP bnd       i1750                1
 UP bnd       i1751                1
 UP bnd       i1752                1
 UP bnd       i1753                1
 UP bnd       i1754                1
 UP bnd       i1755                1
 UP bnd       i1756                1
 UP bnd       i1757                1
 UP bnd       i1758                1
 UP bnd       i1759                1
 UP bnd       i1760                1
 UP bnd       i1761                1
 UP bnd       i1762                1
 UP bnd       i1763                1
 UP bnd       i1764                1
 UP bnd       i1765                1
 UP bnd       i1766                1
 UP bnd       i1767                1
 UP bnd       i1768                1
 UP bnd       i1769                1
 UP bnd       i1770                1
 UP bnd       i1771                1
 UP bnd       i1772                1
 UP bnd       i1773                1
 UP bnd       i1774                1
 UP bnd       i1775                1
 UP bnd       i1776                1
 UP bnd       i1777                1
 UP bnd       i1778                1
 UP bnd       i1779                1
 UP bnd       i1780                1
 UP bnd       i1781                1
 UP bnd       i1782                1
 UP bnd       i1783                1
 UP bnd       i1784                1
 UP bnd       i1785                1
 UP bnd       i1786                1
 UP bnd       i1787                1
 UP bnd       i1788                1
 UP bnd       i1789                1
 UP bnd       i1790                1
 UP bnd       i1791                1
 UP bnd       i1792                1
 UP bnd       i1793                1
 UP bnd       i1794                1
 UP bnd       i1795                1
 UP bnd       i1796                1
 UP bnd       i1797                1
 UP bnd       i1798                1
 UP bnd       i1799                1
 UP bnd       i1800                1
 UP bnd       i1801                1
 UP bnd       i1802                1
 UP bnd       i1803                1
 UP bnd       i1804                1
 UP bnd       i1805                1
 UP bnd       i1806                1
 UP bnd       i1807                1
 UP bnd       i1808                1
 UP bnd       i1809                1
 UP bnd       i1810                1
 UP bnd       i1811                1
 UP bnd       i1812                1
 UP bnd       i1813                1
 UP bnd       i1814                1
 UP bnd       i1815                1
 UP bnd       i1816                1
 UP bnd       i1817                1
 UP bnd       i1818                1
 UP bnd       i1819                1
 UP bnd       i1820                1
 UP bnd       i1821                1
 UP bnd       i1822                1
 UP bnd       i1823                1
 UP bnd       i1824                1
 UP bnd       i1825                1
 UP bnd       i1826                1
 UP bnd       i1827                1
 UP bnd       i1828                1
 UP bnd       i1829                1
 UP bnd       i1830                1
 UP bnd       i1831                1
 UP bnd       i1832                1
 UP bnd       i1833                1
 UP bnd       i1834                1
 UP bnd       i1835                1
 UP bnd       i1836                1
 UP bnd       i1837                1
 UP bnd       i1838                1
 UP bnd       i1839                1
 UP bnd       i1840                1
 UP bnd       i1841                1
 UP bnd       i1842                1
 UP bnd       i1843                1
 UP bnd       i1844                1
 UP bnd       i1845                1
 UP bnd       i1846                1
 UP bnd       i1847                1
 UP bnd       i1848                1
 UP bnd       i1849                1
 UP bnd       i1850                1
 UP bnd       i1851                1
 UP bnd       i1852                1
 UP bnd       i1853                1
 UP bnd       i1854                1
 UP bnd       i1855                1
 UP bnd       i1856                1
 UP bnd       i1857                1
 UP bnd       i1858                1
 UP bnd       i1859                1
 UP bnd       i1860                1
 UP bnd       i1861                1
 FR bnd       x1862   
ENDATA
