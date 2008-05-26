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
searchTime = [searchTime, [5; 96; 928; 1324]];
evaluations = [evaluations, [297; 5646; 55282; 201859]];
cacheRetrievals = [cacheRetrievals, [0; 4183; 2596; 159339]];
cacheSize = [cacheSize, [0; 1463; 1463; 43983]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [503; 2499; 126807; 377083]];

%Turn: 1
movesGenerated = [movesGenerated, [1238; 10211; 361821; 1500932]];
searchTime = [searchTime, [1; 123; 627; 5953]];
evaluations = [evaluations, [330; 4102; 115936; 344369]];
cacheRetrievals = [cacheRetrievals, [330; 431; 102309; 14463]];
cacheSize = [cacheSize, [43983; 43983; 57610; 57610]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [868; 5707; 234392; 1104489]];

%Turn: 2
movesGenerated = [movesGenerated, [1852; 9105; 714731; 2834624]];
searchTime = [searchTime, [5; 83; 2573; 4212]];
evaluations = [evaluations, [338; 4595; 140070; 680469]];
cacheRetrievals = [cacheRetrievals, [74; 3962; 4209; 571278]];
cacheSize = [cacheSize, [57610; 58243; 58243; 167407]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1454; 4240; 552254; 2076534]];

%Turn: 3
movesGenerated = [movesGenerated, [2540; 22923; 982023; 3813099]];
searchTime = [searchTime, [4; 148; 870; 12762]];
evaluations = [evaluations, [315; 7304; 134892; 687119]];
cacheRetrievals = [cacheRetrievals, [197; 3036; 122253; 35047]];
cacheSize = [cacheSize, [167525; 167525; 180144; 180144]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2167; 14901; 823458; 3011224]];

%Turn: 4
movesGenerated = [movesGenerated, [2900; 30333; 1657114; 3748384]];
searchTime = [searchTime, [6; 138; 3994; 6108]];
evaluations = [evaluations, [296; 14624; 196892; 1258465]];
cacheRetrievals = [cacheRetrievals, [81; 12402; 10959; 1135530]];
cacheSize = [cacheSize, [180144; 182366; 182366; 305266]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2516; 14964; 1410490; 2393296]];

%Turn: 5
movesGenerated = [movesGenerated, [3002; 29576; 525430; 4223493]];
searchTime = [searchTime, [2; 177; 357; 14459]];
evaluations = [evaluations, [397; 7200; 49124; 740532]];
cacheRetrievals = [cacheRetrievals, [397; 1597; 47997; 38155]];
cacheSize = [cacheSize, [305266; 305266; 306393; 306393]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2541; 21513; 464275; 3362527]];

%Turn: 6
movesGenerated = [movesGenerated, [3836; 32726; 1016766; 10577960]];
searchTime = [searchTime, [7; 127; 1818; 13859]];
evaluations = [evaluations, [286; 14661; 74648; 2527862]];
cacheRetrievals = [cacheRetrievals, [45; 13231; 2245; 2250951]];
cacheSize = [cacheSize, [306393; 307823; 307823; 584274]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3456; 17311; 916133; 7799156]];

%Turn: 7
movesGenerated = [movesGenerated, [3664; 34753; 755109; 4581478]];
searchTime = [searchTime, [5; 261; 498; 19881]];
evaluations = [evaluations, [363; 10878; 65699; 1054705]];
cacheRetrievals = [cacheRetrievals, [185; 728; 62701; 65377]];
cacheSize = [cacheSize, [584452; 584452; 587418; 587418]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3221; 23006; 672493; 3411742]];

%Turn: 8
movesGenerated = [movesGenerated, [3550; 26227; 839973; 5491832]];
searchTime = [searchTime, [7; 120; 1216; 7632]];
evaluations = [evaluations, [392; 11317; 48226; 1374232]];
cacheRetrievals = [cacheRetrievals, [46; 10005; 219; 1225722]];
cacheSize = [cacheSize, [587418; 588730; 588730; 734264]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3068; 14252; 770269; 3973630]];

%Turn: 9
movesGenerated = [movesGenerated, [3326; 35378; 644601; 5407994]];
searchTime = [searchTime, [2; 243; 441; 23425]];
evaluations = [evaluations, [327; 10679; 54554; 1212465]];
cacheRetrievals = [cacheRetrievals, [327; 1781; 51997; 62173]];
cacheSize = [cacheSize, [734264; 734264; 736789; 736789]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2921; 23804; 574797; 4058371]];

%Turn: 10
movesGenerated = [movesGenerated, [3494; 25384; 485224; 2762727]];
searchTime = [searchTime, [8; 109; 742; 4354]];
evaluations = [evaluations, [402; 9598; 25353; 826966]];
cacheRetrievals = [cacheRetrievals, [87; 8593; 454; 742862]];
cacheSize = [cacheSize, [736789; 737794; 737794; 820806]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3008; 15117; 447604; 1861867]];

%Turn: 11
movesGenerated = [movesGenerated, [2856; 24416; 626066; 3521577]];
searchTime = [searchTime, [2; 234; 418; 17736]];
evaluations = [evaluations, [255; 10344; 44251; 989207]];
cacheRetrievals = [cacheRetrievals, [255; 1556; 42810; 90089]];
cacheSize = [cacheSize, [820806; 820806; 822215; 822215]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2519; 13441; 564365; 2440686]];

%Turn: 12
movesGenerated = [movesGenerated, [2758; 88982; 409768; 12377356]];
searchTime = [searchTime, [6; 143; 759; 13782]];
evaluations = [evaluations, [333; 13592; 30023; 1948297]];
cacheRetrievals = [cacheRetrievals, [41; 12696; 268; 1690979]];
cacheSize = [cacheSize, [822215; 823111; 823111; 1080068]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2357; 72834; 368816; 10090197]];

