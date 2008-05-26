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
USE_EVALUATION_CACHING = 0
USE_LINKEDLISTS_WHEN_CACHING = 0
CACHE_SIZE = 3597169
CLEAR_CACHE_ON_OVERFLOW = 1
CLEAR_CACHE_ON_NON_REVERSABLE_MOVE = 0

%caching
DEFAULT_PLY = 5
MAX_SEARCH_TIME = 29500

%variables
evaluations = [];
movesGenerated = [];
searchTime = [];
cutoffs = [];
movesGenerated = [movesGenerated, [840; 8499; 190930; 600720]];
searchTime = [searchTime, [6; 72; 802; 2843]];
evaluations = [evaluations, [297; 5646; 55282; 201859]];
cutoffs = [cutoffs, [503; 2499; 126807; 377083]];

%Turn: 1
movesGenerated = [movesGenerated, [1238; 10211; 361821; 1500932]];
searchTime = [searchTime, [5; 60; 1693; 5378]];
evaluations = [evaluations, [330; 4102; 115936; 344369]];
cutoffs = [cutoffs, [868; 5707; 234392; 1104489]];

%Turn: 2
movesGenerated = [movesGenerated, [1852; 9105; 714731; 2834624]];
searchTime = [searchTime, [5; 68; 2264; 10830]];
evaluations = [evaluations, [338; 4595; 140070; 680469]];
cutoffs = [cutoffs, [1454; 4240; 552254; 2076534]];

%Turn: 3
movesGenerated = [movesGenerated, [2540; 22923; 982023; 3813099]];
searchTime = [searchTime, [6; 119; 2493; 11569]];
evaluations = [evaluations, [315; 7304; 134892; 687119]];
cutoffs = [cutoffs, [2167; 14901; 823458; 3011224]];

%Turn: 4
movesGenerated = [movesGenerated, [2900; 30333; 1657114; 3748384]];
searchTime = [searchTime, [6; 226; 3627; 20032]];
evaluations = [evaluations, [296; 14624; 196892; 1258465]];
cutoffs = [cutoffs, [2516; 14964; 1410490; 2393296]];

%Turn: 5
movesGenerated = [movesGenerated, [3002; 29576; 525430; 4223493]];
searchTime = [searchTime, [7; 122; 900; 13056]];
evaluations = [evaluations, [397; 7200; 49124; 740532]];
cutoffs = [cutoffs, [2541; 21513; 464275; 3362527]];

%Turn: 6
movesGenerated = [movesGenerated, [3836; 32726; 1016766; 10577960]];
searchTime = [searchTime, [7; 243; 1548; 43781]];
evaluations = [evaluations, [286; 14661; 74648; 2527862]];
cutoffs = [cutoffs, [3456; 17311; 916133; 7799156]];

%Turn: 7
movesGenerated = [movesGenerated, [3664; 34753; 755109; 4581478]];
searchTime = [searchTime, [9; 185; 1264; 18702]];
evaluations = [evaluations, [363; 10878; 65699; 1054705]];
cutoffs = [cutoffs, [3221; 23006; 672493; 3411742]];

%Turn: 8
movesGenerated = [movesGenerated, [3550; 26227; 839973; 5491832]];
searchTime = [searchTime, [7; 184; 1037; 23243]];
evaluations = [evaluations, [392; 11317; 48226; 1374232]];
cutoffs = [cutoffs, [3068; 14252; 770269; 3973630]];

%Turn: 9
movesGenerated = [movesGenerated, [3326; 35378; 644601; 5407994]];
searchTime = [searchTime, [7; 184; 1070; 21347]];
evaluations = [evaluations, [327; 10679; 54554; 1212465]];
cutoffs = [cutoffs, [2921; 23804; 574797; 4058371]];

%Turn: 10
movesGenerated = [movesGenerated, [3494; 25384; 485224; 2762727]];
searchTime = [searchTime, [8; 162; 573; 14233]];
evaluations = [evaluations, [402; 9598; 25353; 826966]];
cutoffs = [cutoffs, [3008; 15117; 447604; 1861867]];

