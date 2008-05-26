%configuration << 
%move generation
USE_FLAT_STACK = 0
USE_EN_PASSANT = 0
ONLY_GENERATE_LEGAL_MOVES = 0

%minimax
USE_MINIMAX_ONLY = 0
USE_ITERATIVE_DEEPENING = 1
USE_UNSORTED_STACK = 0
USE_TIME_CONSTRAINT = 0

%caching
USE_EVALUATION_CACHING = 1
USE_LINKEDLISTS_WHEN_CACHING = 0
CACHE_SIZE = 3597169
CLEAR_CACHE_ON_OVERFLOW = 1
CLEAR_CACHE_ON_NON_REVERSABLE_MOVE = 0

%caching
DEFAULT_PLY = 3
MAX_SEARCH_TIME = 29500

%variables
cacheSize = [];
cacheClears = [];
cacheRetrievals = [];
evaluations = [];
movesGenerated = [];
searchTime = [];
cutoffs = [];
movesGenerated = [movesGenerated, [840; 8499]];
searchTime = [searchTime, [6; 95]];
evaluations = [evaluations, [297; 5646]];
cacheRetrievals = [cacheRetrievals, [0; 4183]];
cacheSize = [cacheSize, [0; 1463]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [503; 2499]];

%Turn: 1
movesGenerated = [movesGenerated, [1238; 10211]];
searchTime = [searchTime, [2; 130]];
evaluations = [evaluations, [330; 4102]];
cacheRetrievals = [cacheRetrievals, [330; 71]];
cacheSize = [cacheSize, [1463; 1463]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [868; 5707]];

%Turn: 2
movesGenerated = [movesGenerated, [1734; 13394]];
searchTime = [searchTime, [8; 106]];
evaluations = [evaluations, [495; 5406]];
cacheRetrievals = [cacheRetrievals, [0; 3736]];
cacheSize = [cacheSize, [1463; 3133]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1179; 7579]];

%Turn: 3
movesGenerated = [movesGenerated, [2056; 19150]];
searchTime = [searchTime, [2; 198]];
evaluations = [evaluations, [270; 7705]];
cacheRetrievals = [cacheRetrievals, [270; 137]];
cacheSize = [cacheSize, [3133; 3133]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1730; 10867]];

%Turn: 4
movesGenerated = [movesGenerated, [3142; 20238]];
searchTime = [searchTime, [7; 129]];
evaluations = [evaluations, [339; 7915]];
cacheRetrievals = [cacheRetrievals, [1; 5308]];
cacheSize = [cacheSize, [3133; 5740]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2731; 11782]];

%Turn: 5
movesGenerated = [movesGenerated, [3480; 12799]];
searchTime = [searchTime, [2; 91]];
evaluations = [evaluations, [239; 1436]];
cacheRetrievals = [cacheRetrievals, [239; 0]];
cacheSize = [cacheSize, [5740; 5740]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [3157; 11036]];

%Turn: 6
movesGenerated = [movesGenerated, [3102; 13048]];
searchTime = [searchTime, [4; 101]];
evaluations = [evaluations, [162; 5596]];
cacheRetrievals = [cacheRetrievals, [0; 4202]];
cacheSize = [cacheSize, [5740; 7134]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2862; 7093]];

%Turn: 7
movesGenerated = [movesGenerated, [2698; 59385]];
searchTime = [searchTime, [1; 415]];
evaluations = [evaluations, [249; 19121]];
cacheRetrievals = [cacheRetrievals, [249; 351]];
cacheSize = [cacheSize, [7134; 7134]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2371; 38659]];

%Turn: 8
movesGenerated = [movesGenerated, [2692; 19973]];
searchTime = [searchTime, [6; 126]];
evaluations = [evaluations, [272; 7328]];
cacheRetrievals = [cacheRetrievals, [47; 4836]];
cacheSize = [cacheSize, [7134; 9626]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2352; 12082]];

%Turn: 9
movesGenerated = [movesGenerated, [2608; 17935]];
searchTime = [searchTime, [2; 166]];
evaluations = [evaluations, [144; 6013]];
cacheRetrievals = [cacheRetrievals, [144; 318]];
cacheSize = [cacheSize, [9626; 9626]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2392; 11375]];

%Turn: 10
movesGenerated = [movesGenerated, [2504; 22535]];
searchTime = [searchTime, [6; 163]];
evaluations = [evaluations, [280; 10256]];
cacheRetrievals = [cacheRetrievals, [6; 6344]];
cacheSize = [cacheSize, [9626; 13538]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2154; 11646]];

%Turn: 11
movesGenerated = [movesGenerated, [2606; 18129]];
searchTime = [searchTime, [2; 208]];
evaluations = [evaluations, [301; 7988]];
cacheRetrievals = [cacheRetrievals, [301; 332]];
cacheSize = [cacheSize, [13538; 13538]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2235; 9594]];

