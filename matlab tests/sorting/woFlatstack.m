%configuration << 
%move generation
USE_FLAT_STACK = 0
USE_EN_PASSANT = 0
ONLY_GENERATE_LEGAL_MOVES = 1

%minimax
USE_MINIMAX_ONLY = 0
USE_ITERATIVE_DEEPENING = 0
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
movesGenerated = [movesGenerated, 417155];
searchTime = [searchTime, 1855];
evaluations = [evaluations, 128697];
cutoffs = [cutoffs, 272831];
cacheRetrievals = [cacheRetrievals, 64388];
cacheSize = [cacheSize, 64309];
cacheClears = [cacheClears, 0];

%Turn: 1
movesGenerated = [movesGenerated, 653072];
searchTime = [searchTime, 4385];
evaluations = [evaluations, 167873];
cutoffs = [cutoffs, 460965];
cacheRetrievals = [cacheRetrievals, 4951];
cacheSize = [cacheSize, 64309];
cacheClears = [cacheClears, 0];

%Turn: 2
movesGenerated = [movesGenerated, 1151350];
searchTime = [searchTime, 5072];
evaluations = [evaluations, 265356];
cutoffs = [cutoffs, 851784];
cacheRetrievals = [cacheRetrievals, 143874];
cacheSize = [cacheSize, 185787];
cacheClears = [cacheClears, 0];

%Turn: 3
movesGenerated = [movesGenerated, 2332358];
searchTime = [searchTime, 13477];
evaluations = [evaluations, 353811];
cutoffs = [cutoffs, 1903051];
cacheRetrievals = [cacheRetrievals, 9942];
cacheSize = [cacheSize, 185787];
cacheClears = [cacheClears, 0];

%Turn: 4
movesGenerated = [movesGenerated, 2416595];
searchTime = [searchTime, 10671];
evaluations = [evaluations, 454362];
cutoffs = [cutoffs, 1894325];
cacheRetrievals = [cacheRetrievals, 246476];
cacheSize = [cacheSize, 393673];
cacheClears = [cacheClears, 0];

%Turn: 5
movesGenerated = [movesGenerated, 1184630];
searchTime = [searchTime, 8466];
evaluations = [evaluations, 217560];
cutoffs = [cutoffs, 930765];
cacheRetrievals = [cacheRetrievals, 11179];
cacheSize = [cacheSize, 393673];
cacheClears = [cacheClears, 0];

%Turn: 6
movesGenerated = [movesGenerated, 4104265];
searchTime = [searchTime, 16150];
evaluations = [evaluations, 634841];
cutoffs = [cutoffs, 3348804];
cacheRetrievals = [cacheRetrievals, 398253];
cacheSize = [cacheSize, 630259];
cacheClears = [cacheClears, 0];

%Turn: 7
movesGenerated = [movesGenerated, 4065084];
searchTime = [searchTime, 31577];
evaluations = [evaluations, 713747];
cutoffs = [cutoffs, 3236440];
cacheRetrievals = [cacheRetrievals, 19095];
cacheSize = [cacheSize, 630259];
cacheClears = [cacheClears, 0];

%Turn: 8
movesGenerated = [movesGenerated, 610638];
searchTime = [searchTime, 2377];
evaluations = [evaluations, 81142];
cutoffs = [cutoffs, 509944];
cacheRetrievals = [cacheRetrievals, 48841];
cacheSize = [cacheSize, 662560];
cacheClears = [cacheClears, 0];

%Turn: 9
movesGenerated = [movesGenerated, 1434960];
searchTime = [searchTime, 14914];
evaluations = [evaluations, 363142];
cutoffs = [cutoffs, 1028129];
cacheRetrievals = [cacheRetrievals, 20640];
cacheSize = [cacheSize, 662560];
cacheClears = [cacheClears, 0];

%Turn: 10
movesGenerated = [movesGenerated, 1035910];
searchTime = [searchTime, 4607];
evaluations = [evaluations, 136137];
cutoffs = [cutoffs, 866999];
cacheRetrievals = [cacheRetrievals, 75587];
cacheSize = [cacheSize, 723104];
cacheClears = [cacheClears, 0];

%Turn: 11
movesGenerated = [movesGenerated, 829193];
searchTime = [searchTime, 9823];
evaluations = [evaluations, 233349];
cutoffs = [cutoffs, 570857];
cacheRetrievals = [cacheRetrievals, 14887];
cacheSize = [cacheSize, 723104];
cacheClears = [cacheClears, 0];

%Turn: 12
movesGenerated = [movesGenerated, 793715];
searchTime = [searchTime, 4392];
evaluations = [evaluations, 107293];
cutoffs = [cutoffs, 661405];
cacheRetrievals = [cacheRetrievals, 33814];
cacheSize = [cacheSize, 796573];
cacheClears = [cacheClears, 0];

%Turn: 13
movesGenerated = [movesGenerated, 1438434];
searchTime = [searchTime, 16238];
evaluations = [evaluations, 352866];
cutoffs = [cutoffs, 1045217];
cacheRetrievals = [cacheRetrievals, 5587];
cacheSize = [cacheSize, 796573];
cacheClears = [cacheClears, 0];