%Turn: 11
movesGenerated = [movesGenerated, [2856; 24416; 626066; 3521577]];
searchTime = [searchTime, [5; 169; 930; 16684]];
evaluations = [evaluations, [255; 10344; 44251; 989207]];
cutoffs = [cutoffs, [2519; 13441; 564365; 2440686]];

%Turn: 12
movesGenerated = [movesGenerated, [2758; 88982; 409768; 12377356]];
searchTime = [searchTime, [7; 252; 620; 36455]];
evaluations = [evaluations, [333; 13592; 30023; 1948297]];
cutoffs = [cutoffs, [2357; 72834; 368816; 10090197]];

%Turn: 13
movesGenerated = [movesGenerated, [3090; 34371; 755291; 5148069]];
searchTime = [searchTime, [6; 257; 1071; 24477]];
evaluations = [evaluations, [319; 15022; 50026; 1373460]];
cutoffs = [cutoffs, [2691; 18462; 686082; 3643115]];

%Turn: 14
movesGenerated = [movesGenerated, [3154; 61726; 320258; 1806014]];
searchTime = [searchTime, [6; 221; 392; 7037]];
evaluations = [evaluations, [293; 11845; 16107; 397895]];
cutoffs = [cutoffs, [2785; 48298; 296012; 1362142]];

%Turn: 15
movesGenerated = [movesGenerated, [3328; 30294; 384757; 2431091]];
searchTime = [searchTime, [9; 147; 430; 11257]];
evaluations = [evaluations, [367; 8185; 17628; 633990]];
cutoffs = [cutoffs, [2881; 21353; 358021; 1736619]];

%Turn: 16
movesGenerated = [movesGenerated, [3364; 15457; 331196; 1525655]];
searchTime = [searchTime, [10; 107; 425; 6064]];
evaluations = [evaluations, [476; 6246; 20621; 354752]];
cutoffs = [cutoffs, [2810; 8841; 302444; 1133894]];

%Turn: 17
movesGenerated = [movesGenerated, [3786; 15356; 354029; 2866836]];
searchTime = [searchTime, [5; 94; 318; 12893]];
evaluations = [evaluations, [169; 5607; 12945; 761836]];
cutoffs = [cutoffs, [3537; 9379; 333628; 2033383]];

%Turn: 18
movesGenerated = [movesGenerated, [3804; 9878; 183239; 567810]];
searchTime = [searchTime, [4; 46; 265; 2947]];
evaluations = [evaluations, [192; 2807; 13963; 185450]];
cutoffs = [cutoffs, [3518; 6837; 164522; 368946]];

%Turn: 19
movesGenerated = [movesGenerated, [3286; 14177; 259651; 1991342]];
searchTime = [searchTime, [4; 67; 209; 8582]];
evaluations = [evaluations, [163; 4170; 9378; 525403]];
cutoffs = [cutoffs, [3059; 9616; 245127; 1409503]];

%Turn: 20
movesGenerated = [movesGenerated, [2706; 9310; 202721; 510000]];
searchTime = [searchTime, [2; 61; 173; 3168]];
evaluations = [evaluations, [99; 4453; 7131; 231280]];
cutoffs = [cutoffs, [2527; 4592; 189140; 263216]];

%Turn: 21
movesGenerated = [movesGenerated, [1752; 9918; 194188; 1141412]];
searchTime = [searchTime, [1; 28; 610; 3152]];
evaluations = [evaluations, [79; 1876; 45873; 207678]];
cutoffs = [cutoffs, [1633; 7646; 143087; 888490]];

%Turn: 22
movesGenerated = [movesGenerated, [1600; 10142; 169794; 817910]];
searchTime = [searchTime, [3; 63; 261; 4545]];
evaluations = [evaluations, [162; 5092; 13467; 345415]];
cutoffs = [cutoffs, [1360; 4725; 148145; 445993]];