%Turn: 12
movesGenerated = [movesGenerated, [2222; 26325]];
searchTime = [searchTime, [6; 178]];
evaluations = [evaluations, [281; 14931]];
cacheRetrievals = [cacheRetrievals, [57; 10732]];
cacheSize = [cacheSize, [13538; 17737]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1869; 10658]];

%Turn: 13
movesGenerated = [movesGenerated, [2268; 23769]];
searchTime = [searchTime, [2; 241]];
evaluations = [evaluations, [327; 9316]];
cacheRetrievals = [cacheRetrievals, [327; 168]];
cacheSize = [cacheSize, [17737; 17737]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1881; 13692]];

%Turn: 14
movesGenerated = [movesGenerated, [2294; 25671]];
searchTime = [searchTime, [7; 160]];
evaluations = [evaluations, [256; 11126]];
cacheRetrievals = [cacheRetrievals, [0; 7593]];
cacheSize = [cacheSize, [17737; 21270]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1966; 13855]];

%Turn: 15
movesGenerated = [movesGenerated, [2446; 20985]];
searchTime = [searchTime, [2; 198]];
evaluations = [evaluations, [360; 7115]];
cacheRetrievals = [cacheRetrievals, [360; 282]];
cacheSize = [cacheSize, [21270; 21270]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2026; 13221]];

%Turn: 16
movesGenerated = [movesGenerated, [2640; 12811]];
searchTime = [searchTime, [5; 104]];
evaluations = [evaluations, [147; 5971]];
cacheRetrievals = [cacheRetrievals, [0; 4527]];
cacheSize = [cacheSize, [21270; 22714]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2413; 6483]];

%Turn: 17
movesGenerated = [movesGenerated, [2526; 25022]];
searchTime = [searchTime, [2; 222]];
evaluations = [evaluations, [332; 8179]];
cacheRetrievals = [cacheRetrievals, [332; 357]];
cacheSize = [cacheSize, [22714; 22714]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2132; 16080]];

%Turn: 18
movesGenerated = [movesGenerated, [2652; 13570]];
searchTime = [searchTime, [5; 110]];
evaluations = [evaluations, [184; 6387]];
cacheRetrievals = [cacheRetrievals, [2; 4738]];
cacheSize = [cacheSize, [22714; 24363]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2388; 6805]];

%Turn: 19
movesGenerated = [movesGenerated, [2346; 26792]];
searchTime = [searchTime, [3; 210]];
evaluations = [evaluations, [372; 7747]];
cacheRetrievals = [cacheRetrievals, [372; 501]];
cacheSize = [cacheSize, [24363; 24363]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1908; 18257]];

%Turn: 20
movesGenerated = [movesGenerated, [2314; 44707]];
searchTime = [searchTime, [3; 197]];
evaluations = [evaluations, [139; 15049]];
cacheRetrievals = [cacheRetrievals, [2; 10524]];
cacheSize = [cacheSize, [24363; 28888]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2107; 28354]];

%Turn: 21
movesGenerated = [movesGenerated, [2690; 21114]];
searchTime = [searchTime, [2; 174]];
evaluations = [evaluations, [591; 5538]];
cacheRetrievals = [cacheRetrievals, [591; 168]];
cacheSize = [cacheSize, [28888; 28888]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2033; 15001]];

%Turn: 22
movesGenerated = [movesGenerated, [2816; 11849]];
searchTime = [searchTime, [5; 110]];
evaluations = [evaluations, [248; 5904]];
cacheRetrievals = [cacheRetrievals, [16; 4233]];
cacheSize = [cacheSize, [28888; 30559]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2492; 5624]];

%Turn: 23
movesGenerated = [movesGenerated, [3274; 22960]];
searchTime = [searchTime, [2; 246]];
evaluations = [evaluations, [119; 9188]];
cacheRetrievals = [cacheRetrievals, [119; 147]];
cacheSize = [cacheSize, [30559; 30559]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [3081; 13161]];

%Turn: 24
movesGenerated = [movesGenerated, [3046; 13754]];
searchTime = [searchTime, [5; 118]];
evaluations = [evaluations, [204; 6791]];
cacheRetrievals = [cacheRetrievals, [0; 4725]];
cacheSize = [cacheSize, [30559; 32619]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2760; 6606]];

%Turn: 25
movesGenerated = [movesGenerated, [2592; 16488]];
searchTime = [searchTime, [2; 157]];
evaluations = [evaluations, [170; 5205]];
cacheRetrievals = [cacheRetrievals, [170; 102]];
cacheSize = [cacheSize, [32619; 32619]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2362; 10804]];

%Turn: 26
movesGenerated = [movesGenerated, [2464; 14046]];
searchTime = [searchTime, [4; 104]];
evaluations = [evaluations, [139; 5802]];
cacheRetrievals = [cacheRetrievals, [0; 4398]];
cacheSize = [cacheSize, [32619; 34023]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2247; 7869]];

%Turn: 27
movesGenerated = [movesGenerated, [2344; 14840]];
searchTime = [searchTime, [2; 196]];
evaluations = [evaluations, [176; 7836]];
cacheRetrievals = [cacheRetrievals, [174; 54]];
cacheSize = [cacheSize, [34025; 34025]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2112; 6531]];

