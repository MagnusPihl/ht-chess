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
DEFAULT_PLY = 5
MAX_SEARCH_TIME = 29500

%variables
cacheSize = [];
cacheClears = [];
cacheRetrievals = [];
evaluations = [];
movesGenerated = [];
searchTime = [];
cutoffs = [];
movesGenerated = [movesGenerated, [840; 8499; 190930; 600720]];
searchTime = [searchTime, [6; 91; 912; 1303]];
evaluations = [evaluations, [297; 5646; 55282; 201859]];
cacheRetrievals = [cacheRetrievals, [0; 4183; 2596; 159339]];
cacheSize = [cacheSize, [0; 1463; 1463; 43983]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [503; 2499; 126807; 377083]];

%Turn: 1
movesGenerated = [movesGenerated, [1238; 10211; 361821; 1500932]];
searchTime = [searchTime, [1; 120; 752; 5871]];
evaluations = [evaluations, [330; 4102; 115936; 344369]];
cacheRetrievals = [cacheRetrievals, [330; 431; 102309; 14463]];
cacheSize = [cacheSize, [43983; 43983; 57610; 57610]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [868; 5707; 234392; 1104489]];

%Turn: 2
movesGenerated = [movesGenerated, [1852; 9105; 714731; 2834624]];
searchTime = [searchTime, [5; 81; 2536; 4130]];
evaluations = [evaluations, [338; 4595; 140070; 680469]];
cacheRetrievals = [cacheRetrievals, [74; 3962; 4209; 571278]];
cacheSize = [cacheSize, [57610; 58243; 58243; 167407]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1454; 4240; 552254; 2076534]];

%Turn: 3
movesGenerated = [movesGenerated, [2540; 22923; 982023; 3813099]];
searchTime = [searchTime, [4; 144; 849; 12486]];
evaluations = [evaluations, [315; 7304; 134892; 687119]];
cacheRetrievals = [cacheRetrievals, [197; 3036; 122253; 35047]];
cacheSize = [cacheSize, [167525; 167525; 180144; 180144]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2167; 14901; 823458; 3011224]];

%Turn: 4
movesGenerated = [movesGenerated, [2900; 30333; 1657114; 3748384]];
searchTime = [searchTime, [5; 135; 3949; 5840]];
evaluations = [evaluations, [296; 14624; 196892; 1258465]];
cacheRetrievals = [cacheRetrievals, [81; 12402; 10959; 1135530]];
cacheSize = [cacheSize, [180144; 182366; 182366; 305266]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2516; 14964; 1410490; 2393296]];

%Turn: 5
movesGenerated = [movesGenerated, [3002; 29576; 525430; 4223493]];
searchTime = [searchTime, [1; 174; 344; 14161]];
evaluations = [evaluations, [397; 7200; 49124; 740532]];
cacheRetrievals = [cacheRetrievals, [397; 1597; 47997; 38155]];
cacheSize = [cacheSize, [305266; 305266; 306393; 306393]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2541; 21513; 464275; 3362527]];

%Turn: 6
movesGenerated = [movesGenerated, [3836; 32726; 1016766; 10577960]];
searchTime = [searchTime, [6; 125; 1742; 13666]];
evaluations = [evaluations, [286; 14661; 74648; 2527862]];
cacheRetrievals = [cacheRetrievals, [45; 13231; 2245; 2250951]];
cacheSize = [cacheSize, [306393; 307823; 307823; 584274]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3456; 17311; 916133; 7799156]];

%Turn: 7
movesGenerated = [movesGenerated, [3664; 34753; 755109; 4581478]];
searchTime = [searchTime, [5; 255; 487; 19635]];
evaluations = [evaluations, [363; 10878; 65699; 1054705]];
cacheRetrievals = [cacheRetrievals, [185; 728; 62701; 65377]];
cacheSize = [cacheSize, [584452; 584452; 587418; 587418]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3221; 23006; 672493; 3411742]];

%Turn: 8
movesGenerated = [movesGenerated, [3550; 26227; 839973; 5491832]];
searchTime = [searchTime, [8; 125; 1211; 7581]];
evaluations = [evaluations, [392; 11317; 48226; 1374232]];
cacheRetrievals = [cacheRetrievals, [46; 10005; 219; 1225722]];
cacheSize = [cacheSize, [587418; 588730; 588730; 734264]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3068; 14252; 770269; 3973630]];