%Turn: 13
movesGenerated = [movesGenerated, [3090; 34371; 755291; 5148069]];
searchTime = [searchTime, [2; 269; 508; 27295]];
evaluations = [evaluations, [319; 15022; 50026; 1373460]];
cacheRetrievals = [cacheRetrievals, [319; 5409; 46556; 122994]];
cacheSize = [cacheSize, [1080068; 1080068; 1083490; 1083490]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2691; 18462; 686082; 3643115]];

%Turn: 14
movesGenerated = [movesGenerated, [3154; 61726; 320258; 1806014]];
searchTime = [searchTime, [5; 149; 507; 3203]];
evaluations = [evaluations, [293; 11845; 16107; 397895]];
cacheRetrievals = [cacheRetrievals, [74; 10048; 562; 320852]];
cacheSize = [cacheSize, [1083490; 1085284; 1085284; 1160201]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2785; 48298; 296012; 1362142]];

%Turn: 15
movesGenerated = [movesGenerated, [3328; 30294; 384757; 2431091]];
searchTime = [searchTime, [2; 228; 294; 13376]];
evaluations = [evaluations, [367; 8185; 17628; 633990]];
cacheRetrievals = [cacheRetrievals, [357; 839; 15429; 46783]];
cacheSize = [cacheSize, [1160211; 1160211; 1162358; 1162358]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2881; 21353; 358021; 1736619]];

%Turn: 16
movesGenerated = [movesGenerated, [3364; 15457; 331196; 1525655]];
searchTime = [searchTime, [10; 110; 583; 2469]];
evaluations = [evaluations, [476; 6246; 20621; 354752]];
cacheRetrievals = [cacheRetrievals, [3; 4861; 161; 308196]];
cacheSize = [cacheSize, [1162358; 1163743; 1163743; 1205891]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2810; 8841; 302444; 1133894]];

%Turn: 17
movesGenerated = [movesGenerated, [3786; 15356; 354029; 2866836]];
searchTime = [searchTime, [2; 169; 258; 15803]];
evaluations = [evaluations, [169; 5607; 12945; 761836]];
cacheRetrievals = [cacheRetrievals, [169; 639; 11043; 35056]];
cacheSize = [cacheSize, [1205891; 1205891; 1207730; 1207730]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3537; 9379; 333628; 2033383]];

%Turn: 18
movesGenerated = [movesGenerated, [3804; 9878; 183239; 567810]];
searchTime = [searchTime, [3; 73; 394; 1217]];
evaluations = [evaluations, [192; 2807; 13963; 185450]];
cacheRetrievals = [cacheRetrievals, [44; 2684; 226; 157440]];
cacheSize = [cacheSize, [1207730; 1207733; 1207733; 1234841]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3518; 6837; 164522; 368946]];

%Turn: 19
movesGenerated = [movesGenerated, [3286; 14177; 259651; 1991342]];
searchTime = [searchTime, [2; 144; 167; 10657]];
evaluations = [evaluations, [163; 4170; 9378; 525403]];
cacheRetrievals = [cacheRetrievals, [163; 274; 9306; 18091]];
cacheSize = [cacheSize, [1234841; 1234841; 1234889; 1234889]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3059; 9616; 245127; 1409503]];

%Turn: 20
movesGenerated = [movesGenerated, [2706; 9310; 202721; 510000]];
searchTime = [searchTime, [3; 77; 278; 1204]];
evaluations = [evaluations, [99; 4453; 7131; 231280]];
cacheRetrievals = [cacheRetrievals, [72; 4453; 23; 206415]];
cacheSize = [cacheSize, [1234889; 1234889; 1234889; 1259423]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2527; 4592; 189140; 263216]];

%Turn: 21
movesGenerated = [movesGenerated, [1752; 9918; 194188; 1141412]];
searchTime = [searchTime, [1; 95; 246; 4071]];
evaluations = [evaluations, [79; 1876; 45873; 207678]];
cacheRetrievals = [cacheRetrievals, [79; 255; 45868; 5476]];
cacheSize = [cacheSize, [1259423; 1259423; 1259423; 1259423]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1633; 7646; 143087; 888490]];

%Turn: 22
movesGenerated = [movesGenerated, [1600; 10142; 169794; 817910]];
searchTime = [searchTime, [2; 78; 381; 1837]];
evaluations = [evaluations, [162; 5092; 13467; 345415]];
cacheRetrievals = [cacheRetrievals, [99; 5089; 394; 304107]];
cacheSize = [cacheSize, [1259423; 1259423; 1259423; 1300450]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1360; 4725; 148145; 445993]];

%Turn: 23
movesGenerated = [movesGenerated, [1368; 8521; 273436; 838795]];
searchTime = [searchTime, [1; 106; 295; 3081]];
evaluations = [evaluations, [251; 2663; 48817; 165933]];
cacheRetrievals = [cacheRetrievals, [251; 357; 47944; 6918]];
cacheSize = [cacheSize, [1300450; 1300450; 1301319; 1301319]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1081; 5478; 217294; 638715]];

%Turn: 24
movesGenerated = [movesGenerated, [1736; 15491; 516670; 5420846]];
searchTime = [searchTime, [3; 92; 1559; 7405]];
evaluations = [evaluations, [182; 6943; 75735; 1237758]];
cacheRetrievals = [cacheRetrievals, [47; 6538; 2030; 1089451]];
cacheSize = [cacheSize, [1301319; 1301724; 1301724; 1445902]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1480; 8109; 419445; 4032255]];

%Turn: 25
movesGenerated = [movesGenerated, [1802; 12458; 209343; 1117531]];
searchTime = [searchTime, [1; 129; 223; 4254]];
evaluations = [evaluations, [327; 4730; 24111; 246942]];
cacheRetrievals = [cacheRetrievals, [326; 1010; 22449; 10320]];
cacheSize = [cacheSize, [1445903; 1445903; 1447549; 1447549]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1427; 7255; 179520; 828936]];