%Turn: 28
movesGenerated = [movesGenerated, [2318; 7321]];
searchTime = [searchTime, [3; 80]];
evaluations = [evaluations, [161; 3033]];
cacheRetrievals = [cacheRetrievals, [2; 2404]];
cacheSize = [cacheSize, [34025; 34654]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2095; 4075]];

%Turn: 29
movesGenerated = [movesGenerated, [1864; 11829]];
searchTime = [searchTime, [1; 144]];
evaluations = [evaluations, [126; 5652]];
cacheRetrievals = [cacheRetrievals, [126; 30]];
cacheSize = [cacheSize, [34654; 34654]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1686; 5749]];

%Turn: 30
movesGenerated = [movesGenerated, [1966; 10725]];
searchTime = [searchTime, [3; 86]];
evaluations = [evaluations, [122; 3926]];
cacheRetrievals = [cacheRetrievals, [0; 3007]];
cacheSize = [cacheSize, [34654; 35573]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1778; 6470]];

%Turn: 31
movesGenerated = [movesGenerated, [1900; 13176]];
searchTime = [searchTime, [1; 152]];
evaluations = [evaluations, [126; 6056]];
cacheRetrievals = [cacheRetrievals, [126; 35]];
cacheSize = [cacheSize, [35573; 35573]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1716; 6664]];

%Turn: 32
movesGenerated = [movesGenerated, [1730; 6623]];
searchTime = [searchTime, [3; 80]];
evaluations = [evaluations, [118; 2973]];
cacheRetrievals = [cacheRetrievals, [2; 2336]];
cacheSize = [cacheSize, [35573; 36210]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1554; 3431]];

%Turn: 33
movesGenerated = [movesGenerated, [2012; 7321]];
searchTime = [searchTime, [1; 104]];
evaluations = [evaluations, [121; 2784]];
cacheRetrievals = [cacheRetrievals, [121; 36]];
cacheSize = [cacheSize, [36210; 36210]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1833; 4299]];

%Turn: 34
movesGenerated = [movesGenerated, [1462; 6015]];
searchTime = [searchTime, [2; 77]];
evaluations = [evaluations, [102; 2314]];
cacheRetrievals = [cacheRetrievals, [0; 1784]];
cacheSize = [cacheSize, [36210; 36740]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1308; 3486]];

%Turn: 35
movesGenerated = [movesGenerated, [1900; 6503]];
searchTime = [searchTime, [2; 97]];
evaluations = [evaluations, [108; 2420]];
cacheRetrievals = [cacheRetrievals, [108; 36]];
cacheSize = [cacheSize, [36740; 36740]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1738; 3861]];

%Turn: 36
movesGenerated = [movesGenerated, [1568; 7967]];
searchTime = [searchTime, [3; 83]];
evaluations = [evaluations, [138; 3055]];
cacheRetrievals = [cacheRetrievals, [0; 2221]];
cacheSize = [cacheSize, [36740; 37574]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1376; 4618]];

%Turn: 37
movesGenerated = [movesGenerated, [1502; 8522]];
searchTime = [searchTime, [0; 129]];
evaluations = [evaluations, [146; 4968]];
cacheRetrievals = [cacheRetrievals, [146; 69]];
cacheSize = [cacheSize, [37574; 37574]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1300; 3238]];

%Turn: 38
movesGenerated = [movesGenerated, [1302; 5080]];
searchTime = [searchTime, [2; 74]];
evaluations = [evaluations, [125; 1889]];
cacheRetrievals = [cacheRetrievals, [0; 1387]];
cacheSize = [cacheSize, [37574; 38076]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1129; 2991]];

%Turn: 39
movesGenerated = [movesGenerated, [1458; 7706]];
searchTime = [searchTime, [1; 99]];
evaluations = [evaluations, [117; 2789]];
cacheRetrievals = [cacheRetrievals, [117; 45]];
cacheSize = [cacheSize, [38076; 38076]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1289; 4625]];

%Turn: 40
movesGenerated = [movesGenerated, [1626; 7744]];
searchTime = [searchTime, [5; 83]];
evaluations = [evaluations, [281; 3187]];
cacheRetrievals = [cacheRetrievals, [1; 2216]];
cacheSize = [cacheSize, [38076; 39047]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1289; 4281]];

%Turn: 41
movesGenerated = [movesGenerated, [1602; 9305]];
searchTime = [searchTime, [1; 113]];
evaluations = [evaluations, [174; 3670]];
cacheRetrievals = [cacheRetrievals, [174; 56]];
cacheSize = [cacheSize, [39047; 39047]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1372; 5308]];

%Turn: 42
movesGenerated = [movesGenerated, [1624; 8155]];
searchTime = [searchTime, [3; 86]];
evaluations = [evaluations, [237; 4760]];
cacheRetrievals = [cacheRetrievals, [0; 3722]];
cacheSize = [cacheSize, [39047; 40013]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1333; 3114]];

