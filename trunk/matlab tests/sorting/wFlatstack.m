%configuration << 
%move generation
USE_FLAT_STACK = 1
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
movesGenerated = [movesGenerated, 453562];
searchTime = [searchTime, 2783];
evaluations = [evaluations, 231372];
cutoffs = [cutoffs, 205417];
cacheRetrievals = [cacheRetrievals, 122282];
cacheSize = [cacheSize, 109090];
cacheClears = [cacheClears, 0];

%Turn: 1
movesGenerated = [movesGenerated, 891040];
searchTime = [searchTime, 9140];
evaluations = [evaluations, 417536];
cutoffs = [cutoffs, 441724];
cacheRetrievals = [cacheRetrievals, 15720];
cacheSize = [cacheSize, 109090];
cacheClears = [cacheClears, 0];

%Turn: 2
movesGenerated = [movesGenerated, 1671844];
searchTime = [searchTime, 12751];
evaluations = [evaluations, 1032591];
cutoffs = [cutoffs, 591619];
cacheRetrievals = [cacheRetrievals, 651601];
cacheSize = [cacheSize, 490080];
cacheClears = [cacheClears, 0];

%Turn: 3
movesGenerated = [movesGenerated, 8246040];
searchTime = [searchTime, 120305];
evaluations = [evaluations, 5009323];
cutoffs = [cutoffs, 2982997];
cacheRetrievals = [cacheRetrievals, 471682];
cacheSize = [cacheSize, 490080];
cacheClears = [cacheClears, 0];

%Turn: 4
movesGenerated = [movesGenerated, 5976813];
searchTime = [searchTime, 42364];
evaluations = [evaluations, 3738123];
cutoffs = [cutoffs, 2076373];
cacheRetrievals = [cacheRetrievals, 2507142];
cacheSize = [cacheSize, 1721061];
cacheClears = [cacheClears, 0];

%Turn: 5
movesGenerated = [movesGenerated, 2527291];
searchTime = [searchTime, 31239];
evaluations = [evaluations, 1326477];
cutoffs = [cutoffs, 1130687];
cacheRetrievals = [cacheRetrievals, 174947];
cacheSize = [cacheSize, 1721061];
cacheClears = [cacheClears, 0];

%Turn: 6
movesGenerated = [movesGenerated, 8961907];
searchTime = [searchTime, 56743];
evaluations = [evaluations, 4972907];
cutoffs = [cutoffs, 3737665];
cacheRetrievals = [cacheRetrievals, 3633109];
cacheSize = [cacheSize, 3060858];
cacheClears = [cacheClears, 0];

%Turn: 7
movesGenerated = [movesGenerated, 6957027];
searchTime = [searchTime, 108535];
evaluations = [evaluations, 3602253];
cutoffs = [cutoffs, 3169068];
cacheRetrievals = [cacheRetrievals, 370701];
cacheSize = [cacheSize, 3060858];
cacheClears = [cacheClears, 0];

%Turn: 8
movesGenerated = [movesGenerated, 3121394];
searchTime = [searchTime, 15544];
evaluations = [evaluations, 1131615];
cutoffs = [cutoffs, 1899799];
cacheRetrievals = [cacheRetrievals, 842554];
cacheSize = [cacheSize, 3349919];
cacheClears = [cacheClears, 0];

%Turn: 9
movesGenerated = [movesGenerated, 1732843];
searchTime = [searchTime, 23494];
evaluations = [evaluations, 747885];
cutoffs = [cutoffs, 938791];
cacheRetrievals = [cacheRetrievals, 92518];
cacheSize = [cacheSize, 3349919];
cacheClears = [cacheClears, 0];

%Turn: 10
movesGenerated = [movesGenerated, 2395087];
searchTime = [searchTime, 14763];
evaluations = [evaluations, 842436];
cutoffs = [cutoffs, 1480053];
cacheRetrievals = [cacheRetrievals, 570903];
cacheSize = [cacheSize, 3621448];
cacheClears = [cacheClears, 0];

%Turn: 11
movesGenerated = [movesGenerated, 759381];
searchTime = [searchTime, 10106];
evaluations = [evaluations, 299252];
cutoffs = [cutoffs, 439788];
cacheRetrievals = [cacheRetrievals, 39545];
cacheSize = [cacheSize, 3621448];
cacheClears = [cacheClears, 0];

%Turn: 12
movesGenerated = [movesGenerated, 2139820];
searchTime = [searchTime, 13192];
evaluations = [evaluations, 663559];
cutoffs = [cutoffs, 1412607];
cacheRetrievals = [cacheRetrievals, 416286];
cacheSize = [cacheSize, 3868655];
cacheClears = [cacheClears, 0];

%Turn: 13
movesGenerated = [movesGenerated, 4115186];
searchTime = [searchTime, 78111];
evaluations = [evaluations, 2258258];
cutoffs = [cutoffs, 1753659];
cacheRetrievals = [cacheRetrievals, 163548];
cacheSize = [cacheSize, 3868655];
cacheClears = [cacheClears, 0];