%Turn: 9
movesGenerated = [movesGenerated, [3326; 35378; 644601; 5407994]];
searchTime = [searchTime, [2; 242; 432; 23105]];
evaluations = [evaluations, [327; 10679; 54554; 1212465]];
cacheRetrievals = [cacheRetrievals, [327; 1781; 51997; 62173]];
cacheSize = [cacheSize, [734264; 734264; 736789; 736789]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2921; 23804; 574797; 4058371]];

%Turn: 10
movesGenerated = [movesGenerated, [3494; 25384; 485224; 2762727]];
searchTime = [searchTime, [8; 106; 681; 4413]];
evaluations = [evaluations, [402; 9598; 25353; 826966]];
cacheRetrievals = [cacheRetrievals, [87; 8593; 454; 742862]];
cacheSize = [cacheSize, [736789; 737794; 737794; 820806]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3008; 15117; 447604; 1861867]];

%Turn: 11
movesGenerated = [movesGenerated, [2856; 24416; 626066; 3521577]];
searchTime = [searchTime, [2; 227; 410; 17464]];
evaluations = [evaluations, [255; 10344; 44251; 989207]];
cacheRetrievals = [cacheRetrievals, [255; 1556; 42810; 90089]];
cacheSize = [cacheSize, [820806; 820806; 822215; 822215]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2519; 13441; 564365; 2440686]];

%Turn: 12
movesGenerated = [movesGenerated, [2758; 88982; 409768; 12377356]];
searchTime = [searchTime, [7; 138; 744; 13572]];
evaluations = [evaluations, [333; 13592; 30023; 1948297]];
cacheRetrievals = [cacheRetrievals, [41; 12696; 268; 1690979]];
cacheSize = [cacheSize, [822215; 823111; 823111; 1080068]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2357; 72834; 368816; 10090197]];

%Turn: 13
movesGenerated = [movesGenerated, [3090; 34371; 755291; 5148069]];
searchTime = [searchTime, [2; 258; 491; 25192]];
evaluations = [evaluations, [319; 15022; 50026; 1373460]];
cacheRetrievals = [cacheRetrievals, [319; 5409; 46556; 122994]];
cacheSize = [cacheSize, [1080068; 1080068; 1083490; 1083490]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2691; 18462; 686082; 3643115]];

%Turn: 14
movesGenerated = [movesGenerated, [3154; 61726; 320258; 1806014]];
searchTime = [searchTime, [6; 141; 461; 2932]];
evaluations = [evaluations, [293; 11845; 16107; 397895]];
cacheRetrievals = [cacheRetrievals, [74; 10048; 562; 320852]];
cacheSize = [cacheSize, [1083490; 1085284; 1085284; 1160201]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2785; 48298; 296012; 1362142]];

%Turn: 15
movesGenerated = [movesGenerated, [3328; 30294; 384757; 2431091]];
searchTime = [searchTime, [2; 216; 268; 11825]];
evaluations = [evaluations, [367; 8185; 17628; 633990]];
cacheRetrievals = [cacheRetrievals, [357; 839; 15429; 46783]];
cacheSize = [cacheSize, [1160211; 1160211; 1162358; 1162358]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2881; 21353; 358021; 1736619]];

%Turn: 16
movesGenerated = [movesGenerated, [3364; 15457; 331196; 1525655]];
searchTime = [searchTime, [11; 102; 519; 2118]];
evaluations = [evaluations, [476; 6246; 20621; 354752]];
cacheRetrievals = [cacheRetrievals, [3; 4861; 161; 308196]];
cacheSize = [cacheSize, [1162358; 1163743; 1163743; 1205891]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2810; 8841; 302444; 1133894]];

%Turn: 17
movesGenerated = [movesGenerated, [3786; 15356; 354029; 2866836]];
searchTime = [searchTime, [1; 155; 230; 14030]];
evaluations = [evaluations, [169; 5607; 12945; 761836]];
cacheRetrievals = [cacheRetrievals, [169; 639; 11043; 35056]];
cacheSize = [cacheSize, [1205891; 1205891; 1207730; 1207730]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3537; 9379; 333628; 2033383]];

%Turn: 18
movesGenerated = [movesGenerated, [3804; 9878; 183239; 567810]];
searchTime = [searchTime, [4; 70; 352; 1095]];
evaluations = [evaluations, [192; 2807; 13963; 185450]];
cacheRetrievals = [cacheRetrievals, [44; 2684; 226; 157440]];
cacheSize = [cacheSize, [1207730; 1207733; 1207733; 1234841]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3518; 6837; 164522; 368946]];