%Turn: 43
movesGenerated = [movesGenerated, [1990; 8189]];
searchTime = [searchTime, [1; 240]];
evaluations = [evaluations, [148; 3194]];
cacheRetrievals = [cacheRetrievals, [148; 48]];
cacheSize = [cacheSize, [40013; 40013]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1784; 4721]];

%Turn: 44
movesGenerated = [movesGenerated, [1150; 6132]];
searchTime = [searchTime, [4; 76]];
evaluations = [evaluations, [246; 2145]];
cacheRetrievals = [cacheRetrievals, [0; 1490]];
cacheSize = [cacheSize, [40013; 40665]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [860; 3730]];

%Turn: 45
movesGenerated = [movesGenerated, [1088; 9803]];
searchTime = [searchTime, [1; 122]];
evaluations = [evaluations, [135; 5036]];
cacheRetrievals = [cacheRetrievals, [135; 81]];
cacheSize = [cacheSize, [40665; 40665]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [903; 4372]];

%Turn: 46
movesGenerated = [movesGenerated, [1034; 4036]];
searchTime = [searchTime, [2; 74]];
evaluations = [evaluations, [170; 1606]];
cacheRetrievals = [cacheRetrievals, [0; 1042]];
cacheSize = [cacheSize, [40665; 41229]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [826; 2246]];

%Turn: 47
movesGenerated = [movesGenerated, [978; 8678]];
searchTime = [searchTime, [1; 124]];
evaluations = [evaluations, [131; 5355]];
cacheRetrievals = [cacheRetrievals, [131; 66]];
cacheSize = [cacheSize, [41229; 41229]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [795; 2975]];

%Turn: 48
movesGenerated = [movesGenerated, [892; 3894]];
searchTime = [searchTime, [3; 72]];
evaluations = [evaluations, [189; 1370]];
cacheRetrievals = [cacheRetrievals, [0; 846]];
cacheSize = [cacheSize, [41229; 41753]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [669; 2334]];

%Turn: 49
movesGenerated = [movesGenerated, [942; 9536]];
searchTime = [searchTime, [1; 127]];
evaluations = [evaluations, [127; 5432]];
cacheRetrievals = [cacheRetrievals, [127; 66]];
cacheSize = [cacheSize, [41753; 41753]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [765; 3733]];

%Turn: 50
movesGenerated = [movesGenerated, [1130; 3738]];
searchTime = [searchTime, [4; 72]];
evaluations = [evaluations, [210; 1507]];
cacheRetrievals = [cacheRetrievals, [0; 983]];
cacheSize = [cacheSize, [41753; 42277]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [886; 2075]];

%Turn: 51
movesGenerated = [movesGenerated, [1500; 20381]];
searchTime = [searchTime, [2; 169]];
evaluations = [evaluations, [320; 8781]];
cacheRetrievals = [cacheRetrievals, [320; 168]];
cacheSize = [cacheSize, [42277; 42277]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1116; 10955]];

%Turn: 52
movesGenerated = [movesGenerated, [1774; 7028]];
searchTime = [searchTime, [4; 80]];
evaluations = [evaluations, [302; 2225]];
cacheRetrievals = [cacheRetrievals, [4; 1257]];
cacheSize = [cacheSize, [42277; 43245]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1428; 4536]];

%Turn: 53
movesGenerated = [movesGenerated, [1900; 47742]];
searchTime = [searchTime, [2; 287]];
evaluations = [evaluations, [370; 18270]];
cacheRetrievals = [cacheRetrievals, [370; 414]];
cacheSize = [cacheSize, [43245; 43245]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1452; 28173]];

%Turn: 54
movesGenerated = [movesGenerated, [1992; 9114]];
searchTime = [searchTime, [5; 85]];
evaluations = [evaluations, [355; 2637]];
cacheRetrievals = [cacheRetrievals, [4; 1384]];
cacheSize = [cacheSize, [43245; 44495]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1591; 6149]];

%Turn: 55
movesGenerated = [movesGenerated, [2176; 11619]];
searchTime = [searchTime, [2; 133]];
evaluations = [evaluations, [507; 6078]];
cacheRetrievals = [cacheRetrievals, [507; 294]];
cacheSize = [cacheSize, [44495; 44495]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1583; 5214]];

%Turn: 56
movesGenerated = [movesGenerated, [2128; 12020]];
searchTime = [searchTime, [5; 93]];
evaluations = [evaluations, [325; 3685]];
cacheRetrievals = [cacheRetrievals, [0; 2071]];
cacheSize = [cacheSize, [44495; 46106]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1757; 7875]];

%Turn: 57
movesGenerated = [movesGenerated, [2010; 60339]];
searchTime = [searchTime, [2; 356]];
evaluations = [evaluations, [150; 23866]];
cacheRetrievals = [cacheRetrievals, [150; 361]];
cacheSize = [cacheSize, [46106; 46106]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1770; 35004]];

%Turn: 58
movesGenerated = [movesGenerated, [1972; 6521]];
searchTime = [searchTime, [5; 77]];
evaluations = [evaluations, [361; 2324]];
cacheRetrievals = [cacheRetrievals, [6; 1644]];
cacheSize = [cacheSize, [46106; 46783]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1569; 3969]];