%Turn: 14
movesGenerated = [movesGenerated, 2620903];
searchTime = [searchTime, 16042];
evaluations = [evaluations, 825617];
cutoffs = [cutoffs, 1720305];
cacheRetrievals = [cacheRetrievals, 532833];
cacheSize = [cacheSize, 4161385];
cacheClears = [cacheClears, 0];

%Turn: 15
movesGenerated = [movesGenerated, 5774787];
searchTime = [searchTime, 112438];
evaluations = [evaluations, 3123177];
cutoffs = [cutoffs, 2507042];
cacheRetrievals = [cacheRetrievals, 273185];
cacheSize = [cacheSize, 4161385];
cacheClears = [cacheClears, 0];

%Turn: 16
movesGenerated = [movesGenerated, 5713917];
searchTime = [searchTime, 37836];
evaluations = [evaluations, 1956456];
cutoffs = [cutoffs, 3592994];
cacheRetrievals = [cacheRetrievals, 1318049];
cacheSize = [cacheSize, 4799706];
cacheClears = [cacheClears, 0];

%Turn: 17
movesGenerated = [movesGenerated, 4587476];
searchTime = [searchTime, 84876];
evaluations = [evaluations, 2189949];
cutoffs = [cutoffs, 2285822];
cacheRetrievals = [cacheRetrievals, 127383];
cacheSize = [cacheSize, 4799706];
cacheClears = [cacheClears, 0];

%Turn: 18
movesGenerated = [movesGenerated, 6362213];
searchTime = [searchTime, 35382];
evaluations = [evaluations, 1731685];
cutoffs = [cutoffs, 4446042];
cacheRetrievals = [cacheRetrievals, 1196827];
cacheSize = [cacheSize, 5334537];
cacheClears = [cacheClears, 0];

%Turn: 19
movesGenerated = [movesGenerated, 5555201];
searchTime = [searchTime, 102091];
evaluations = [evaluations, 2609526];
cutoffs = [cutoffs, 2823836];
cacheRetrievals = [cacheRetrievals, 197889];
cacheSize = [cacheSize, 5334537];
cacheClears = [cacheClears, 0];

%Turn: 20
movesGenerated = [movesGenerated, 8091345];
searchTime = [searchTime, 53568];
evaluations = [evaluations, 2326284];
cutoffs = [cutoffs, 5525165];
cacheRetrievals = [cacheRetrievals, 1496627];
cacheSize = [cacheSize, 6164150];
cacheClears = [cacheClears, 0];

%Turn: 21
movesGenerated = [movesGenerated, 19348909];
searchTime = [searchTime, 313060];
evaluations = [evaluations, 7677448];
cutoffs = [cutoffs, 11257587];
cacheRetrievals = [cacheRetrievals, 591205];
cacheSize = [cacheSize, 6164150];
cacheClears = [cacheClears, 0];

%Turn: 22
movesGenerated = [movesGenerated, 823181];
searchTime = [searchTime, 5800];
evaluations = [evaluations, 201170];
cutoffs = [cutoffs, 596653];
cacheRetrievals = [cacheRetrievals, 112232];
cacheSize = [cacheSize, 6253088];
cacheClears = [cacheClears, 0];

%Turn: 23
movesGenerated = [movesGenerated, 12335415];
searchTime = [searchTime, 206418];
evaluations = [evaluations, 4725288];
cutoffs = [cutoffs, 7363269];
cacheRetrievals = [cacheRetrievals, 288522];
cacheSize = [cacheSize, 6253088];
cacheClears = [cacheClears, 0];

%Turn: 24
movesGenerated = [movesGenerated, 8598802];
searchTime = [searchTime, 60757];
evaluations = [evaluations, 3069872];
cutoffs = [cutoffs, 5275747];
cacheRetrievals = [cacheRetrievals, 2233791];
cacheSize = [cacheSize, 7088983];
cacheClears = [cacheClears, 0];

%Turn: 25
movesGenerated = [movesGenerated, 1532012];
searchTime = [searchTime, 28283];
evaluations = [evaluations, 621412];
cutoffs = [cutoffs, 880551];
cacheRetrievals = [cacheRetrievals, 22601];
cacheSize = [cacheSize, 7088983];
cacheClears = [cacheClears, 0];

%Turn: 26
movesGenerated = [movesGenerated, 10202452];
searchTime = [searchTime, 68688];
evaluations = [evaluations, 3426493];
cutoffs = [cutoffs, 6456230];
cacheRetrievals = [cacheRetrievals, 2525673];
cacheSize = [cacheSize, 7989638];
cacheClears = [cacheClears, 0];

%Turn: 27
movesGenerated = [movesGenerated, 15354871];
searchTime = [searchTime, 234367];
evaluations = [evaluations, 5534710];
cutoffs = [cutoffs, 9512790];
cacheRetrievals = [cacheRetrievals, 627965];
cacheSize = [cacheSize, 7989638];
cacheClears = [cacheClears, 0];

%Turn: 28
movesGenerated = [movesGenerated, 10499134];
searchTime = [searchTime, 73999];
evaluations = [evaluations, 2952991];
cutoffs = [cutoffs, 7234286];
cacheRetrievals = [cacheRetrievals, 1782996];
cacheSize = [cacheSize, 770982];
cacheClears = [cacheClears, 1];