%Turn: 14
movesGenerated = [movesGenerated, 1268805];
searchTime = [searchTime, 5278];
evaluations = [evaluations, 168963];
cutoffs = [cutoffs, 1062250];
cacheRetrievals = [cacheRetrievals, 104582];
cacheSize = [cacheSize, 860930];
cacheClears = [cacheClears, 0];

%Turn: 15
movesGenerated = [movesGenerated, 2046875];
searchTime = [searchTime, 22380];
evaluations = [evaluations, 451228];
cutoffs = [cutoffs, 1541531];
cacheRetrievals = [cacheRetrievals, 8705];
cacheSize = [cacheSize, 860930];
cacheClears = [cacheClears, 0];

%Turn: 16
movesGenerated = [movesGenerated, 2515281];
searchTime = [searchTime, 11433];
evaluations = [evaluations, 332026];
cutoffs = [cutoffs, 2107421];
cacheRetrievals = [cacheRetrievals, 187118];
cacheSize = [cacheSize, 1005792];
cacheClears = [cacheClears, 0];

%Turn: 17
movesGenerated = [movesGenerated, 1183361];
searchTime = [searchTime, 13787];
evaluations = [evaluations, 268944];
cutoffs = [cutoffs, 880069];
cacheRetrievals = [cacheRetrievals, 4295];
cacheSize = [cacheSize, 1005792];
cacheClears = [cacheClears, 0];

%Turn: 18
movesGenerated = [movesGenerated, 503495];
searchTime = [searchTime, 2398];
evaluations = [evaluations, 69638];
cutoffs = [cutoffs, 418693];
cacheRetrievals = [cacheRetrievals, 39077];
cacheSize = [cacheSize, 1036348];
cacheClears = [cacheClears, 0];

%Turn: 19
movesGenerated = [movesGenerated, 2279774];
searchTime = [searchTime, 29686];
evaluations = [evaluations, 629228];
cutoffs = [cutoffs, 1592241];
cacheRetrievals = [cacheRetrievals, 16914];
cacheSize = [cacheSize, 1036348];
cacheClears = [cacheClears, 0];

%Turn: 20
movesGenerated = [movesGenerated, 1550836];
searchTime = [searchTime, 7264];
evaluations = [evaluations, 160116];
cutoffs = [cutoffs, 1344477];
cacheRetrievals = [cacheRetrievals, 69512];
cacheSize = [cacheSize, 1126928];
cacheClears = [cacheClears, 0];

%Turn: 21
movesGenerated = [movesGenerated, 574929];
searchTime = [searchTime, 13205];
evaluations = [evaluations, 289593];
cutoffs = [cutoffs, 270907];
cacheRetrievals = [cacheRetrievals, 13755];
cacheSize = [cacheSize, 1126928];
cacheClears = [cacheClears, 0];

%Turn: 22
movesGenerated = [movesGenerated, 550712];
searchTime = [searchTime, 1983];
evaluations = [evaluations, 35469];
cutoffs = [cutoffs, 499507];
cacheRetrievals = [cacheRetrievals, 16042];
cacheSize = [cacheSize, 1146355];
cacheClears = [cacheClears, 0];

%Turn: 23
movesGenerated = [movesGenerated, 5463756];
searchTime = [searchTime, 73094];
evaluations = [evaluations, 1469109];
cutoffs = [cutoffs, 3871628];
cacheRetrievals = [cacheRetrievals, 59627];
cacheSize = [cacheSize, 1146355];
cacheClears = [cacheClears, 0];

%Turn: 24
movesGenerated = [movesGenerated, 708791];
searchTime = [searchTime, 3511];
evaluations = [evaluations, 127741];
cutoffs = [cutoffs, 561736];
cacheRetrievals = [cacheRetrievals, 89549];
cacheSize = [cacheSize, 1184534];
cacheClears = [cacheClears, 0];

%Turn: 25
movesGenerated = [movesGenerated, 867281];
searchTime = [searchTime, 11417];
evaluations = [evaluations, 215217];
cutoffs = [cutoffs, 634026];
cacheRetrievals = [cacheRetrievals, 2640];
cacheSize = [cacheSize, 1184534];
cacheClears = [cacheClears, 0];

%Turn: 26
movesGenerated = [movesGenerated, 1841507];
searchTime = [searchTime, 7807];
evaluations = [evaluations, 222225];
cutoffs = [cutoffs, 1564316];
cacheRetrievals = [cacheRetrievals, 148759];
cacheSize = [cacheSize, 1257973];
cacheClears = [cacheClears, 0];

%Turn: 27
movesGenerated = [movesGenerated, 2229444];
searchTime = [searchTime, 41784];
evaluations = [evaluations, 917165];
cutoffs = [cutoffs, 1256546];
cacheRetrievals = [cacheRetrievals, 36986];
cacheSize = [cacheSize, 1257973];
cacheClears = [cacheClears, 0];