%Turn: 59
movesGenerated = [movesGenerated, [2658; 31201]];
searchTime = [searchTime, [2; 264]];
evaluations = [evaluations, [164; 16255]];
cacheRetrievals = [cacheRetrievals, [164; 366]];
cacheSize = [cacheSize, [46783; 46783]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2400; 14179]];

%Turn: 60
movesGenerated = [movesGenerated, [2540; 19413]];
searchTime = [searchTime, [5; 93]];
evaluations = [evaluations, [307; 4135]];
cacheRetrievals = [cacheRetrievals, [0; 2926]];
cacheSize = [cacheSize, [46783; 47989]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2183; 14507]];

%Turn: 61
movesGenerated = [movesGenerated, [1858; 18695]];
searchTime = [searchTime, [2; 218]];
evaluations = [evaluations, [126; 12626]];
cacheRetrievals = [cacheRetrievals, [126; 297]];
cacheSize = [cacheSize, [47989; 47989]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1632; 5574]];

%Turn: 62
movesGenerated = [movesGenerated, [1934; 4594]];
searchTime = [searchTime, [3; 69]];
evaluations = [evaluations, [200; 828]];
cacheRetrievals = [cacheRetrievals, [0; 501]];
cacheSize = [cacheSize, [47989; 48274]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1696; 3623]];

%Turn: 63
movesGenerated = [movesGenerated, [2016; 27988]];
searchTime = [searchTime, [2; 288]];
evaluations = [evaluations, [166; 18249]];
cacheRetrievals = [cacheRetrievals, [166; 654]];
cacheSize = [cacheSize, [48274; 48274]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1750; 9057]];

%Turn: 64
movesGenerated = [movesGenerated, [1930; 7149]];
searchTime = [searchTime, [5; 76]];
evaluations = [evaluations, [341; 1636]];
cacheRetrievals = [cacheRetrievals, [1; 941]];
cacheSize = [cacheSize, [48274; 48951]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1551; 5235]];

%Turn: 65
movesGenerated = [movesGenerated, [1920; 19403]];
searchTime = [searchTime, [2; 215]];
evaluations = [evaluations, [161; 12304]];
cacheRetrievals = [cacheRetrievals, [161; 306]];
cacheSize = [cacheSize, [48951; 48951]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1659; 6588]];

%Turn: 66
movesGenerated = [movesGenerated, [1826; 5747]];
searchTime = [searchTime, [4; 73]];
evaluations = [evaluations, [240; 1305]];
cacheRetrievals = [cacheRetrievals, [0; 822]];
cacheSize = [cacheSize, [48951; 49416]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1550; 4224]];

%Turn: 67
movesGenerated = [movesGenerated, [1924; 18647]];
searchTime = [searchTime, [1; 203]];
evaluations = [evaluations, [161; 11427]];
cacheRetrievals = [cacheRetrievals, [161; 234]];
cacheSize = [cacheSize, [49416; 49416]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1663; 6726]];

%Turn: 68
movesGenerated = [movesGenerated, [1824; 8372]];
searchTime = [searchTime, [3; 79]];
evaluations = [evaluations, [270; 2024]];
cacheRetrievals = [cacheRetrievals, [0; 1403]];
cacheSize = [cacheSize, [49416; 50019]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1518; 5977]];

%Turn: 69
movesGenerated = [movesGenerated, [1800; 59074]];
searchTime = [searchTime, [1; 395]];
evaluations = [evaluations, [149; 25675]];
cacheRetrievals = [cacheRetrievals, [149; 354]];
cacheSize = [cacheSize, [50019; 50019]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1553; 32049]];

%Turn: 70
movesGenerated = [movesGenerated, [1522; 8617]];
searchTime = [searchTime, [5; 81]];
evaluations = [evaluations, [410; 2609]];
cacheRetrievals = [cacheRetrievals, [0; 1954]];
cacheSize = [cacheSize, [50019; 50659]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1080; 5586]];

%Turn: 71
movesGenerated = [movesGenerated, [1644; 21001]];
searchTime = [searchTime, [1; 246]];
evaluations = [evaluations, [158; 14921]];
cacheRetrievals = [cacheRetrievals, [158; 231]];
cacheSize = [cacheSize, [50659; 50659]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1388; 5528]];

%Turn: 72
movesGenerated = [movesGenerated, [1776; 6194]];
searchTime = [searchTime, [5; 74]];
evaluations = [evaluations, [282; 1640]];
cacheRetrievals = [cacheRetrievals, [2; 1190]];
cacheSize = [cacheSize, [50659; 51103]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1464; 4292]];

%Turn: 73
movesGenerated = [movesGenerated, [1962; 21592]];
searchTime = [searchTime, [1; 301]];
evaluations = [evaluations, [156; 17307]];
cacheRetrievals = [cacheRetrievals, [156; 378]];
cacheSize = [cacheSize, [51103; 51103]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1688; 3757]];