%Turn: 23
movesGenerated = [movesGenerated, [1368; 8521; 273436; 838775]];
searchTime = [searchTime, [4; 86; 688; 2470]];
evaluations = [evaluations, [251; 2663; 48817; 165921]];
cutoffs = [cutoffs, [1081; 5478; 217294; 638708]];

%Turn: 24
movesGenerated = [movesGenerated, [1736; 15491; 513982; 5232023]];
searchTime = [searchTime, [3; 90; 1242; 18140]];
evaluations = [evaluations, [182; 6943; 75443; 1212353]];
cutoffs = [cutoffs, [1480; 8109; 417185; 3873824]];

%Turn: 25
movesGenerated = [movesGenerated, [1802; 12010; 160878; 957960]];
searchTime = [searchTime, [4; 51; 262; 2702]];
evaluations = [evaluations, [327; 3988; 17115; 188842]];
cutoffs = [cutoffs, [1427; 7575; 139355; 734070]];

%Turn: 26
movesGenerated = [movesGenerated, [1980; 8782; 218695; 893689]];
searchTime = [searchTime, [3; 59; 292; 3715]];
evaluations = [evaluations, [160; 4771; 15606; 275086]];
cutoffs = [cutoffs, [1746; 3728; 195359; 592154]];

%Turn: 27
movesGenerated = [movesGenerated, [2240; 13705; 379295; 1768208]];
searchTime = [searchTime, [4; 75; 575; 6836]];
evaluations = [evaluations, [278; 5406; 34201; 472047]];
cutoffs = [cutoffs, [1902; 7862; 335022; 1239796]];

%Turn: 28
movesGenerated = [movesGenerated, [2614; 20495; 689606; 2223583]];
searchTime = [searchTime, [4; 100; 1158; 9057]];
evaluations = [evaluations, [214; 7084; 66993; 601341]];
cutoffs = [cutoffs, [2326; 12856; 602037; 1561582]];

%Turn: 29
movesGenerated = [movesGenerated, [2962; 20256; 858367; 7614852]];
searchTime = [searchTime, [4; 93; 2325; 23770]];
evaluations = [evaluations, [239; 6299; 141043; 1468944]];
cutoffs = [cutoffs, [2653; 13371; 696062; 5912355]];

%Turn: 30
movesGenerated = [movesGenerated, [3062; 23265; 712489; 4660960]];
searchTime = [searchTime, [6; 131; 1126; 18212]];
evaluations = [evaluations, [298; 8643; 58681; 1162262]];
cutoffs = [cutoffs, [2680; 14037; 632740; 3377783]];

%Turn: 31
movesGenerated = [movesGenerated, [3160; 16622; 450568; 2339650]];
searchTime = [searchTime, [5; 84; 614; 7350]];
evaluations = [evaluations, [254; 5553; 33222; 457272]];
cutoffs = [cutoffs, [2834; 10576; 406645; 1809152]];

%Turn: 32
movesGenerated = [movesGenerated, [2722; 47628; 752956; 5240140]];
searchTime = [searchTime, [4; 183; 1146; 21660]];
evaluations = [evaluations, [270; 11820; 58436; 1399053]];
cutoffs = [cutoffs, [2366; 34617; 670377; 3702750]];

%Turn: 33
movesGenerated = [movesGenerated, [2658; 21247; 551366; 1771207]];
searchTime = [searchTime, [4; 96; 1077; 5167]];
evaluations = [evaluations, [240; 5942; 63327; 307698]];
cutoffs = [cutoffs, [2358; 14629; 474765; 1407107]];

%Turn: 34
movesGenerated = [movesGenerated, [2706; 12660; 232629; 930151]];
searchTime = [searchTime, [4; 76; 243; 5515]];
evaluations = [evaluations, [175; 5424; 10183; 385865]];
cutoffs = [cutoffs, [2445; 6891; 214739; 518388]];

