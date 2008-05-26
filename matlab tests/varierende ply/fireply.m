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
DEFAULT_PLY = 4
MAX_SEARCH_TIME = 29500

%variables
cacheSize = [];
cacheClears = [];
cacheRetrievals = [];
evaluations = [];
movesGenerated = [];
searchTime = [];
cutoffs = [];
movesGenerated = [movesGenerated, [840; 8499; 190930]];
searchTime = [searchTime, [6; 94; 928]];
evaluations = [evaluations, [297; 5646; 55282]];
cacheRetrievals = [cacheRetrievals, [0; 4183; 2596]];
cacheSize = [cacheSize, [0; 1463; 1463]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [503; 2499; 126807]];

%Turn: 1
movesGenerated = [movesGenerated, [1238; 10211; 361821]];
searchTime = [searchTime, [1; 128; 806]];
evaluations = [evaluations, [330; 4102; 115936]];
cacheRetrievals = [cacheRetrievals, [330; 71; 91084]];
cacheSize = [cacheSize, [1463; 1463; 26315]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [868; 5707; 234392]];

%Turn: 2
movesGenerated = [movesGenerated, [1670; 10088; 298463]];
searchTime = [searchTime, [5; 77; 993]];
evaluations = [evaluations, [341; 4996; 51293]];
cacheRetrievals = [cacheRetrievals, [118; 4852; 2100]];
cacheSize = [cacheSize, [26315; 26459; 26459]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1269; 4780; 236250]];

%Turn: 3
movesGenerated = [movesGenerated, [2082; 15199; 749180]];
searchTime = [searchTime, [1; 200; 917]];
evaluations = [evaluations, [244; 8157; 98853]];
cacheRetrievals = [cacheRetrievals, [244; 369; 74814]];
cacheSize = [cacheSize, [26459; 26459; 50498]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1784; 6525; 630827]];

%Turn: 4
movesGenerated = [movesGenerated, [2132; 18432; 871142]];
searchTime = [searchTime, [6; 94; 2735]];
evaluations = [evaluations, [365; 8803; 146897]];
cacheRetrievals = [cacheRetrievals, [80; 8349; 10939]];
cacheSize = [cacheSize, [50498; 50952; 50952]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1693; 9113; 694523]];

%Turn: 5
movesGenerated = [movesGenerated, [2266; 17387; 691474]];
searchTime = [searchTime, [2; 169; 966]];
evaluations = [evaluations, [275; 6038; 91246]];
cacheRetrievals = [cacheRetrievals, [250; 272; 63812]];
cacheSize = [cacheSize, [50977; 50977; 78411]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1935; 10787; 582352]];

%Turn: 6
movesGenerated = [movesGenerated, [3296; 56162; 686533]];
searchTime = [searchTime, [5; 158; 996]];
evaluations = [evaluations, [214; 20389; 41692]];
cacheRetrievals = [cacheRetrievals, [20; 18284; 1379]];
cacheSize = [cacheSize, [78411; 80516; 80516]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [3002; 34355; 625692]];

%Turn: 7
movesGenerated = [movesGenerated, [3398; 27055; 707975]];
searchTime = [searchTime, [5; 236; 938]];
evaluations = [evaluations, [444; 9533; 65142]];
cacheRetrievals = [cacheRetrievals, [325; 318; 37850]];
cacheSize = [cacheSize, [80635; 80635; 107925]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [2872; 16808; 625208]];

%Turn: 8
movesGenerated = [movesGenerated, [3382; 53994; 1212068]];
searchTime = [searchTime, [4; 164; 2415]];
evaluations = [evaluations, [175; 20512; 109780]];
cacheRetrievals = [cacheRetrievals, [9; 18326; 4460]];
cacheSize = [cacheSize, [107925; 110111; 110111]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [3127; 32149; 1070056]];

%Turn: 9
movesGenerated = [movesGenerated, [3156; 30756; 920816]];
searchTime = [searchTime, [2; 261; 1219]];
evaluations = [evaluations, [384; 10739; 92226]];
cacheRetrievals = [cacheRetrievals, [384; 482; 57775]];
cacheSize = [cacheSize, [110111; 110111; 144562]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [2688; 19225; 803943]];