%Turn: 74
movesGenerated = [movesGenerated, [1766; 5711]];
searchTime = [searchTime, [3; 73]];
evaluations = [evaluations, [194; 1374]];
cacheRetrievals = [cacheRetrievals, [0; 964]];
cacheSize = [cacheSize, [51103; 51502]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1542; 4099]];

%Turn: 75
movesGenerated = [movesGenerated, [1944; 25855]];
searchTime = [searchTime, [1; 303]];
evaluations = [evaluations, [156; 17242]];
cacheRetrievals = [cacheRetrievals, [156; 646]];
cacheSize = [cacheSize, [51502; 51502]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1670; 8019]];

%Turn: 76
movesGenerated = [movesGenerated, [2108; 5257]];
searchTime = [searchTime, [4; 70]];
evaluations = [evaluations, [228; 867]];
cacheRetrievals = [cacheRetrievals, [1; 553]];
cacheSize = [cacheSize, [51502; 51804]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1848; 4198]];

%Turn: 77
movesGenerated = [movesGenerated, [2420; 20889]];
searchTime = [searchTime, [2; 236]];
evaluations = [evaluations, [208; 12615]];
cacheRetrievals = [cacheRetrievals, [208; 440]];
cacheSize = [cacheSize, [51804; 51804]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2076; 7760]];

%Turn: 78
movesGenerated = [movesGenerated, [2552; 7023]];
searchTime = [searchTime, [2; 71]];
evaluations = [evaluations, [109; 1135]];
cacheRetrievals = [cacheRetrievals, [0; 732]];
cacheSize = [cacheSize, [51804; 52183]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2405; 5641]];

%Turn: 79
movesGenerated = [movesGenerated, [2320; 17607]];
searchTime = [searchTime, [2; 206]];
evaluations = [evaluations, [200; 10911]];
cacheRetrievals = [cacheRetrievals, [200; 428]];
cacheSize = [cacheSize, [52183; 52183]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1996; 6215]];

%Turn: 80
movesGenerated = [movesGenerated, [1736; 6191]];
searchTime = [searchTime, [5; 71]];
evaluations = [evaluations, [262; 1292]];
cacheRetrievals = [cacheRetrievals, [4; 919]];
cacheSize = [cacheSize, [52183; 52553]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1440; 4667]];

%Turn: 81
movesGenerated = [movesGenerated, [2162; 21533]];
searchTime = [searchTime, [1; 272]];
evaluations = [evaluations, [145; 14830]];
cacheRetrievals = [cacheRetrievals, [145; 450]];
cacheSize = [cacheSize, [52553; 52553]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1917; 6189]];

%Turn: 82
movesGenerated = [movesGenerated, [2320; 5517]];
searchTime = [searchTime, [4; 68]];
evaluations = [evaluations, [236; 1008]];
cacheRetrievals = [cacheRetrievals, [0; 733]];
cacheSize = [cacheSize, [52553; 52804]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2044; 4338]];

%Turn: 83
movesGenerated = [movesGenerated, [2374; 39917]];
searchTime = [searchTime, [2; 368]];
evaluations = [evaluations, [134; 20822]];
cacheRetrievals = [cacheRetrievals, [134; 573]];
cacheSize = [cacheSize, [52804; 52804]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2124; 18266]];

%Turn: 84
movesGenerated = [movesGenerated, [2352; 8412]];
searchTime = [searchTime, [4; 75]];
evaluations = [evaluations, [284; 1506]];
cacheRetrievals = [cacheRetrievals, [9; 978]];
cacheSize = [cacheSize, [52804; 53324]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2028; 6599]];

%Turn: 85
movesGenerated = [movesGenerated, [2920; 44845]];
searchTime = [searchTime, [1; 336]];
evaluations = [evaluations, [172; 19408]];
cacheRetrievals = [cacheRetrievals, [172; 525]];
cacheSize = [cacheSize, [53324; 53324]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2636; 24525]];

%Turn: 86
movesGenerated = [movesGenerated, [3070; 23800]];
searchTime = [searchTime, [7; 104]];
evaluations = [evaluations, [372; 4815]];
cacheRetrievals = [cacheRetrievals, [1; 3238]];
cacheSize = [cacheSize, [53324; 54892]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2646; 18105]];

%Turn: 87
movesGenerated = [movesGenerated, [3230; 20457]];
searchTime = [searchTime, [2; 212]];
evaluations = [evaluations, [258; 10852]];
cacheRetrievals = [cacheRetrievals, [258; 516]];
cacheSize = [cacheSize, [54892; 54892]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2862; 9157]];

%Turn: 88
movesGenerated = [movesGenerated, [3124; 19344]];
searchTime = [searchTime, [6; 99]];
evaluations = [evaluations, [378; 5199]];
cacheRetrievals = [cacheRetrievals, [0; 3750]];
cacheSize = [cacheSize, [54892; 56311]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2694; 13444]];