%Turn: 26
movesGenerated = [movesGenerated, [1980; 8989; 218695; 894369]];
searchTime = [searchTime, [2; 80; 436; 1656]];
evaluations = [evaluations, [160; 4978; 15606; 275156]];
cacheRetrievals = [cacheRetrievals, [50; 4838; 347; 236389]];
cacheSize = [cacheSize, [1447549; 1447689; 1447689; 1485418]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1746; 3722; 195359; 592744]];

%Turn: 27
movesGenerated = [movesGenerated, [2240; 13705; 379363; 1768208]];
searchTime = [searchTime, [2; 152; 303; 8328]];
evaluations = [evaluations, [278; 5406; 34208; 472047]];
cacheRetrievals = [cacheRetrievals, [230; 550; 33287; 29986]];
cacheSize = [cacheSize, [1485466; 1485466; 1486372; 1486372]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1902; 7862; 335081; 1239796]];

%Turn: 28
movesGenerated = [movesGenerated, [2614; 20495; 689606; 2223583]];
searchTime = [searchTime, [4; 112; 1376; 3893]];
evaluations = [evaluations, [214; 7084; 66993; 601341]];
cacheRetrievals = [cacheRetrievals, [62; 5579; 7482; 503294]];
cacheSize = [cacheSize, [1486372; 1487871; 1487871; 1584003]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2326; 12856; 602037; 1561582]];

%Turn: 29
movesGenerated = [movesGenerated, [2962; 20256; 858367; 7614852]];
searchTime = [searchTime, [2; 171; 881; 27386]];
evaluations = [evaluations, [239; 6299; 141043; 1468944]];
cacheRetrievals = [cacheRetrievals, [239; 639; 131330; 56144]];
cacheSize = [cacheSize, [1584003; 1584003; 1593570; 1593570]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2653; 13371; 696062; 5912355]];

%Turn: 30
movesGenerated = [movesGenerated, [3062; 23265; 712489; 4660960]];
searchTime = [searchTime, [4; 92; 1327; 7146]];
evaluations = [evaluations, [298; 8643; 58681; 1162262]];
cacheRetrievals = [cacheRetrievals, [120; 8575; 3601; 1011117]];
cacheSize = [cacheSize, [1593570; 1593632; 1593632; 1741981]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2680; 14037; 632740; 3377783]];

%Turn: 31
movesGenerated = [movesGenerated, [3160; 16622; 450568; 2339650]];
searchTime = [searchTime, [1; 126; 331; 8425]];
evaluations = [evaluations, [254; 5553; 33222; 457272]];
cacheRetrievals = [cacheRetrievals, [254; 2865; 31666; 32408]];
cacheSize = [cacheSize, [1741981; 1741981; 1743409; 1743409]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2834; 10576; 406645; 1809152]];

%Turn: 32
movesGenerated = [movesGenerated, [2722; 47628; 752956; 5240140]];
searchTime = [searchTime, [3; 124; 1301; 7840]];
evaluations = [evaluations, [270; 11820; 58436; 1399053]];
cacheRetrievals = [cacheRetrievals, [117; 11018; 8183; 1250798]];
cacheSize = [cacheSize, [1743409; 1744205; 1744205; 1890421]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2366; 34617; 670377; 3702750]];

%Turn: 33
movesGenerated = [movesGenerated, [2658; 21247; 551366; 1771207]];
searchTime = [searchTime, [1; 153; 507; 5965]];
evaluations = [evaluations, [240; 5942; 63327; 307698]];
cacheRetrievals = [cacheRetrievals, [240; 1516; 58003; 18167]];
cacheSize = [cacheSize, [1890421; 1890421; 1895713; 1895713]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2358; 14629; 474765; 1407107]];

%Turn: 34
movesGenerated = [movesGenerated, [2706; 12660; 232629; 930151]];
searchTime = [searchTime, [2; 84; 349; 1936]];
evaluations = [evaluations, [175; 5424; 10183; 385865]];
cacheRetrievals = [cacheRetrievals, [100; 5389; 73; 351618]];
cacheSize = [cacheSize, [1895713; 1895748; 1895748; 1929854]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2445; 6891; 214739; 518388]];

%Turn: 35
movesGenerated = [movesGenerated, [2832; 8630; 202277; 549833]];
searchTime = [searchTime, [1; 118; 162; 2737]];
evaluations = [evaluations, [102; 2972; 7712; 148429]];
cacheRetrievals = [cacheRetrievals, [102; 291; 7614; 13050]];
cacheSize = [cacheSize, [1929854; 1929854; 1929936; 1929936]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2670; 5422; 190290; 386078]];

%Turn: 36
movesGenerated = [movesGenerated, [3128; 16943; 499191; 1976508]];
searchTime = [searchTime, [2; 112; 678; 3486]];
evaluations = [evaluations, [156; 10641; 23616; 765711]];
cacheRetrievals = [cacheRetrievals, [94; 10641; 99; 711004]];
cacheSize = [cacheSize, [1929936; 1929936; 1929936; 1984600]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2886; 5867; 461325; 1159059]];

%Turn: 37
movesGenerated = [movesGenerated, [2962; 18481; 516711; 1644002]];
searchTime = [searchTime, [2; 144; 355; 5554]];
evaluations = [evaluations, [287; 4644; 44132; 295697]];
cacheRetrievals = [cacheRetrievals, [287; 609; 44110; 22307]];
cacheSize = [cacheSize, [1984600; 1984600; 1984600; 1984600]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2607; 13265; 460156; 1298795]];

%Turn: 38
movesGenerated = [movesGenerated, [3198; 65877; 778975; 9142194]];
searchTime = [searchTime, [3; 175; 1353; 12272]];
evaluations = [evaluations, [117; 17176; 55432; 2119423]];
cacheRetrievals = [cacheRetrievals, [2; 14774; 2290; 1902745]];
cacheSize = [cacheSize, [1984600; 1986996; 1986996; 2202540]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2995; 47065; 700483; 6784647]];