%Turn: 10
movesGenerated = [movesGenerated, [3554; 49546; 1640195]];
searchTime = [searchTime, [7; 156; 3609]];
evaluations = [evaluations, [313; 18944; 167251]];
cacheRetrievals = [cacheRetrievals, [28; 16828; 8370]];
cacheSize = [cacheSize, [144562; 146678; 146678]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [3167; 29295; 1434699]];

%Turn: 11
movesGenerated = [movesGenerated, [3908; 91838; 1599764]];
searchTime = [searchTime, [2; 442; 1434]];
evaluations = [evaluations, [212; 19913; 120900]];
cacheRetrievals = [cacheRetrievals, [182; 1380; 89865]];
cacheSize = [cacheSize, [146708; 146708; 177743]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [3604; 69733; 1439685]];

%Turn: 12
movesGenerated = [movesGenerated, [3728; 19504; 1171818]];
searchTime = [searchTime, [8; 118; 1946]];
evaluations = [evaluations, [371; 10310; 81676]];
cacheRetrievals = [cacheRetrievals, [48; 8805; 1236]];
cacheSize = [cacheSize, [177743; 179248; 179248]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [3273; 8704; 1062975]];

%Turn: 13
movesGenerated = [movesGenerated, [3648; 81295; 1323886]];
searchTime = [searchTime, [2; 429; 1320]];
evaluations = [evaluations, [169; 18683; 115490]];
cacheRetrievals = [cacheRetrievals, [129; 575; 85611]];
cacheSize = [cacheSize, [179288; 179288; 209149]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [3391; 60648; 1175145]];

%Turn: 14
movesGenerated = [movesGenerated, [3636; 20496; 500840]];
searchTime = [searchTime, [8; 98; 843]];
evaluations = [evaluations, [373; 8061; 32054]];
cacheRetrievals = [cacheRetrievals, [30; 7369; 242]];
cacheSize = [cacheSize, [209149; 209841; 209841]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [3181; 11920; 456915]];

%Turn: 15
movesGenerated = [movesGenerated, [3364; 29208; 639118]];
searchTime = [searchTime, [3; 287; 698]];
evaluations = [evaluations, [226; 11785; 48876]];
cacheRetrievals = [cacheRetrievals, [226; 360; 33562]];
cacheSize = [cacheSize, [209841; 209841; 225147]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [3046; 16726; 572528]];

%Turn: 16
movesGenerated = [movesGenerated, [3384; 14565; 525808]];
searchTime = [searchTime, [5; 92; 731]];
evaluations = [evaluations, [237; 6936; 32892]];
cacheRetrievals = [cacheRetrievals, [85; 6378; 6718]];
cacheSize = [cacheSize, [225147; 225705; 225705]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [3075; 7244; 481023]];

%Turn: 17
movesGenerated = [movesGenerated, [3100; 25166; 830469]];
searchTime = [searchTime, [3; 278; 905]];
evaluations = [evaluations, [170; 11146; 73188]];
cacheRetrievals = [cacheRetrievals, [170; 337; 54766]];
cacheSize = [cacheSize, [225705; 225705; 244119]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [2838; 13412; 732901]];

%Turn: 18
movesGenerated = [movesGenerated, [2818; 18782; 438370]];
searchTime = [searchTime, [7; 97; 733]];
evaluations = [evaluations, [342; 6574; 28051]];
cacheRetrievals = [cacheRetrievals, [18; 5869; 501]];
cacheSize = [cacheSize, [244119; 244824; 244824]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [2412; 11661; 399807]];

%Turn: 19
movesGenerated = [movesGenerated, [3164; 24703; 376313]];
searchTime = [searchTime, [3; 266; 354]];
evaluations = [evaluations, [157; 10974; 17096]];
cacheRetrievals = [cacheRetrievals, [120; 412; 11206]];
cacheSize = [cacheSize, [244861; 244861; 250739]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [2925; 13101; 349583]];