%Turn: 19
movesGenerated = [movesGenerated, [3286; 14177; 259651; 1991342]];
searchTime = [searchTime, [2; 132; 151; 9641]];
evaluations = [evaluations, [163; 4170; 9378; 525403]];
cacheRetrievals = [cacheRetrievals, [163; 274; 9306; 18091]];
cacheSize = [cacheSize, [1234841; 1234841; 1234889; 1234889]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3059; 9616; 245127; 1409503]];

%Turn: 20
movesGenerated = [movesGenerated, [2706; 9310; 202721; 510000]];
searchTime = [searchTime, [2; 73; 254; 1100]];
evaluations = [evaluations, [99; 4453; 7131; 231280]];
cacheRetrievals = [cacheRetrievals, [72; 4453; 23; 206415]];
cacheSize = [cacheSize, [1234889; 1234889; 1234889; 1259423]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2527; 4592; 189140; 263216]];

%Turn: 21
movesGenerated = [movesGenerated, [1752; 9918; 194188; 1141412]];
searchTime = [searchTime, [0; 89; 224; 3701]];
evaluations = [evaluations, [79; 1876; 45873; 207678]];
cacheRetrievals = [cacheRetrievals, [79; 255; 45868; 5476]];
cacheSize = [cacheSize, [1259423; 1259423; 1259423; 1259423]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1633; 7646; 143087; 888490]];

%Turn: 22
movesGenerated = [movesGenerated, [1600; 10142; 169794; 817910]];
searchTime = [searchTime, [2; 74; 355; 1699]];
evaluations = [evaluations, [162; 5092; 13467; 345415]];
cacheRetrievals = [cacheRetrievals, [99; 5089; 394; 304107]];
cacheSize = [cacheSize, [1259423; 1259423; 1259423; 1300450]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1360; 4725; 148145; 445993]];

%Turn: 23
movesGenerated = [movesGenerated, [1368; 8521; 273436; 838795]];
searchTime = [searchTime, [1; 100; 269; 2866]];
evaluations = [evaluations, [251; 2663; 48817; 165933]];
cacheRetrievals = [cacheRetrievals, [251; 357; 47944; 6918]];
cacheSize = [cacheSize, [1300450; 1300450; 1301319; 1301319]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1081; 5478; 217294; 638715]];

%Turn: 24
movesGenerated = [movesGenerated, [1736; 15491; 516670; 5420846]];
searchTime = [searchTime, [3; 85; 1462; 7127]];
evaluations = [evaluations, [182; 6943; 75735; 1237758]];
cacheRetrievals = [cacheRetrievals, [47; 6538; 2030; 1089451]];
cacheSize = [cacheSize, [1301319; 1301724; 1301724; 1445902]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1480; 8109; 419445; 4032255]];

%Turn: 25
movesGenerated = [movesGenerated, [1802; 12458; 209343; 1117531]];
searchTime = [searchTime, [1; 122; 211; 4016]];
evaluations = [evaluations, [327; 4730; 24111; 246942]];
cacheRetrievals = [cacheRetrievals, [326; 1010; 22449; 10320]];
cacheSize = [cacheSize, [1445903; 1445903; 1447549; 1447549]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1427; 7255; 179520; 828936]];

%Turn: 26
movesGenerated = [movesGenerated, [1980; 8989; 218695; 894369]];
searchTime = [searchTime, [3; 75; 386; 1556]];
evaluations = [evaluations, [160; 4978; 15606; 275156]];
cacheRetrievals = [cacheRetrievals, [50; 4838; 347; 236389]];
cacheSize = [cacheSize, [1447549; 1447689; 1447689; 1485418]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1746; 3722; 195359; 592744]];

%Turn: 27
movesGenerated = [movesGenerated, [2240; 13705; 379363; 1768208]];
searchTime = [searchTime, [2; 141; 281; 7712]];
evaluations = [evaluations, [278; 5406; 34208; 472047]];
cacheRetrievals = [cacheRetrievals, [230; 550; 33287; 29986]];
cacheSize = [cacheSize, [1485466; 1485466; 1486372; 1486372]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1902; 7862; 335081; 1239796]];