%Turn: 39
movesGenerated = [movesGenerated, [3140; 18044; 539091; 1796053]];
searchTime = [searchTime, [2; 151; 387; 6240]];
evaluations = [evaluations, [290; 4899; 43556; 330485]];
cacheRetrievals = [cacheRetrievals, [290; 728; 42753; 29644]];
cacheSize = [cacheSize, [2202540; 2202540; 2203327; 2203327]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2778; 12619; 482616; 1411288]];

%Turn: 40
movesGenerated = [movesGenerated, [3462; 24154; 567044; 2503761]];
searchTime = [searchTime, [3; 143; 840; 4551]];
evaluations = [evaluations, [121; 11250; 31602; 852696]];
cacheRetrievals = [cacheRetrievals, [7; 9007; 2602; 771767]];
cacheSize = [cacheSize, [2203327; 2205564; 2205564; 2285837]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3255; 12295; 520512; 1586858]];

%Turn: 41
movesGenerated = [movesGenerated, [3312; 13621; 1100839; 1878552]];
searchTime = [searchTime, [3; 139; 749; 8726]];
evaluations = [evaluations, [293; 4090; 100507; 451264]];
cacheRetrievals = [cacheRetrievals, [293; 616; 100389; 32281]];
cacheSize = [cacheSize, [2285837; 2285837; 2285851; 2285851]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2943; 9167; 973310; 1372995]];

%Turn: 42
movesGenerated = [movesGenerated, [3566; 27932; 1032523; 11885504]];
searchTime = [searchTime, [5; 159; 2141; 15674]];
evaluations = [evaluations, [215; 15710; 92810; 2696546]];
cacheRetrievals = [cacheRetrievals, [12; 13183; 1474; 2427727]];
cacheSize = [cacheSize, [2285851; 2288369; 2288369; 2554597]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3263; 11551; 913540; 8890159]];

%Turn: 43
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [3; 162; 968; 11339]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [287; 610; 133740; 32065]];
cacheSize = [cacheSize, [2554621; 2554621; 2559995; 2559995]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 44
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [8; 151; 684; 3591]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [18; 10565; 878; 718190]];
cacheSize = [cacheSize, [2559995; 2562474; 2562474; 2614486]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 45
movesGenerated = [movesGenerated, [3268; 13531; 302686; 988723]];
searchTime = [searchTime, [5; 145; 229; 4063]];
evaluations = [evaluations, [278; 4019; 16889; 212509]];
cacheRetrievals = [cacheRetrievals, [205; 314; 16579; 15584]];
cacheSize = [cacheSize, [2614559; 2614559; 2614853; 2614853]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 749639]];