%Turn: 20
movesGenerated = [movesGenerated, [2844; 11462; 444682]];
searchTime = [searchTime, [3; 80; 844]];
evaluations = [evaluations, [148; 4742; 34818]];
cacheRetrievals = [cacheRetrievals, [39; 4525; 203]];
cacheSize = [cacheSize, [250739; 250956; 250956]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [2632; 6397; 399362]];

%Turn: 21
movesGenerated = [movesGenerated, [2430; 19804; 728678]];
searchTime = [searchTime, [1; 206; 662]];
evaluations = [evaluations, [146; 8023; 51675]];
cacheRetrievals = [cacheRetrievals, [146; 213; 39013]];
cacheSize = [cacheSize, [250956; 250956; 263614]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [2210; 11236; 656268]];

%Turn: 22
movesGenerated = [movesGenerated, [2798; 29530; 567121]];
searchTime = [searchTime, [6; 109; 849]];
evaluations = [evaluations, [269; 9683; 35759]];
cacheRetrievals = [cacheRetrievals, [10; 8711; 149]];
cacheSize = [cacheSize, [263614; 264586; 264586]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [2465; 18995; 517432]];

%Turn: 23
movesGenerated = [movesGenerated, [2822; 18031; 331951]];
searchTime = [searchTime, [2; 247; 238]];
evaluations = [evaluations, [118; 10614; 10989]];
cacheRetrievals = [cacheRetrievals, [77; 171; 8631]];
cacheSize = [cacheSize, [264627; 264627; 266984]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [2620; 6927; 312235]];

%Turn: 24
movesGenerated = [movesGenerated, [1938; 6411; 96500]];
searchTime = [searchTime, [2; 69; 150]];
evaluations = [evaluations, [98; 2084; 4050]];
cacheRetrievals = [cacheRetrievals, [22; 2081; 20]];
cacheSize = [cacheSize, [266984; 266984; 266984]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1794; 4118; 89894]];

%Turn: 25
movesGenerated = [movesGenerated, [1498; 9465; 190852]];
searchTime = [searchTime, [1; 127; 255]];
evaluations = [evaluations, [217; 4406; 16611]];
cacheRetrievals = [cacheRetrievals, [217; 60; 10785]];
cacheSize = [cacheSize, [266984; 266984; 272810]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1227; 4710; 167396]];

%Turn: 26
movesGenerated = [movesGenerated, [1324; 7266; 136443]];
searchTime = [searchTime, [2; 77; 205]];
evaluations = [evaluations, [69; 3470; 9010]];
cacheRetrievals = [cacheRetrievals, [38; 3144; 2782]];
cacheSize = [cacheSize, [272810; 273136; 273136]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1207; 3512; 122447]];

%Turn: 27
movesGenerated = [movesGenerated, [1288; 4774; 79794]];
searchTime = [searchTime, [1; 89; 110]];
evaluations = [evaluations, [65; 2052; 3684]];
cacheRetrievals = [cacheRetrievals, [65; 18; 2713]];
cacheSize = [cacheSize, [273136; 273136; 274107]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1179; 2533; 73294]];

%Turn: 28
movesGenerated = [movesGenerated, [926; 3392; 167496]];
searchTime = [searchTime, [2; 68; 735]];
evaluations = [evaluations, [120; 1491; 49409]];
cacheRetrievals = [cacheRetrievals, [21; 1491; 39]];
cacheSize = [cacheSize, [274107; 274107; 274107]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [762; 1750; 110296]];

%Turn: 29
movesGenerated = [movesGenerated, [1162; 6589; 126000]];
searchTime = [searchTime, [0; 105; 159]];
evaluations = [evaluations, [71; 3200; 9145]];
cacheRetrievals = [cacheRetrievals, [71; 21; 6234]];
cacheSize = [cacheSize, [274107; 274107; 277018]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1051; 3104; 112590]];

%Turn: 30
movesGenerated = [movesGenerated, [1138; 4347; 90889]];
searchTime = [searchTime, [3; 68; 255]];
evaluations = [evaluations, [149; 2127; 12291]];
cacheRetrievals = [cacheRetrievals, [17; 2127; 7]];
cacheSize = [cacheSize, [277018; 277018; 277018]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [935; 2039; 74117]];