%Turn: 89
movesGenerated = [movesGenerated, [3168; 47508]];
searchTime = [searchTime, [2; 380]];
evaluations = [evaluations, [420; 21951]];
cacheRetrievals = [cacheRetrievals, [420; 797]];
cacheSize = [cacheSize, [56311; 56311]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2630; 24620]];

%Turn: 90
movesGenerated = [movesGenerated, [2938; 10833]];
searchTime = [searchTime, [4; 78]];
evaluations = [evaluations, [322; 1821]];
cacheRetrievals = [cacheRetrievals, [10; 1163]];
cacheSize = [cacheSize, [56311; 56903]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2564; 8678]];

%Turn: 91
movesGenerated = [movesGenerated, [2952; 56121]];
searchTime = [searchTime, [2; 372]];
evaluations = [evaluations, [443; 21506]];
cacheRetrievals = [cacheRetrievals, [443; 771]];
cacheSize = [cacheSize, [56903; 56903]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2395; 33504]];

%Turn: 92
movesGenerated = [movesGenerated, [3186; 9176]];
searchTime = [searchTime, [6; 77]];
evaluations = [evaluations, [381; 2107]];
cacheRetrievals = [cacheRetrievals, [6; 1504]];
cacheSize = [cacheSize, [56903; 57494]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [2755; 6819]];

%Turn: 93
movesGenerated = [movesGenerated, [3530; 18617]];
searchTime = [searchTime, [2; 147]];
evaluations = [evaluations, [253; 5977]];
cacheRetrievals = [cacheRetrievals, [253; 90]];
cacheSize = [cacheSize, [57494; 57494]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [3151; 12230]];

%Turn: 94
movesGenerated = [movesGenerated, [3752; 15004]];
searchTime = [searchTime, [8; 86]];
evaluations = [evaluations, [512; 2727]];
cacheRetrievals = [cacheRetrievals, [8; 1763]];
cacheSize = [cacheSize, [57494; 58437]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [3182; 11822]];

%Turn: 95
movesGenerated = [movesGenerated, [3896; 48356]];
searchTime = [searchTime, [3; 352]];
evaluations = [evaluations, [266; 20597]];
cacheRetrievals = [cacheRetrievals, [266; 423]];
cacheSize = [cacheSize, [58437; 58437]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [3502; 26842]];

%Turn: 96
movesGenerated = [movesGenerated, [3860; 12310]];
searchTime = [searchTime, [7; 79]];
evaluations = [evaluations, [430; 2135]];
cacheRetrievals = [cacheRetrievals, [0; 1310]];
cacheSize = [cacheSize, [58437; 59123]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [3370; 9811]];

%Turn: 97
movesGenerated = [movesGenerated, [3864; 30977]];
searchTime = [searchTime, [2; 287]];
evaluations = [evaluations, [171; 15341]];
cacheRetrievals = [cacheRetrievals, [171; 462]];
cacheSize = [cacheSize, [59123; 59123]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [3565; 15047]];

%Turn: 98
movesGenerated = [movesGenerated, [2178; 8002]];
searchTime = [searchTime, [2; 72]];
evaluations = [evaluations, [173; 977]];
cacheRetrievals = [cacheRetrievals, [0; 595]];
cacheSize = [cacheSize, [59123; 59493]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1975; 6627]];

%Turn: 99
movesGenerated = [movesGenerated, [2030; 26908]];
searchTime = [searchTime, [2; 212]];
evaluations = [evaluations, [169; 15509]];
cacheRetrievals = [cacheRetrievals, [169; 856]];
cacheSize = [cacheSize, [59493; 59493]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1717; 10799]];

%Turn: 100
movesGenerated = [movesGenerated, [1722; 3598]];
searchTime = [searchTime, [2; 65]];
evaluations = [evaluations, [215; 291]];
cacheRetrievals = [cacheRetrievals, [7; 167]];
cacheSize = [cacheSize, [59493; 59592]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1481; 3179]];

%Turn: 101
movesGenerated = [movesGenerated, [1772; 19105]];
searchTime = [searchTime, [2; 186]];
evaluations = [evaluations, [141; 13671]];
cacheRetrievals = [cacheRetrievals, [133; 651]];
cacheSize = [cacheSize, [59592; 59592]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1505; 4963]];

%Turn: 102
movesGenerated = [movesGenerated, [1100; 3256]];
searchTime = [searchTime, [1; 66]];
evaluations = [evaluations, [150; 268]];
cacheRetrievals = [cacheRetrievals, [0; 148]];
cacheSize = [cacheSize, [59592; 59691]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [934; 2801]];

%Turn: 103
movesGenerated = [movesGenerated, [1512; 30930]];
searchTime = [searchTime, [2; 273]];
evaluations = [evaluations, [154; 24312]];
cacheRetrievals = [cacheRetrievals, [152; 963]];
cacheSize = [cacheSize, [59691; 59691]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [1220; 5964]];

%Turn: 104
movesGenerated = [movesGenerated, [978; 2715]];
searchTime = [searchTime, [1; 68]];
evaluations = [evaluations, [147; 390]];
cacheRetrievals = [cacheRetrievals, [0; 220]];
cacheSize = [cacheSize, [59691; 59840]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [815; 2145]];