%Turn: 46
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [4; 139; 1126; 8376]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [86; 13901; 10467; 1518528]];
cacheSize = [cacheSize, [2614853; 2616258; 2616258; 2739715]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 47
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [2; 156; 873; 11046]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2739715; 2739715; 2739720; 2739720]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 48
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [5; 106; 466; 2676]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2739720; 2739720; 2739720; 2739730]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 49
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [2; 145; 225; 4060]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2739730; 2739730; 2739730; 2739730]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 50
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [4; 113; 957; 6139]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2739730; 2739730; 2739730; 2739763]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 51
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [3; 157; 878; 11101]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2739763; 2739763; 2739768; 2739768]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 52
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [5; 107; 475; 2694]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2739768; 2739768; 2739768; 2739778]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 53
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [2; 145; 227; 4032]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2739778; 2739778; 2739778; 2739778]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 54
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [3; 113; 969; 6257]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2739778; 2739778; 2739778; 2739811]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 55
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [2; 158; 885; 11395]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2739811; 2739811; 2739816; 2739816]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 56
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [5; 108; 473; 2726]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2739816; 2739816; 2739816; 2739826]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 57
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [1; 147; 228; 4084]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2739826; 2739826; 2739826; 2739826]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 58
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [3; 115; 970; 6226]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2739826; 2739826; 2739826; 2739859]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 59
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [2; 160; 899; 11299]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2739859; 2739859; 2739864; 2739864]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 60
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [6; 109; 478; 2786]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2739864; 2739864; 2739864; 2739874]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 61
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [3; 147; 225; 4199]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2739874; 2739874; 2739874; 2739874]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 62
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [3; 115; 973; 6319]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2739874; 2739874; 2739874; 2739907]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 63
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [2; 161; 896; 11378]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2739907; 2739907; 2739912; 2739912]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 64
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [5; 110; 475; 2752]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2739912; 2739912; 2739912; 2739922]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 65
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [3; 147; 228; 4114]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2739922; 2739922; 2739922; 2739922]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 66
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [3; 116; 974; 6301]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2739922; 2739922; 2739922; 2739955]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 67
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [3; 160; 906; 11383]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2739955; 2739955; 2739960; 2739960]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 68
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [6; 109; 482; 2759]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2739960; 2739960; 2739960; 2739970]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 69
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [2; 146; 227; 4092]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2739970; 2739970; 2739970; 2739970]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 70
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [3; 116; 977; 6274]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2739970; 2739970; 2739970; 2740003]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 71
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [2; 162; 914; 11564]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2740003; 2740003; 2740008; 2740008]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 72
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [6; 109; 486; 2769]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2740008; 2740008; 2740008; 2740018]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 73
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [2; 147; 229; 4143]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2740018; 2740018; 2740018; 2740018]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 74
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [4; 118; 984; 6463]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2740018; 2740018; 2740018; 2740051]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 75
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [3; 162; 923; 11547]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2740051; 2740051; 2740056; 2740056]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 76
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [5; 112; 486; 2789]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2740056; 2740056; 2740056; 2740066]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 77
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [3; 150; 231; 4152]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2740066; 2740066; 2740066; 2740066]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 78
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [4; 116; 984; 6339]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2740066; 2740066; 2740066; 2740099]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 79
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [2; 162; 903; 11454]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2740099; 2740099; 2740104; 2740104]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 80
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [5; 111; 481; 2756]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2740104; 2740104; 2740104; 2740114]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 81
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [2; 149; 231; 4200]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2740114; 2740114; 2740114; 2740114]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 82
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [4; 118; 980; 6356]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2740114; 2740114; 2740114; 2740147]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 83
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [2; 162; 908; 11519]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2740147; 2740147; 2740152; 2740152]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 84
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [5; 110; 486; 2782]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2740152; 2740152; 2740152; 2740162]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 85
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [2; 152; 236; 4188]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2740162; 2740162; 2740162; 2740162]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 86
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [4; 118; 995; 6510]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2740162; 2740162; 2740162; 2740195]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 87
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [2; 164; 919; 11651]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2740195; 2740195; 2740200; 2740200]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 88
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [5; 112; 491; 2830]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2740200; 2740200; 2740200; 2740210]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 89
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [2; 150; 233; 4200]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2740210; 2740210; 2740210; 2740210]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 90
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [4; 118; 995; 6384]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2740210; 2740210; 2740210; 2740243]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 91
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [3; 163; 925; 11829]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2740243; 2740243; 2740248; 2740248]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 92
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [7; 112; 558; 2827]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2740248; 2740248; 2740248; 2740258]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 93
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [2; 150; 236; 4188]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2740258; 2740258; 2740258; 2740258]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 94
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [3; 120; 1002; 6469]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2740258; 2740258; 2740258; 2740291]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 95
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [2; 164; 929; 11696]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2740291; 2740291; 2740296; 2740296]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 96
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [6; 113; 497; 2876]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2740296; 2740296; 2740296; 2740306]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 97
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [1; 150; 233; 4201]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2740306; 2740306; 2740306; 2740306]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 98
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [4; 121; 1011; 6701]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2740306; 2740306; 2740306; 2740339]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 99
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [2; 163; 928; 11693]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2740339; 2740339; 2740344; 2740344]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 100
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [5; 112; 494; 2833]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2740344; 2740344; 2740344; 2740354]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 101
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [2; 154; 233; 4210]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2740354; 2740354; 2740354; 2740354]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 102
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [4; 118; 1004; 6539]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2740354; 2740354; 2740354; 2740387]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 103
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [1; 169; 932; 11791]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2740387; 2740387; 2740392; 2740392]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 104
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [5; 114; 497; 2820]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2740392; 2740392; 2740392; 2740402]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 105
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [1; 151; 234; 4222]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2740402; 2740402; 2740402; 2740402]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 106
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [3; 118; 1000; 6492]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2740402; 2740402; 2740402; 2740435]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 107
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [3; 164; 926; 11785]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2740435; 2740435; 2740440; 2740440]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 108
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [6; 112; 491; 2991]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2740440; 2740440; 2740440; 2740450]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 109
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [2; 152; 233; 4228]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2740450; 2740450; 2740450; 2740450]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 110
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [3; 120; 1012; 6524]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2740450; 2740450; 2740450; 2740483]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 111
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [2; 165; 931; 11738]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2740483; 2740483; 2740488; 2740488]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 112
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [6; 115; 498; 2870]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2740488; 2740488; 2740488; 2740498]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 113
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [2; 153; 236; 4262]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2740498; 2740498; 2740498; 2740498]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 114
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [4; 119; 1011; 6481]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2740498; 2740498; 2740498; 2740531]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 115
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [3; 169; 939; 11809]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2740531; 2740531; 2740536; 2740536]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 116
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [5; 114; 500; 2907]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2740536; 2740536; 2740536; 2740546]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 117
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [3; 153; 240; 4273]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2740546; 2740546; 2740546; 2740546]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 118
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [4; 121; 1024; 6574]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2740546; 2740546; 2740546; 2740579]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 119
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [2; 169; 955; 11851]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2740579; 2740579; 2740584; 2740584]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 120
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [6; 114; 501; 2861]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2740584; 2740584; 2740584; 2740594]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 121
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [3; 150; 238; 4246]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2740594; 2740594; 2740594; 2740594]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 122
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [3; 120; 1019; 6551]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2740594; 2740594; 2740594; 2740627]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 123
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [2; 168; 937; 11905]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2740627; 2740627; 2740632; 2740632]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 124
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [7; 114; 500; 2860]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2740632; 2740632; 2740632; 2740642]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 125
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [3; 152; 238; 4434]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2740642; 2740642; 2740642; 2740642]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 126
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [3; 122; 1016; 6537]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2740642; 2740642; 2740642; 2740675]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 127
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [2; 166; 936; 11863]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2740675; 2740675; 2740680; 2740680]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 128
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [6; 112; 494; 2840]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2740680; 2740680; 2740680; 2740690]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 129
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [2; 154; 238; 4272]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2740690; 2740690; 2740690; 2740690]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 130
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [4; 119; 1019; 6495]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2740690; 2740690; 2740690; 2740723]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 131
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [3; 162; 932; 11705]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2740723; 2740723; 2740728; 2740728]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 132
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [5; 112; 497; 2841]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2740728; 2740728; 2740728; 2740738]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 133
movesGenerated = [movesGenerated, [3268; 13531; 302686; 991683]];
searchTime = [searchTime, [2; 153; 239; 4308]];
evaluations = [evaluations, [278; 4019; 16889; 212904]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 20352]];
cacheSize = [cacheSize, [2740738; 2740738; 2740738; 2740738]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 752119]];