%Turn: 29
movesGenerated = [movesGenerated, 6268382];
searchTime = [searchTime, 115460];
evaluations = [evaluations, 2677140];
cutoffs = [cutoffs, 3454348];
cacheRetrievals = [cacheRetrievals, 182946];
cacheSize = [cacheSize, 770982];
cacheClears = [cacheClears, 0];

%Turn: 30
movesGenerated = [movesGenerated, 10496866];
searchTime = [searchTime, 58754];
evaluations = [evaluations, 2872808];
cutoffs = [cutoffs, 7327496];
cacheRetrievals = [cacheRetrievals, 2105046];
cacheSize = [cacheSize, 1538648];
cacheClears = [cacheClears, 0];

%Turn: 31
movesGenerated = [movesGenerated, 2429320];
searchTime = [searchTime, 48178];
evaluations = [evaluations, 1053243];
cutoffs = [cutoffs, 1319022];
cacheRetrievals = [cacheRetrievals, 119990];
cacheSize = [cacheSize, 1538648];
cacheClears = [cacheClears, 0];

%Turn: 32
movesGenerated = [movesGenerated, 4092883];
searchTime = [searchTime, 21331];
evaluations = [evaluations, 815611];
cutoffs = [cutoffs, 3151201];
cacheRetrievals = [cacheRetrievals, 571575];
cacheSize = [cacheSize, 1781789];
cacheClears = [cacheClears, 0];

%Turn: 33
movesGenerated = [movesGenerated, 5943477];
searchTime = [searchTime, 159861];
evaluations = [evaluations, 3394590];
cutoffs = [cutoffs, 2409785];
cacheRetrievals = [cacheRetrievals, 227677];
cacheSize = [cacheSize, 1781789];
cacheClears = [cacheClears, 0];

%Turn: 34
movesGenerated = [movesGenerated, 1095634];
searchTime = [searchTime, 6715];
evaluations = [evaluations, 278316];
cutoffs = [cutoffs, 783164];
cacheRetrievals = [cacheRetrievals, 189599];
cacheSize = [cacheSize, 1870271];
cacheClears = [cacheClears, 0];

%Turn: 35
movesGenerated = [movesGenerated, 2420644];
searchTime = [searchTime, 65050];
evaluations = [evaluations, 1381796];
cutoffs = [cutoffs, 978326];
cacheRetrievals = [cacheRetrievals, 115354];
cacheSize = [cacheSize, 1870271];
cacheClears = [cacheClears, 0];

%Turn: 36
movesGenerated = [movesGenerated, 167139];
searchTime = [searchTime, 742];
evaluations = [evaluations, 16680];
cutoffs = [cutoffs, 144557];
cacheRetrievals = [cacheRetrievals, 9660];
cacheSize = [cacheSize, 1877190];
cacheClears = [cacheClears, 0];

%Turn: 37
movesGenerated = [movesGenerated, 1089197];
searchTime = [searchTime, 25989];
evaluations = [evaluations, 580827];
cutoffs = [cutoffs, 479524];
cacheRetrievals = [cacheRetrievals, 33412];
cacheSize = [cacheSize, 1877190];
cacheClears = [cacheClears, 0];

%Turn: 38
movesGenerated = [movesGenerated, 1437690];
searchTime = [searchTime, 7551];
evaluations = [evaluations, 233593];
cutoffs = [cutoffs, 1137453];
cacheRetrievals = [cacheRetrievals, 144254];
cacheSize = [cacheSize, 1965926];
cacheClears = [cacheClears, 0];

%Turn: 39
movesGenerated = [movesGenerated, 1222211];
searchTime = [searchTime, 25670];
evaluations = [evaluations, 684849];
cutoffs = [cutoffs, 504223];
cacheRetrievals = [cacheRetrievals, 54214];
cacheSize = [cacheSize, 1965926];
cacheClears = [cacheClears, 0];

%Turn: 40
movesGenerated = [movesGenerated, 1148867];
searchTime = [searchTime, 6083];
evaluations = [evaluations, 170749];
cutoffs = [cutoffs, 919629];
cacheRetrievals = [cacheRetrievals, 110207];
cacheSize = [cacheSize, 2025969];
cacheClears = [cacheClears, 0];

%Turn: 41
movesGenerated = [movesGenerated, 2597883];
searchTime = [searchTime, 54492];
evaluations = [evaluations, 1465829];
cutoffs = [cutoffs, 1065372];
cacheRetrievals = [cacheRetrievals, 122214];
cacheSize = [cacheSize, 2025969];
cacheClears = [cacheClears, 0];

%Turn: 42
movesGenerated = [movesGenerated, 129953];
searchTime = [searchTime, 607];
evaluations = [evaluations, 10786];
cutoffs = [cutoffs, 112707];
cacheRetrievals = [cacheRetrievals, 5581];
cacheSize = [cacheSize, 2031051];
cacheClears = [cacheClears, 0];

%Turn: 43