%Turn: 31
movesGenerated = [movesGenerated, [1178; 4298; 140300]];
searchTime = [searchTime, [1; 82; 253]];
evaluations = [evaluations, [69; 1499; 28855]];
cacheRetrievals = [cacheRetrievals, [49; 18; 22486]];
cacheSize = [cacheSize, [277038; 277038; 283407]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1067; 2614; 106251]];

%Turn: 32
movesGenerated = [movesGenerated, [1074; 7175; 83450]];
searchTime = [searchTime, [1; 70; 193]];
evaluations = [evaluations, [71; 2837; 7625]];
cacheRetrievals = [cacheRetrievals, [18; 2772; 93]];
cacheSize = [cacheSize, [283407; 283472; 283472]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [949; 4064; 71805]];

%Turn: 33
movesGenerated = [movesGenerated, [1216; 4340; 79984]];
searchTime = [searchTime, [1; 78; 146]];
evaluations = [evaluations, [100; 1196; 6438]];
cacheRetrievals = [cacheRetrievals, [100; 36; 2862]];
cacheSize = [cacheSize, [283472; 283472; 287048]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1078; 2968; 71254]];

%Turn: 34
movesGenerated = [movesGenerated, [1540; 39280; 125462]];
searchTime = [searchTime, [1; 89; 183]];
evaluations = [evaluations, [85; 7062; 5574]];
cacheRetrievals = [cacheRetrievals, [49; 7046; 109]];
cacheSize = [cacheSize, [287048; 287064; 287064]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1393; 30979; 115008]];

%Turn: 35
movesGenerated = [movesGenerated, [1742; 5957; 141329]];
searchTime = [searchTime, [1; 82; 155]];
evaluations = [evaluations, [115; 1798; 9261]];
cacheRetrievals = [cacheRetrievals, [115; 255; 6562]];
cacheSize = [cacheSize, [287064; 287064; 289762]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1581; 3942; 128222]];

%Turn: 36
movesGenerated = [movesGenerated, [1416; 6012; 112677]];
searchTime = [searchTime, [2; 70; 247]];
evaluations = [evaluations, [109; 3209; 11079]];
cacheRetrievals = [cacheRetrievals, [30; 3206; 267]];
cacheSize = [cacheSize, [289762; 289765; 289765]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1245; 2588; 96717]];

%Turn: 37
movesGenerated = [movesGenerated, [1434; 10959; 239307]];
searchTime = [searchTime, [1; 112; 283]];
evaluations = [evaluations, [176; 4035; 25370]];
cacheRetrievals = [cacheRetrievals, [176; 156; 17448]];
cacheSize = [cacheSize, [289765; 289765; 297679]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1218; 6477; 206789]];

%Turn: 38
movesGenerated = [movesGenerated, [2048; 15909; 440778]];
searchTime = [searchTime, [9; 78; 1446]];
evaluations = [evaluations, [685; 5212; 106880]];
cacheRetrievals = [cacheRetrievals, [72; 5127; 3407]];
cacheSize = [cacheSize, [297679; 297764; 297764]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1293; 10210; 318605]];

%Turn: 39
movesGenerated = [movesGenerated, [2056; 20762; 324104]];
searchTime = [searchTime, [1; 145; 340]];
evaluations = [evaluations, [165; 6670; 31826]];
cacheRetrievals = [cacheRetrievals, [165; 240; 23028]];
cacheSize = [cacheSize, [297764; 297764; 306554]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1835; 13394; 282924]];

%Turn: 40
movesGenerated = [movesGenerated, [1916; 10507; 179753]];
searchTime = [searchTime, [3; 75; 278]];
evaluations = [evaluations, [203; 4138; 13441]];
cacheRetrievals = [cacheRetrievals, [34; 3990; 375]];
cacheSize = [cacheSize, [306554; 306702; 306702]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1647; 6042; 160109]];