%Turn: 134
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [4; 121; 1017; 6580]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20738; 1641952]];
cacheSize = [cacheSize, [2740738; 2740738; 2740738; 2740771]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 135
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [3; 165; 938; 11835]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cacheRetrievals = [cacheRetrievals, [311; 826; 139109; 47443]];
cacheSize = [cacheSize, [2740771; 2740771; 2740776; 2740776]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 136
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [5; 114; 505; 2874]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cacheRetrievals = [cacheRetrievals, [171; 13044; 14343; 770192]];
cacheSize = [cacheSize, [2740776; 2740776; 2740776; 2740786]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 137
movesGenerated = [movesGenerated, [3268; 13531; 302686; 972453]];
searchTime = [searchTime, [2; 153; 236; 4437]];
evaluations = [evaluations, [278; 4019; 16889; 208581]];
cacheRetrievals = [cacheRetrievals, [278; 327; 16873; 19775]];
cacheSize = [cacheSize, [2740786; 2740786; 2740786; 2740786]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2916; 9161; 278710; 737751]];

%Turn: 138
movesGenerated = [movesGenerated, [3486; 25523; 875966; 5696928]];
searchTime = [searchTime, [3; 120; 1036; 7386]];
evaluations = [evaluations, [238; 15306; 46533; 1632828]];
cacheRetrievals = [cacheRetrievals, [147; 15306; 20548; 1590581]];
cacheSize = [cacheSize, [2740786; 2740786; 2740786; 2780533]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3162; 9596; 807891; 3924223]];

%Turn: 139
movesGenerated = [movesGenerated, [3890; 17930; 394411; 1041604]];
searchTime = [searchTime, [2; 173; 283; 4629]];
evaluations = [evaluations, [222; 5054; 21810; 229116]];
cacheRetrievals = [cacheRetrievals, [185; 622; 21399; 16718]];
cacheSize = [cacheSize, [2780570; 2780570; 2780885; 2780885]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3588; 12439; 364187; 785964]];

%Turn: 140
movesGenerated = [movesGenerated, [3530; 12179; 846176; 912401]];
searchTime = [searchTime, [2; 99; 1242; 1667]];
evaluations = [evaluations, [120; 5491; 47031; 346707]];
cacheRetrievals = [cacheRetrievals, [91; 5020; 4110; 325039]];
cacheSize = [cacheSize, [2780885; 2781356; 2781356; 2802841]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [3320; 6388; 777104; 542409]];

%Turn: 141
movesGenerated = [movesGenerated, [3038; 15532; 175407; 841280]];
searchTime = [searchTime, [1; 125; 169; 2024]];
evaluations = [evaluations, [154; 2997; 11503; 107329]];
cacheRetrievals = [cacheRetrievals, [154; 338; 11374; 3292]];
cacheSize = [cacheSize, [2802841; 2802841; 2802841; 2802841]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2822; 12052; 159911; 707695]];

%Turn: 142
movesGenerated = [movesGenerated, [2862; 12084; 264013; 680823]];
searchTime = [searchTime, [4; 105; 419; 1169]];
evaluations = [evaluations, [200; 5207; 16044; 219851]];
cacheRetrievals = [cacheRetrievals, [0; 3971; 152; 198365]];
cacheSize = [cacheSize, [2802841; 2804074; 2804074; 2825272]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2572; 6521; 239603; 439754]];

%Turn: 143
movesGenerated = [movesGenerated, [2592; 14536; 199228; 608087]];
searchTime = [searchTime, [1; 123; 218; 1675]];
evaluations = [evaluations, [180; 3162; 20316; 93055]];
cacheRetrievals = [cacheRetrievals, [180; 314; 19022; 3607]];
cacheSize = [cacheSize, [2825272; 2825272; 2826354; 2826354]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2352; 10869; 173810; 494169]];

%Turn: 144
movesGenerated = [movesGenerated, [2948; 12319; 292902; 600151]];
searchTime = [searchTime, [2; 89; 431; 1179]];
evaluations = [evaluations, [114; 4928; 14897; 228414]];
cacheRetrievals = [cacheRetrievals, [66; 4928; 259; 206456]];
cacheSize = [cacheSize, [2826354; 2826354; 2826354; 2847853]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2744; 7043; 268574; 352447]];

%Turn: 145
movesGenerated = [movesGenerated, [2146; 12221; 152206; 592046]];
searchTime = [searchTime, [1; 106; 184; 1280]];
evaluations = [evaluations, [154; 2304; 20228; 69532]];
cacheRetrievals = [cacheRetrievals, [154; 332; 20016; 3600]];
cacheSize = [cacheSize, [2847853; 2847853; 2847853; 2847853]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1942; 9414; 128022; 497741]];

%Turn: 146
movesGenerated = [movesGenerated, [2284; 7752; 140221; 341294]];
searchTime = [searchTime, [4; 92; 196; 640]];
evaluations = [evaluations, [120; 3612; 5587; 133748]];
cacheRetrievals = [cacheRetrievals, [1; 2853; 30; 122793]];
cacheSize = [cacheSize, [2847853; 2848591; 2848591; 2858296]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [2076; 3879; 129272; 194503]];

%Turn: 147
movesGenerated = [movesGenerated, [1606; 5503; 63444; 187725]];
searchTime = [searchTime, [1; 83; 123; 453]];
evaluations = [evaluations, [69; 983; 10440; 24449]];
cacheRetrievals = [cacheRetrievals, [69; 138; 10316; 1370]];
cacheSize = [cacheSize, [2858296; 2858296; 2858300; 2858300]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1499; 4269; 51164; 153708]];

%Turn: 148
movesGenerated = [movesGenerated, [1590; 6272; 105316; 225620]];
searchTime = [searchTime, [3; 82; 203; 505]];
evaluations = [evaluations, [160; 3214; 5737; 99088]];
cacheRetrievals = [cacheRetrievals, [49; 3141; 49; 89930]];
cacheSize = [cacheSize, [2858300; 2858346; 2858346; 2866353]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1346; 2811; 94009; 116190]];

%Turn: 149
movesGenerated = [movesGenerated, [1444; 4763; 33430; 130152]];
searchTime = [searchTime, [0; 84; 96; 362]];
evaluations = [evaluations, [66; 750; 3207; 14513]];
cacheRetrievals = [cacheRetrievals, [66; 104; 2929; 1024]];
cacheSize = [cacheSize, [2866353; 2866353; 2866570; 2866570]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1346; 3770; 29375; 107993]];