%Turn: 105
movesGenerated = [movesGenerated, [1116; 40376]];
searchTime = [searchTime, [1; 244]];
evaluations = [evaluations, [239; 20688]];
cacheRetrievals = [cacheRetrievals, [239; 801]];
cacheSize = [cacheSize, [59840; 59840]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [753; 18839]];

%Turn: 106
movesGenerated = [movesGenerated, [924; 1842]];
searchTime = [searchTime, [2; 64]];
evaluations = [evaluations, [129; 108]];
cacheRetrievals = [cacheRetrievals, [4; 16]];
cacheSize = [cacheSize, [59840; 59907]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [779; 1653]];

%Turn: 107
movesGenerated = [movesGenerated, [998; 41442]];
searchTime = [searchTime, [2; 216]];
evaluations = [evaluations, [138; 17523]];
cacheRetrievals = [cacheRetrievals, [130; 495]];
cacheSize = [cacheSize, [59907; 59907]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [750; 23034]];

%Turn: 108
movesGenerated = [movesGenerated, [894; 2285]];
searchTime = [searchTime, [2; 65]];
evaluations = [evaluations, [124; 190]];
cacheRetrievals = [cacheRetrievals, [1; 79]];
cacheSize = [cacheSize, [59907; 59993]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [754; 1953]];

%Turn: 109
movesGenerated = [movesGenerated, [976; 46399]];
searchTime = [searchTime, [2; 200]];
evaluations = [evaluations, [171; 15823]];
cacheRetrievals = [cacheRetrievals, [167; 402]];
cacheSize = [cacheSize, [59993; 59993]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [697; 29561]];

%Turn: 110
movesGenerated = [movesGenerated, [924; 1842]];
searchTime = [searchTime, [2; 63]];
evaluations = [evaluations, [129; 103]];
cacheRetrievals = [cacheRetrievals, [0; 16]];
cacheSize = [cacheSize, [59993; 60055]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [779; 1658]];

%Turn: 111
movesGenerated = [movesGenerated, [998; 41988]];
searchTime = [searchTime, [2; 216]];
evaluations = [evaluations, [128; 17722]];
cacheRetrievals = [cacheRetrievals, [120; 591]];
cacheSize = [cacheSize, [60055; 60055]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [760; 23380]];

%Turn: 112
movesGenerated = [movesGenerated, [846; 1529]];
searchTime = [searchTime, [1; 63]];
evaluations = [evaluations, [118; 88]];
cacheRetrievals = [cacheRetrievals, [7; 11]];
cacheSize = [cacheSize, [60055; 60108]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [712; 1365]];

%Turn: 113
movesGenerated = [movesGenerated, [606; 23836]];
searchTime = [searchTime, [2; 192]];
evaluations = [evaluations, [111; 15233]];
cacheRetrievals = [cacheRetrievals, [105; 495]];
cacheSize = [cacheSize, [60108; 60108]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [395; 8025]];

%Turn: 114
movesGenerated = [movesGenerated, [582; 1017]];
searchTime = [searchTime, [1; 63]];
evaluations = [evaluations, [124; 72]];
cacheRetrievals = [cacheRetrievals, [2; 0]];
cacheSize = [cacheSize, [60108; 60156]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [448; 882]];

%Turn: 115
movesGenerated = [movesGenerated, [404; 22023]];
searchTime = [searchTime, [1; 192]];
evaluations = [evaluations, [116; 14619]];
cacheRetrievals = [cacheRetrievals, [96; 507]];
cacheSize = [cacheSize, [60156; 60156]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [192; 6897]];

%Turn: 116
movesGenerated = [movesGenerated, [370; 825]];
searchTime = [searchTime, [1; 63]];
evaluations = [evaluations, [125; 69]];
cacheRetrievals = [cacheRetrievals, [2; 2]];
cacheSize = [cacheSize, [60156; 60208]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [239; 693]];

%Turn: 117
movesGenerated = [movesGenerated, [662; 36359]];
searchTime = [searchTime, [2; 223]];
evaluations = [evaluations, [122; 18478]];
cacheRetrievals = [cacheRetrievals, [108; 585]];
cacheSize = [cacheSize, [60208; 60208]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [432; 17127]];

%Turn: 118
movesGenerated = [movesGenerated, [562; 981]];
searchTime = [searchTime, [1; 64]];
evaluations = [evaluations, [120; 70]];
cacheRetrievals = [cacheRetrievals, [2; 1]];
cacheSize = [cacheSize, [60208; 60253]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [432; 850]];

%Turn: 119
movesGenerated = [movesGenerated, [388; 19968]];
searchTime = [searchTime, [1; 176]];
evaluations = [evaluations, [112; 13260]];
cacheRetrievals = [cacheRetrievals, [92; 486]];
cacheSize = [cacheSize, [60253; 60253]];
cacheClears = [cacheClears, [0; 0]];
cutoffs = [cutoffs, [184; 6225]];

%Turn: 120