%Turn: 28
movesGenerated = [movesGenerated, [2614; 20495; 689606; 2223583]];
searchTime = [searchTime, [3; 107; 1296; 3701]];
evaluations = [evaluations, [214; 7084; 66993; 601341]];
cacheRetrievals = [cacheRetrievals, [62; 5579; 7482; 503294]];
cacheSize = [cacheSize, [1486372; 1487871; 1487871; 1584003]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2326; 12856; 602037; 1561582]];

%Turn: 29
movesGenerated = [movesGenerated, [2962; 20256; 858367; 7614852]];
searchTime = [searchTime, [2; 163; 828; 26459]];
evaluations = [evaluations, [239; 6299; 141043; 1468944]];
cacheRetrievals = [cacheRetrievals, [239; 639; 131330; 56144]];
cacheSize = [cacheSize, [1584003; 1584003; 1593570; 1593570]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2653; 13371; 696062; 5912355]];

%Turn: 30
movesGenerated = [movesGenerated, [3062; 23265; 712489; 4660960]];
searchTime = [searchTime, [4; 90; 1290; 6903]];
evaluations = [evaluations, [298; 8643; 58681; 1162262]];
cacheRetrievals = [cacheRetrievals, [120; 8575; 3601; 1011117]];
cacheSize = [cacheSize, [1593570; 1593632; 1593632; 1741981]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2680; 14037; 632740; 3377783]];

%Turn: 31
movesGenerated = [movesGenerated, [3160; 16622; 450568; 2339650]];
searchTime = [searchTime, [1; 120; 322; 8249]];
evaluations = [evaluations, [254; 5553; 33222; 457272]];
cacheRetrievals = [cacheRetrievals, [254; 2865; 31666; 32408]];
cacheSize = [cacheSize, [1741981; 1741981; 1743409; 1743409]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2834; 10576; 406645; 1809152]];

%Turn: 32
movesGenerated = [movesGenerated, [2722; 47628; 752956; 5240140]];
searchTime = [searchTime, [3; 121; 1280; 7777]];
evaluations = [evaluations, [270; 11820; 58436; 1399053]];
cacheRetrievals = [cacheRetrievals, [117; 11018; 8183; 1250798]];
cacheSize = [cacheSize, [1743409; 1744205; 1744205; 1890421]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2366; 34617; 670377; 3702750]];

%Turn: 33
movesGenerated = [movesGenerated, [2658; 21247; 551366; 1771207]];
searchTime = [searchTime, [2; 152; 499; 5906]];
evaluations = [evaluations, [240; 5942; 63327; 307698]];
cacheRetrievals = [cacheRetrievals, [240; 1516; 58003; 18167]];
cacheSize = [cacheSize, [1890421; 1890421; 1895713; 1895713]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2358; 14629; 474765; 1407107]];

%Turn: 34
movesGenerated = [movesGenerated, [2706; 12660; 232629; 930151]];
searchTime = [searchTime, [3; 81; 341; 1858]];
evaluations = [evaluations, [175; 5424; 10183; 385865]];
cacheRetrievals = [cacheRetrievals, [100; 5389; 73; 351618]];
cacheSize = [cacheSize, [1895713; 1895748; 1895748; 1929854]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2445; 6891; 214739; 518388]];

%Turn: 35
movesGenerated = [movesGenerated, [2832; 8630; 202277; 549833]];
searchTime = [searchTime, [1; 116; 158; 2701]];
evaluations = [evaluations, [102; 2972; 7712; 148429]];
cacheRetrievals = [cacheRetrievals, [102; 291; 7614; 13050]];
cacheSize = [cacheSize, [1929854; 1929854; 1929936; 1929936]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2670; 5422; 190290; 386078]];

%Turn: 36
movesGenerated = [movesGenerated, [3128; 16943; 499191; 1976508]];
searchTime = [searchTime, [5; 94; 668; 3427]];
evaluations = [evaluations, [156; 10641; 23616; 765711]];
cacheRetrievals = [cacheRetrievals, [94; 10641; 99; 711004]];
cacheSize = [cacheSize, [1929936; 1929936; 1929936; 1984600]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2886; 5867; 461325; 1159059]];

%Turn: 37
movesGenerated = [movesGenerated, [2962; 18481; 516711; 1644002]];
searchTime = [searchTime, [4; 144; 351; 5477]];
evaluations = [evaluations, [287; 4644; 44132; 295697]];
cacheRetrievals = [cacheRetrievals, [287; 609; 44110; 22307]];
cacheSize = [cacheSize, [1984600; 1984600; 1984600; 1984600]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2607; 13265; 460156; 1298795]];