%Turn: 150
movesGenerated = [movesGenerated, [1410; 17989; 347584; 1541377]];
searchTime = [searchTime, [3; 147; 822; 3630]];
evaluations = [evaluations, [163; 11942; 36248; 864908]];
cacheRetrievals = [cacheRetrievals, [6; 9244; 7806; 803597]];
cacheSize = [cacheSize, [2866570; 2869253; 2869253; 2927851]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1155; 5543; 286742; 623209]];

%Turn: 151
movesGenerated = [movesGenerated, [1374; 5186; 62421; 385847]];
searchTime = [searchTime, [1; 84; 125; 847]];
evaluations = [evaluations, [118; 847; 13668; 38702]];
cacheRetrievals = [cacheRetrievals, [105; 229; 13630; 4662]];
cacheSize = [cacheSize, [2927864; 2927864; 2927864; 2927864]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1226; 4081; 47070; 323927]];

%Turn: 152
movesGenerated = [movesGenerated, [1268; 14596; 282484; 895659]];
searchTime = [searchTime, [3; 110; 766; 2426]];
evaluations = [evaluations, [154; 10437; 36215; 599760]];
cacheRetrievals = [cacheRetrievals, [21; 9762; 7881; 557879]];
cacheSize = [cacheSize, [2927864; 2928527; 2928527; 2968575]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1026; 3718; 223756; 261254]];

%Turn: 153
movesGenerated = [movesGenerated, [1310; 4881; 33292; 144291]];
searchTime = [searchTime, [1; 84; 97; 325]];
evaluations = [evaluations, [116; 723; 5599; 12465]];
cacheRetrievals = [cacheRetrievals, [104; 138; 5566; 2199]];
cacheSize = [cacheSize, [2968587; 2968587; 2968597; 2968597]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1166; 3910; 26849; 123445]];

%Turn: 154
movesGenerated = [movesGenerated, [1444; 12482; 294609; 1003970]];
searchTime = [searchTime, [1; 99; 620; 2531]];
evaluations = [evaluations, [103; 9812; 24630; 642042]];
cacheRetrievals = [cacheRetrievals, [79; 9781; 5710; 604763]];
cacheSize = [cacheSize, [2968597; 2968616; 2968616; 3004040]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1251; 2287; 249204; 325367]];

%Turn: 155
movesGenerated = [movesGenerated, [1368; 5919; 74543; 377765]];
searchTime = [searchTime, [0; 87; 145; 993]];
evaluations = [evaluations, [168; 1018; 16757; 45580]];
cacheRetrievals = [cacheRetrievals, [168; 300; 16722; 7005]];
cacheSize = [cacheSize, [3004040; 3004040; 3004040; 3004040]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1172; 4541; 55840; 307815]];

%Turn: 156
movesGenerated = [movesGenerated, [1364; 20528; 386327; 1941884]];
searchTime = [searchTime, [3; 136; 702; 4459]];
evaluations = [evaluations, [181; 10864; 29547; 1163204]];
cacheRetrievals = [cacheRetrievals, [100; 8890; 14859; 1094411]];
cacheSize = [cacheSize, [3004040; 3005996; 3005996; 3071926]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1087; 9097; 331283; 715679]];

%Turn: 157
movesGenerated = [movesGenerated, [1182; 4855; 39709; 265323]];
searchTime = [searchTime, [1; 85; 104; 591]];
evaluations = [evaluations, [115; 804; 6793; 25879]];
cacheRetrievals = [cacheRetrievals, [106; 206; 6696; 5214]];
cacheSize = [cacheSize, [3071935; 3071935; 3071999; 3071999]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1041; 3793; 31918; 223401]];

%Turn: 158
movesGenerated = [movesGenerated, [1192; 19749; 316200; 2117608]];
searchTime = [searchTime, [2; 132; 658; 4341]];
evaluations = [evaluations, [124; 10129; 25567; 1081969]];
cacheRetrievals = [cacheRetrievals, [18; 8079; 6137; 1013448]];
cacheSize = [cacheSize, [3071999; 3074034; 3074034; 3140294]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [978; 9065; 268132; 968789]];

%Turn: 159
movesGenerated = [movesGenerated, [1002; 4328; 53802; 394593]];
searchTime = [searchTime, [2; 82; 120; 818]];
evaluations = [evaluations, [155; 646; 11297; 38718]];
cacheRetrievals = [cacheRetrievals, [108; 201; 11163; 8841]];
cacheSize = [cacheSize, [3140341; 3140341; 3140445; 3140445]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [825; 3438; 41088; 329912]];

%Turn: 160
movesGenerated = [movesGenerated, [1108; 22344; 355100; 2540798]];
searchTime = [searchTime, [3; 125; 666; 4956]];
evaluations = [evaluations, [142; 11509; 28338; 1273170]];
cacheRetrievals = [cacheRetrievals, [12; 10176; 8973; 1196624]];
cacheSize = [cacheSize, [3140445; 3141766; 3141766; 3216700]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [876; 10213; 301577; 1186558]];

%Turn: 161
movesGenerated = [movesGenerated, [1024; 3734; 74157; 387018]];
searchTime = [searchTime, [1; 79; 142; 669]];
evaluations = [evaluations, [157; 500; 17892; 33023]];
cacheRetrievals = [cacheRetrievals, [157; 212; 17761; 14065]];
cacheSize = [cacheSize, [3216700; 3216700; 3216803; 3216803]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [845; 3007; 54301; 328491]];

%Turn: 162
movesGenerated = [movesGenerated, [1134; 25438; 374979; 2463279]];
searchTime = [searchTime, [1; 116; 665; 5105]];
evaluations = [evaluations, [144; 12104; 29329; 1289765]];
cacheRetrievals = [cacheRetrievals, [109; 11492; 12550; 1210650]];
cacheSize = [cacheSize, [3216803; 3217400; 3217400; 3294095]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [898; 12658; 320268; 1097527]];