%Turn: 41
movesGenerated = [movesGenerated, [1892; 18282; 414062]];
searchTime = [searchTime, [1; 143; 422]];
evaluations = [evaluations, [196; 6851; 40710]];
cacheRetrievals = [cacheRetrievals, [196; 606; 29087]];
cacheSize = [cacheSize, [306702; 306702; 318312]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1640; 10812; 360572]];

%Turn: 42
movesGenerated = [movesGenerated, [1842; 12753; 166603]];
searchTime = [searchTime, [3; 87; 231]];
evaluations = [evaluations, [221; 6200; 9012]];
cacheRetrievals = [cacheRetrievals, [56; 5451; 112]];
cacheSize = [cacheSize, [318312; 319061; 319061]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1557; 6140; 151767]];

%Turn: 43
movesGenerated = [movesGenerated, [1732; 11483; 221518]];
searchTime = [searchTime, [1; 110; 292]];
evaluations = [evaluations, [212; 3754; 23521]];
cacheRetrievals = [cacheRetrievals, [212; 232; 14590]];
cacheSize = [cacheSize, [319061; 319061; 327884]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1468; 7343; 191308]];

%Turn: 44
movesGenerated = [movesGenerated, [2152; 13315; 193560]];
searchTime = [searchTime, [3; 78; 250]];
evaluations = [evaluations, [230; 5725; 10742]];
cacheRetrievals = [cacheRetrievals, [82; 5718; 232]];
cacheSize = [cacheSize, [327884; 327891; 327891]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1858; 7157; 177049]];

%Turn: 45
movesGenerated = [movesGenerated, [2176; 19064; 475195]];
searchTime = [searchTime, [1; 153; 447]];
evaluations = [evaluations, [222; 7427; 43498]];
cacheRetrievals = [cacheRetrievals, [222; 522; 33140]];
cacheSize = [cacheSize, [327891; 327891; 338237]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1886; 11066; 416779]];

%Turn: 46
movesGenerated = [movesGenerated, [2170; 19974; 243174]];
searchTime = [searchTime, [4; 82; 304]];
evaluations = [evaluations, [269; 6304; 14096]];
cacheRetrievals = [cacheRetrievals, [79; 6289; 358]];
cacheSize = [cacheSize, [338237; 338252; 338252]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1839; 13039; 222013]];

%Turn: 47
movesGenerated = [movesGenerated, [2430; 8810; 195367]];
searchTime = [searchTime, [2; 113; 180]];
evaluations = [evaluations, [102; 4052; 8257]];
cacheRetrievals = [cacheRetrievals, [68; 204; 5458]];
cacheSize = [cacheSize, [338286; 338286; 341081]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [2258; 4501; 181573]];

%Turn: 48
movesGenerated = [movesGenerated, [2510; 12145; 280179]];
searchTime = [searchTime, [1; 81; 294]];
evaluations = [evaluations, [105; 6160; 11811]];
cacheRetrievals = [cacheRetrievals, [36; 6089; 68]];
cacheSize = [cacheSize, [341081; 341152; 341152]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [2337; 5630; 260344]];

%Turn: 49
movesGenerated = [movesGenerated, [2704; 10731; 214327]];
searchTime = [searchTime, [1; 118; 197]];
evaluations = [evaluations, [143; 4400; 9804]];
cacheRetrievals = [cacheRetrievals, [143; 204; 6444]];
cacheSize = [cacheSize, [341152; 341152; 344512]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [2489; 6024; 198361]];

%Turn: 50
movesGenerated = [movesGenerated, [2658; 17287; 422000]];
searchTime = [searchTime, [4; 79; 592]];
evaluations = [evaluations, [221; 6853; 31610]];
cacheRetrievals = [cacheRetrievals, [44; 6821; 112]];
cacheSize = [cacheSize, [344512; 344544; 344544]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [2363; 9947; 377879]];

%Turn: 51
movesGenerated = [movesGenerated, [2762; 16352; 564260]];
searchTime = [searchTime, [2; 163; 543]];
evaluations = [evaluations, [185; 7599; 52714]];
cacheRetrievals = [cacheRetrievals, [117; 120; 36709]];
cacheSize = [cacheSize, [344612; 344612; 360603]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [2507; 8276; 496684]];