%Turn: 35
movesGenerated = [movesGenerated, [2832; 8630; 202277; 549833]];
searchTime = [searchTime, [2; 49; 184; 2413]];
evaluations = [evaluations, [102; 2972; 7712; 148429]];
cutoffs = [cutoffs, [2670; 5422; 190290; 386078]];

%Turn: 36
movesGenerated = [movesGenerated, [3128; 16943; 499191; 1976508]];
searchTime = [searchTime, [3; 151; 522; 11509]];
evaluations = [evaluations, [156; 10641; 23616; 765711]];
cutoffs = [cutoffs, [2886; 5867; 461325; 1159059]];

%Turn: 37
movesGenerated = [movesGenerated, [2962; 18481; 516711; 1644002]];
searchTime = [searchTime, [4; 74; 831; 4903]];
evaluations = [evaluations, [287; 4644; 44132; 295697]];
cutoffs = [cutoffs, [2607; 13265; 460156; 1298795]];

%Turn: 38
movesGenerated = [movesGenerated, [3198; 65877; 778975; 9142194]];
searchTime = [searchTime, [3; 282; 1143; 34861]];
evaluations = [evaluations, [117; 17176; 55432; 2119423]];
cutoffs = [cutoffs, [2995; 47065; 700483; 6784647]];

%Turn: 39
movesGenerated = [movesGenerated, [3140; 18044; 539091; 1796053]];
searchTime = [searchTime, [6; 83; 829; 5624]];
evaluations = [evaluations, [290; 4899; 43556; 330485]];
cutoffs = [cutoffs, [2778; 12619; 482616; 1411288]];

%Turn: 40
movesGenerated = [movesGenerated, [3462; 24154; 567044; 2503761]];
searchTime = [searchTime, [3; 181; 705; 14073]];
evaluations = [evaluations, [121; 11250; 31602; 852696]];
cutoffs = [cutoffs, [3255; 12295; 520512; 1586858]];

%Turn: 41
movesGenerated = [movesGenerated, [3312; 13621; 1100839; 1878552]];
searchTime = [searchTime, [5; 67; 1944; 7617]];
evaluations = [evaluations, [293; 4090; 100507; 451264]];
cutoffs = [cutoffs, [2943; 9167; 973310; 1372995]];

%Turn: 42
movesGenerated = [movesGenerated, [3566; 27932; 1032523; 11885504]];
searchTime = [searchTime, [5; 266; 1822; 46971]];
evaluations = [evaluations, [215; 15710; 92810; 2696546]];
cutoffs = [cutoffs, [3263; 11551; 913540; 8890159]];

%Turn: 43
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [6; 91; 2644; 10159]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 44
movesGenerated = [movesGenerated, [3428; 20288; 437099; 1840387]];
searchTime = [searchTime, [7; 222; 563; 12698]];
evaluations = [evaluations, [384; 13143; 22420; 771931]];
cutoffs = [cutoffs, [2948; 6667; 402973; 1023337]];

%Turn: 45
movesGenerated = [movesGenerated, [3268; 13531; 302686; 988723]];
searchTime = [searchTime, [5; 71; 373; 3645]];
evaluations = [evaluations, [278; 4019; 16889; 212509]];
cutoffs = [cutoffs, [2916; 9161; 278710; 749639]];

%Turn: 46
movesGenerated = [movesGenerated, [3486; 25523; 869423; 5610183]];
searchTime = [searchTime, [5; 271; 1100; 29368]];
evaluations = [evaluations, [238; 15306; 46196; 1642568]];
cutoffs = [cutoffs, [3162; 9596; 801859; 3829110]];

%Turn: 47
movesGenerated = [movesGenerated, [3812; 18700; 1280360; 2897704]];
searchTime = [searchTime, [7; 88; 2680; 10626]];
evaluations = [evaluations, [311; 4965; 139269; 572851]];
cutoffs = [cutoffs, [3421; 13266; 1112174; 2244647]];

%Turn: 48