%Turn: 163
movesGenerated = [movesGenerated, [1012; 4691; 97182; 388819]];
searchTime = [searchTime, [1; 84; 158; 758]];
evaluations = [evaluations, [146; 775; 15797; 36917]];
cacheRetrievals = [cacheRetrievals, [146; 252; 15170; 7918]];
cacheSize = [cacheSize, [3294095; 3294095; 3294685; 3294685]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [842; 3648; 78674; 329002]];

%Turn: 164
movesGenerated = [movesGenerated, [1204; 28553; 346475; 2325585]];
searchTime = [searchTime, [3; 113; 658; 3794]];
evaluations = [evaluations, [145; 9378; 26657; 768019]];
cacheRetrievals = [cacheRetrievals, [29; 8635; 3169; 695265]];
cacheSize = [cacheSize, [3294685; 3295413; 3295413; 3364832]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [973; 18363; 299299; 1484982]];

%Turn: 165
movesGenerated = [movesGenerated, [1176; 4989; 59108; 330843]];
searchTime = [searchTime, [1; 82; 121; 621]];
evaluations = [evaluations, [158; 666; 9540; 29846]];
cacheRetrievals = [cacheRetrievals, [158; 352; 9221; 7782]];
cacheSize = [cacheSize, [3364832; 3364832; 3365108; 3365108]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [992; 4054; 47992; 281888]];

%Turn: 166
movesGenerated = [movesGenerated, [1170; 34146; 374315; 2132449]];
searchTime = [searchTime, [3; 116; 607; 3764]];
evaluations = [evaluations, [146; 11090; 29196; 855697]];
cacheRetrievals = [cacheRetrievals, [103; 10686; 13505; 795427]];
cacheSize = [cacheSize, [3365108; 3365497; 3365497; 3422829]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [934; 22120; 321711; 1206462]];

%Turn: 167
movesGenerated = [movesGenerated, [1006; 4797; 40053; 147003]];
searchTime = [searchTime, [1; 81; 105; 313]];
evaluations = [evaluations, [147; 630; 5820; 12661]];
cacheRetrievals = [cacheRetrievals, [145; 242; 5728; 1899]];
cacheSize = [cacheSize, [3422831; 3422831; 3422890; 3422890]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [835; 3887; 33074; 126180]];

%Turn: 168
movesGenerated = [movesGenerated, [1202; 29453; 201750; 2184945]];
searchTime = [searchTime, [2; 114; 323; 3899]];
evaluations = [evaluations, [122; 9912; 12335; 868102]];
cacheRetrievals = [cacheRetrievals, [94; 9348; 4879; 799268]];
cacheSize = [cacheSize, [3422890; 3423445; 3423445; 3489772]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [994; 18678; 178179; 1243251]];

%Turn: 169
movesGenerated = [movesGenerated, [978; 3934; 30591; 183036]];
searchTime = [searchTime, [0; 79; 100; 372]];
evaluations = [evaluations, [171; 409; 4818; 15577]];
cacheRetrievals = [cacheRetrievals, [171; 201; 4791; 1361]];
cacheSize = [cacheSize, [3489772; 3489772; 3489772; 3489772]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [781; 3314; 24828; 157331]];

%Turn: 170
movesGenerated = [movesGenerated, [1084; 13888; 146704; 921646]];
searchTime = [searchTime, [3; 117; 272; 1725]];
evaluations = [evaluations, [90; 7469; 8510; 353147]];
cacheRetrievals = [cacheRetrievals, [18; 5813; 1108; 315701]];
cacheSize = [cacheSize, [3489772; 3491419; 3491419; 3527695]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [916; 5961; 130094; 537309]];

%Turn: 171
movesGenerated = [movesGenerated, [952; 2388; 24600; 48402]];
searchTime = [searchTime, [1; 76; 93; 155]];
evaluations = [evaluations, [59; 456; 4161; 6097]];
cacheRetrievals = [cacheRetrievals, [51; 146; 4096; 1540]];
cacheSize = [cacheSize, [3527703; 3527703; 3527751; 3527751]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [869; 1824; 19714; 39992]];

%Turn: 172
movesGenerated = [movesGenerated, [1172; 4930; 78438; 262399]];
searchTime = [searchTime, [1; 83; 174; 630]];
evaluations = [evaluations, [74; 2994; 4189; 136611]];
cacheRetrievals = [cacheRetrievals, [50; 2985; 338; 125098]];
cacheSize = [cacheSize, [3527751; 3527751; 3527751; 3538913]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [1030; 1732; 69903; 114538]];

%Turn: 173
movesGenerated = [movesGenerated, [396; 1144; 9594; 33157]];
searchTime = [searchTime, [0; 76; 81; 136]];
evaluations = [evaluations, [80; 178; 2225; 3850]];
cacheRetrievals = [cacheRetrievals, [80; 84; 2208; 645]];
cacheSize = [cacheSize, [3538913; 3538913; 3538913; 3538913]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [304; 874; 7016; 26233]];

%Turn: 174
movesGenerated = [movesGenerated, [660; 5104; 43433; 248678]];
searchTime = [searchTime, [1; 85; 159; 658]];
evaluations = [evaluations, [73; 3089; 4376; 176237]];
cacheRetrievals = [cacheRetrievals, [52; 3042; 146; 165620]];
cacheSize = [cacheSize, [3538913; 3538948; 3538948; 3549425]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [521; 1785; 34525; 59659]];

%Turn: 175
movesGenerated = [movesGenerated, [606; 1554; 7346; 13743]];
searchTime = [searchTime, [0; 76; 84; 96]];
evaluations = [evaluations, [49; 224; 1545; 1239]];
cacheRetrievals = [cacheRetrievals, [45; 58; 1492; 530]];
cacheSize = [cacheSize, [3549425; 3549425; 3549426; 3549426]];
cacheClears = [cacheClears, [0; 0; 0; 0]];
cutoffs = [cutoffs, [543; 1221; 5571; 11429]];

%Turn: 176