%Turn: 52
movesGenerated = [movesGenerated, [3032; 26070; 432549]];
searchTime = [searchTime, [2; 96; 505]];
evaluations = [evaluations, [113; 8359; 24760]];
cacheRetrievals = [cacheRetrievals, [18; 7641; 1014]];
cacheSize = [cacheSize, [360603; 361321; 361321]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [2841; 17021; 395828]];

%Turn: 53
movesGenerated = [movesGenerated, [3052; 11887; 263968]];
searchTime = [searchTime, [1; 113; 206]];
evaluations = [evaluations, [112; 4427; 14174]];
cacheRetrievals = [cacheRetrievals, [112; 861; 11313]];
cacheSize = [cacheSize, [361321; 361321; 364178]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [2868; 7129; 242962]];

%Turn: 54
movesGenerated = [movesGenerated, [2700; 14701; 259851]];
searchTime = [searchTime, [4; 75; 361]];
evaluations = [evaluations, [329; 4707; 17650]];
cacheRetrievals = [cacheRetrievals, [90; 4704; 544]];
cacheSize = [cacheSize, [364178; 364181; 364181]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [2291; 9565; 234272]];

%Turn: 55
movesGenerated = [movesGenerated, [2324; 12860; 207846]];
searchTime = [searchTime, [1; 113; 213]];
evaluations = [evaluations, [170; 4000; 11607]];
cacheRetrievals = [cacheRetrievals, [170; 246; 6404]];
cacheSize = [cacheSize, [364181; 364181; 369384]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [2088; 8462; 190758]];

%Turn: 56
movesGenerated = [movesGenerated, [2864; 19887; 463236]];
searchTime = [searchTime, [3; 82; 690]];
evaluations = [evaluations, [208; 5827; 37398]];
cacheRetrievals = [cacheRetrievals, [38; 5593; 705]];
cacheSize = [cacheSize, [369384; 369618; 369618]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [2578; 13522; 412620]];

%Turn: 57
movesGenerated = [movesGenerated, [2482; 19864; 688553]];
searchTime = [searchTime, [1; 152; 908]];
evaluations = [evaluations, [173; 6789; 125827]];
cacheRetrievals = [cacheRetrievals, [163; 251; 97078]];
cacheSize = [cacheSize, [369628; 369628; 398292]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [2241; 12480; 542903]];

%Turn: 58
movesGenerated = [movesGenerated, [2164; 12865; 163384]];
searchTime = [searchTime, [2; 81; 258]];
evaluations = [evaluations, [118; 4704; 11990]];
cacheRetrievals = [cacheRetrievals, [40; 4349; 427]];
cacheSize = [cacheSize, [398292; 398647; 398647]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1978; 7761; 146033]];

%Turn: 59
movesGenerated = [movesGenerated, [2142; 15529; 494533]];
searchTime = [searchTime, [1; 135; 571]];
evaluations = [evaluations, [249; 5620; 69221]];
cacheRetrievals = [cacheRetrievals, [249; 296; 53320]];
cacheSize = [cacheSize, [398647; 398647; 414428]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1835; 9393; 409981]];

%Turn: 60
movesGenerated = [movesGenerated, [1872; 14129; 464074]];
searchTime = [searchTime, [5; 88; 1049]];
evaluations = [evaluations, [388; 6750; 68707]];
cacheRetrievals = [cacheRetrievals, [74; 5930; 5784]];
cacheSize = [cacheSize, [414428; 415248; 415248]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1412; 6930; 378283]];

%Turn: 61
movesGenerated = [movesGenerated, [1182; 3667; 52084]];
searchTime = [searchTime, [1; 77; 103]];
evaluations = [evaluations, [66; 1380; 3513]];
cacheRetrievals = [cacheRetrievals, [44; 165; 2198]];
cacheSize = [cacheSize, [415264; 415264; 416425]];
cacheClears = [cacheClears, [0; 0; 0]];
cutoffs = [cutoffs, [1074; 2149; 46854]];

%Turn: 62