%Turn: 28
movesGenerated = [movesGenerated, 1352551];
searchTime = [searchTime, 6602];
evaluations = [evaluations, 256074];
cutoffs = [cutoffs, 1057500];
cacheRetrievals = [cacheRetrievals, 179786];
cacheSize = [cacheSize, 1334249];
cacheClears = [cacheClears, 0];

%Turn: 29
movesGenerated = [movesGenerated, 1592098];
searchTime = [searchTime, 27420];
evaluations = [evaluations, 552200];
cutoffs = [cutoffs, 1000906];
cacheRetrievals = [cacheRetrievals, 18954];
cacheSize = [cacheSize, 1334249];
cacheClears = [cacheClears, 0];

%Turn: 30
movesGenerated = [movesGenerated, 1206420];
searchTime = [searchTime, 5949];
evaluations = [evaluations, 255088];
cutoffs = [cutoffs, 918638];
cacheRetrievals = [cacheRetrievals, 190385];
cacheSize = [cacheSize, 1398941];
cacheClears = [cacheClears, 0];

%Turn: 31
movesGenerated = [movesGenerated, 908382];
searchTime = [searchTime, 12693];
evaluations = [evaluations, 227175];
cutoffs = [cutoffs, 657882];
cacheRetrievals = [cacheRetrievals, 11357];
cacheSize = [cacheSize, 1398941];
cacheClears = [cacheClears, 0];

%Turn: 32
movesGenerated = [movesGenerated, 740762];
searchTime = [searchTime, 4007];
evaluations = [evaluations, 168928];
cutoffs = [cutoffs, 550418];
cacheRetrievals = [cacheRetrievals, 126815];
cacheSize = [cacheSize, 1440895];
cacheClears = [cacheClears, 0];

%Turn: 33
movesGenerated = [movesGenerated, 667986];
searchTime = [searchTime, 10737];
evaluations = [evaluations, 207657];
cutoffs = [cutoffs, 441097];
cacheRetrievals = [cacheRetrievals, 8646];
cacheSize = [cacheSize, 1440895];
cacheClears = [cacheClears, 0];

%Turn: 34
movesGenerated = [movesGenerated, 237303];
searchTime = [searchTime, 990];
evaluations = [evaluations, 22452];
cutoffs = [cutoffs, 207871];
cacheRetrievals = [cacheRetrievals, 13296];
cacheSize = [cacheSize, 1449986];
cacheClears = [cacheClears, 0];

%Turn: 35
movesGenerated = [movesGenerated, 515064];
searchTime = [searchTime, 10213];
evaluations = [evaluations, 208524];
cutoffs = [cutoffs, 291744];
cacheRetrievals = [cacheRetrievals, 19211];
cacheSize = [cacheSize, 1449986];
cacheClears = [cacheClears, 0];

%Turn: 36
movesGenerated = [movesGenerated, 57043];
searchTime = [searchTime, 238];
evaluations = [evaluations, 3249];
cutoffs = [cutoffs, 51751];
cacheRetrievals = [cacheRetrievals, 1318];
cacheSize = [cacheSize, 1451889];
cacheClears = [cacheClears, 0];

%Turn: 37
movesGenerated = [movesGenerated, 226033];
searchTime = [searchTime, 4803];
evaluations = [evaluations, 99156];
cutoffs = [cutoffs, 119654];
cacheRetrievals = [cacheRetrievals, 6188];
cacheSize = [cacheSize, 1451889];
cacheClears = [cacheClears, 0];

%Turn: 38
movesGenerated = [movesGenerated, 576843];
searchTime = [searchTime, 2520];
evaluations = [evaluations, 56827];
cutoffs = [cutoffs, 493724];
cacheRetrievals = [cacheRetrievals, 34660];
cacheSize = [cacheSize, 1474006];
cacheClears = [cacheClears, 0];

%Turn: 39
movesGenerated = [movesGenerated, 211981];
searchTime = [searchTime, 3532];
evaluations = [evaluations, 84376];
cutoffs = [cutoffs, 119271];
cacheRetrievals = [cacheRetrievals, 4722];
cacheSize = [cacheSize, 1474006];
cacheClears = [cacheClears, 0];

%Turn: 40
movesGenerated = [movesGenerated, 585304];
searchTime = [searchTime, 2647];
evaluations = [evaluations, 52575];
cutoffs = [cutoffs, 504520];
cacheRetrievals = [cacheRetrievals, 32618];
cacheSize = [cacheSize, 1493808];
cacheClears = [cacheClears, 0];

%Turn: 41
movesGenerated = [movesGenerated, 787077];
searchTime = [searchTime, 13939];
evaluations = [evaluations, 320586];
cutoffs = [cutoffs, 441869];
cacheRetrievals = [cacheRetrievals, 8782];
cacheSize = [cacheSize, 1493808];
cacheClears = [cacheClears, 0];

%Turn: 42
movesGenerated = [movesGenerated, 84099];
searchTime = [searchTime, 449];
evaluations = [evaluations, 7580];
cutoffs = [cutoffs, 72477];
cacheRetrievals = [cacheRetrievals, 3189];
cacheSize = [cacheSize, 1498135];
cacheClears = [cacheClears, 0];

%Turn: 43