%Turn: 38
movesGenerated = [movesGenerated, [3198; 65877; 778975; 9142194]];
searchTime = [searchTime, [4; 171; 1356; 12127]];
evaluations = [evaluations, [117; 17176; 55432; 2119423]];
cacheRetrievals = [cacheRetrievals, [2; 14774; 2290; 1902745]];
cacheSize = [cacheSize, [1984600; 1986996; 1986996; 2202540]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2995; 47065; 700483; 6784647]];

%Turn: 39
movesGenerated = [movesGenerated, [3140; 18044; 539091; 1796053]];
searchTime = [searchTime, [2; 147; 380; 6195]];
evaluations = [evaluations, [290; 4899; 43556; 330485]];
cacheRetrievals = [cacheRetrievals, [290; 728; 42753; 29644]];
cacheSize = [cacheSize, [2202540; 2202540; 2203327; 2203327]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2778; 12619; 482616; 1411288]];

%Turn: 40
movesGenerated = [movesGenerated, [3462; 24154; 567044; 2503761]];
searchTime = [searchTime, [4; 141; 846; 4413]];
evaluations = [evaluations, [121; 11250; 31602; 852696]];
cacheRetrievals = [cacheRetrievals, [7; 9007; 2602; 771767]];
cacheSize = [cacheSize, [2203327; 2205564; 2205564; 2285837]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3255; 12295; 520512; 1586858]];

%Turn: 41
movesGenerated = [movesGenerated, [3312; 13621; 1100839; 1878552]];
searchTime = [searchTime, [2; 135; 871; 8468]];
evaluations = [evaluations, [293; 4090; 100507; 451264]];
cacheRetrievals = [cacheRetrievals, [293; 616; 100389; 32281]];
cacheSize = [cacheSize, [2285837; 2285837; 2285851; 2285851]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2943; 9167; 973310; 1372995]];

%Turn: 42
movesGenerated = [movesGenerated, [3566; 27932; 1032523; 11885504]];
searchTime = [searchTime, [5; 163; 2160; 15767]];
evaluations = [evaluations, [215; 15710; 92810; 2696546]];
cacheRetrievals = [cacheRetrievals, [12; 13183; 1474; 2427727]];
cacheSize = [cacheSize, [2285851; 2288369; 2288369; 2554597]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3263; 11551; 913540; 8890159]];

%Turn: 43
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [3; 159; 970; 11277]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [287; 610; 133740; 32065]];
cacheSize = [cacheSize, [2554621; 2554621; 2559995; 2559995]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 44
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [8; 154; 688; 3607]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [18; 10565; 878; 718190]];
cacheSize = [cacheSize, [2559995; 2562474; 2562474; 2614486]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 45
movesGenerated = [movesGenerated, [3268; 13531; 302686; 988723]];
searchTime = [searchTime, [3; 142; 227; 4060]];
evaluations = [evaluations, [278; 4019; 16889; 212509]];
cacheRetrievals = [cacheRetrievals, [205; 314; 16579; 15584]];
cacheSize = [cacheSize, [2614559; 2614559; 2614853; 2614853]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 749639]];

%Turn: 46
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [4; 141; 1128; 8444]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [86; 13901; 10467; 1518528]];
cacheSize = [cacheSize, [2614853; 2616258; 2616258; 2739715]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 47
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [2; 158; 882; 11267]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2739715; 2739715; 2739720; 2739720]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 48
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [6; 107; 472; 2722]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2739720; 2739720; 2739720; 2739730]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 49
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [1; 144; 228; 4087]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2739730; 2739730; 2739730; 2739730]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 50
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [4; 114; 976; 6216]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2739730; 2739730; 2739730; 2739763]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 51
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [2; 158; 888; 11371]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2739763; 2739763; 2739768; 2739768]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 52
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [5; 108; 476; 2725]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2739768; 2739768; 2739768; 2739778]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 53
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [2; 144; 225; 4072]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2739778; 2739778; 2739778; 2739778]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 54
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [4; 112; 977; 6266]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2739778; 2739778; 2739778; 2739811]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 55
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [2; 160; 902; 11552]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2739811; 2739811; 2739816; 2739816]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 56
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [6; 110; 476; 2805]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2739816; 2739816; 2739816; 2739826]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 57
