%configuration << 
%move generation
USE_FLAT_STACK = 1
USE_EN_PASSANT = 0
ONLY_GENERATE_LEGAL_MOVES = 0

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
movesGenerated = [movesGenerated, 506477];
searchTime = [searchTime, 2439];
evaluations = [evaluations, 263391];
cutoffs = [cutoffs, 223905];
cacheRetrievals = [cacheRetrievals, 141578];
cacheSize = [cacheSize, 121813];
cacheClears = [cacheClears, 0];

%Turn: 1
movesGenerated = [movesGenerated, 920346];
searchTime = [searchTime, 6535];
evaluations = [evaluations, 399380];
cutoffs = [cutoffs, 487872];
cacheRetrievals = [cacheRetrievals, 14978];
cacheSize = [cacheSize, 121813];
cacheClears = [cacheClears, 0];

%Turn: 2
movesGenerated = [movesGenerated, 2164936];
searchTime = [searchTime, 10334];
evaluations = [evaluations, 1225942];
cutoffs = [cutoffs, 881083];
cacheRetrievals = [cacheRetrievals, 821628];
cacheSize = [cacheSize, 526121];
cacheClears = [cacheClears, 0];

%Turn: 3
movesGenerated = [movesGenerated, 8199643];
searchTime = [searchTime, 96971];
evaluations = [evaluations, 5026065];
cutoffs = [cutoffs, 2940305];
cacheRetrievals = [cacheRetrievals, 486436];
cacheSize = [cacheSize, 526121];
cacheClears = [cacheClears, 0];

%Turn: 4
movesGenerated = [movesGenerated, 10400405];
searchTime = [searchTime, 54529];
evaluations = [evaluations, 6622633];
cutoffs = [cutoffs, 3516460];
cacheRetrievals = [cacheRetrievals, 5098681];
cacheSize = [cacheSize, 2049891];
cacheClears = [cacheClears, 0];

%Turn: 5
movesGenerated = [movesGenerated, 12976200];
searchTime = [searchTime, 177110];
evaluations = [evaluations, 7753143];
cutoffs = [cutoffs, 4876153];
cacheRetrievals = [cacheRetrievals, 773685];
cacheSize = [cacheSize, 2049891];
cacheClears = [cacheClears, 0];

%Turn: 6
movesGenerated = [movesGenerated, 18098783];
searchTime = [searchTime, 84747];
evaluations = [evaluations, 9181135];
cutoffs = [cutoffs, 8488437];
cacheRetrievals = [cacheRetrievals, 7175945];
cacheSize = [cacheSize, 4054638];
cacheClears = [cacheClears, 0];

%Turn: 7
movesGenerated = [movesGenerated, 19356050];
searchTime = [searchTime, 295398];
evaluations = [evaluations, 11901374];
cutoffs = [cutoffs, 6968209];
cacheRetrievals = [cacheRetrievals, 1236554];
cacheSize = [cacheSize, 4054638];
cacheClears = [cacheClears, 0];

%Turn: 8
movesGenerated = [movesGenerated, 44082187];
searchTime = [searchTime, 128936];
evaluations = [evaluations, 10471892];
cutoffs = [cutoffs, 32554045];
cacheRetrievals = [cacheRetrievals, 7656341];
cacheSize = [cacheSize, 6868131];
cacheClears = [cacheClears, 0];

%Turn: 9
movesGenerated = [movesGenerated, 17079841];
searchTime = [searchTime, 285196];
evaluations = [evaluations, 10663322];
cutoffs = [cutoffs, 5986696];
cacheRetrievals = [cacheRetrievals, 911941];
cacheSize = [cacheSize, 6868131];
cacheClears = [cacheClears, 0];

%Turn: 10
movesGenerated = [movesGenerated, 35697687];
searchTime = [searchTime, 160203];
evaluations = [evaluations, 11536493];
cutoffs = [cutoffs, 23287878];
cacheRetrievals = [cacheRetrievals, 7790399];
cacheSize = [cacheSize, 2223838];
cacheClears = [cacheClears, 1];

%Turn: 11
movesGenerated = [movesGenerated, 14846684];
searchTime = [searchTime, 195092];
evaluations = [evaluations, 7122252];
cutoffs = [cutoffs, 7352740];
cacheRetrievals = [cacheRetrievals, 765523];
cacheSize = [cacheSize, 2223838];
cacheClears = [cacheClears, 0];

%Turn: 12
movesGenerated = [movesGenerated, 12860845];
searchTime = [searchTime, 87535];
evaluations = [evaluations, 8619393];
cutoffs = [cutoffs, 3895226];
cacheRetrievals = [cacheRetrievals, 6718051];
cacheSize = [cacheSize, 4124624];
cacheClears = [cacheClears, 0];

%Turn: 13
movesGenerated = [movesGenerated, 8929641];
searchTime = [searchTime, 138773];
evaluations = [evaluations, 4968203];
cutoffs = [cutoffs, 3735739];
cacheRetrievals = [cacheRetrievals, 436633];
cacheSize = [cacheSize, 4124624];
cacheClears = [cacheClears, 0];

%Turn: 14
movesGenerated = [movesGenerated, 15905948];
searchTime = [searchTime, 112625];
evaluations = [evaluations, 9545769];
cutoffs = [cutoffs, 5958249];
cacheRetrievals = [cacheRetrievals, 6994929];
cacheSize = [cacheSize, 6674428];
cacheClears = [cacheClears, 0];

%Turn: 15
movesGenerated = [movesGenerated, 11037296];
searchTime = [searchTime, 186430];
evaluations = [evaluations, 6499578];
cutoffs = [cutoffs, 4263058];
cacheRetrievals = [cacheRetrievals, 535821];
cacheSize = [cacheSize, 6674428];
cacheClears = [cacheClears, 0];

%Turn: 16
movesGenerated = [movesGenerated, 37402696];
searchTime = [searchTime, 186208];
evaluations = [evaluations, 13686081];
cutoffs = [cutoffs, 22777234];
cacheRetrievals = [cacheRetrievals, 9324868];
cacheSize = [cacheSize, 2644998];
cacheClears = [cacheClears, 1];

%Turn: 17
movesGenerated = [movesGenerated, 36977160];
searchTime = [searchTime, 683940];
evaluations = [evaluations, 24529690];
cutoffs = [cutoffs, 11491603];
cacheRetrievals = [cacheRetrievals, 2136782];
cacheSize = [cacheSize, 2644998];
cacheClears = [cacheClears, 0];

%Turn: 18
movesGenerated = [movesGenerated, 34047444];
searchTime = [searchTime, 185887];
evaluations = [evaluations, 22049895];
cutoffs = [cutoffs, 11255642];
cacheRetrievals = [cacheRetrievals, 18650435];
cacheSize = [cacheSize, 6026164];
cacheClears = [cacheClears, 0];

%Turn: 19
movesGenerated = [movesGenerated, 59046963];
searchTime = [searchTime, 984093];
evaluations = [evaluations, 36183397];
cutoffs = [cutoffs, 21054886];
cacheRetrievals = [cacheRetrievals, 3177536];
cacheSize = [cacheSize, 6026164];
cacheClears = [cacheClears, 0];

%Turn: 20
movesGenerated = [movesGenerated, 7507732];
searchTime = [searchTime, 39289];
evaluations = [evaluations, 3426313];
cutoffs = [cutoffs, 3895375];
cacheRetrievals = [cacheRetrievals, 2424852];
cacheSize = [cacheSize, 7027179];
cacheClears = [cacheClears, 0];

%Turn: 21
movesGenerated = [movesGenerated, 2414754];
searchTime = [searchTime, 31041];
evaluations = [evaluations, 1307477];
cutoffs = [cutoffs, 1000480];
cacheRetrievals = [cacheRetrievals, 99145];
cacheSize = [cacheSize, 7027179];
cacheClears = [cacheClears, 0];

%Turn: 22
movesGenerated = [movesGenerated, 2089954];
searchTime = [searchTime, 12169];
evaluations = [evaluations, 1153612];
cutoffs = [cutoffs, 879397];
cacheRetrievals = [cacheRetrievals, 796235];
cacheSize = [cacheSize, 7384531];
cacheClears = [cacheClears, 0];

%Turn: 23
movesGenerated = [movesGenerated, 710359];
searchTime = [searchTime, 6931];
evaluations = [evaluations, 298755];
cutoffs = [cutoffs, 381013];
cacheRetrievals = [cacheRetrievals, 16448];
cacheSize = [cacheSize, 7384531];
cacheClears = [cacheClears, 0];

%Turn: 24
movesGenerated = [movesGenerated, 5612497];
searchTime = [searchTime, 23311];
evaluations = [evaluations, 2535528];
cutoffs = [cutoffs, 2924436];
cacheRetrievals = [cacheRetrievals, 1978571];
cacheSize = [cacheSize, 7939905];
cacheClears = [cacheClears, 0];

%Turn: 25
movesGenerated = [movesGenerated, 4513114];
searchTime = [searchTime, 47610];
evaluations = [evaluations, 2056194];
cutoffs = [cutoffs, 2280319];
cacheRetrievals = [cacheRetrievals, 120907];
cacheSize = [cacheSize, 7939905];
cacheClears = [cacheClears, 0];

%Turn: 26
movesGenerated = [movesGenerated, 8899207];
searchTime = [searchTime, 34644];
evaluations = [evaluations, 2359511];
cutoffs = [cutoffs, 6298788];
cacheRetrievals = [cacheRetrievals, 1289679];
cacheSize = [cacheSize, 620085];
cacheClears = [cacheClears, 1];

%Turn: 27
movesGenerated = [movesGenerated, 2900010];
searchTime = [searchTime, 34385];
evaluations = [evaluations, 1568089];
cutoffs = [cutoffs, 1238158];
cacheRetrievals = [cacheRetrievals, 154801];
cacheSize = [cacheSize, 620085];
cacheClears = [cacheClears, 0];

%Turn: 28
movesGenerated = [movesGenerated, 4462106];
searchTime = [searchTime, 23704];
evaluations = [evaluations, 2509374];
cutoffs = [cutoffs, 1833990];
cacheRetrievals = [cacheRetrievals, 1866375];
cacheSize = [cacheSize, 1262244];
cacheClears = [cacheClears, 0];

%Turn: 29
movesGenerated = [movesGenerated, 9094927];
searchTime = [searchTime, 107466];
evaluations = [evaluations, 4732749];
cutoffs = [cutoffs, 4071721];
cacheRetrievals = [cacheRetrievals, 470654];
cacheSize = [cacheSize, 1262244];
cacheClears = [cacheClears, 0];

%Turn: 30
movesGenerated = [movesGenerated, 8664429];
searchTime = [searchTime, 45327];
evaluations = [evaluations, 4703095];
cutoffs = [cutoffs, 3743178];
cacheRetrievals = [cacheRetrievals, 3508456];
cacheSize = [cacheSize, 2455039];
cacheClears = [cacheClears, 0];

%Turn: 31
movesGenerated = [movesGenerated, 18731956];
searchTime = [searchTime, 183636];
evaluations = [evaluations, 7916520];
cutoffs = [cutoffs, 10213407];
cacheRetrievals = [cacheRetrievals, 788941];
cacheSize = [cacheSize, 2455039];
cacheClears = [cacheClears, 0];

%Turn: 32
movesGenerated = [movesGenerated, 4671932];
searchTime = [searchTime, 20896];
evaluations = [evaluations, 2087677];
cutoffs = [cutoffs, 2466366];
cacheRetrievals = [cacheRetrievals, 1525677];
cacheSize = [cacheSize, 3016606];
cacheClears = [cacheClears, 0];

%Turn: 33
movesGenerated = [movesGenerated, 2648110];
searchTime = [searchTime, 34975];
evaluations = [evaluations, 1509476];
cutoffs = [cutoffs, 1049741];
cacheRetrievals = [cacheRetrievals, 119271];
cacheSize = [cacheSize, 3016606];
cacheClears = [cacheClears, 0];

%Turn: 34
movesGenerated = [movesGenerated, 2656296];
searchTime = [searchTime, 9621];
evaluations = [evaluations, 1068694];
cutoffs = [cutoffs, 1520052];
cacheRetrievals = [cacheRetrievals, 843208];
cacheSize = [cacheSize, 3241868];
cacheClears = [cacheClears, 0];

%Turn: 35
movesGenerated = [movesGenerated, 3132536];
searchTime = [searchTime, 41154];
evaluations = [evaluations, 1678710];
cutoffs = [cutoffs, 1354817];
cacheRetrievals = [cacheRetrievals, 60711];
cacheSize = [cacheSize, 3241868];
cacheClears = [cacheClears, 0];

%Turn: 36
movesGenerated = [movesGenerated, 3023017];
searchTime = [searchTime, 10415];
evaluations = [evaluations, 876333];
cutoffs = [cutoffs, 2070867];
cacheRetrievals = [cacheRetrievals, 577870];
cacheSize = [cacheSize, 3540062];
cacheClears = [cacheClears, 0];

%Turn: 37
movesGenerated = [movesGenerated, 4664734];
searchTime = [searchTime, 55869];
evaluations = [evaluations, 2447904];
cutoffs = [cutoffs, 2073679];
cacheRetrievals = [cacheRetrievals, 293832];
cacheSize = [cacheSize, 3540062];
cacheClears = [cacheClears, 0];

%Turn: 38
movesGenerated = [movesGenerated, 7958456];
searchTime = [searchTime, 27754];
evaluations = [evaluations, 2724172];
cutoffs = [cutoffs, 5032528];
cacheRetrievals = [cacheRetrievals, 2041750];
cacheSize = [cacheSize, 4221421];
cacheClears = [cacheClears, 0];

%Turn: 39
movesGenerated = [movesGenerated, 5382651];
searchTime = [searchTime, 68498];
evaluations = [evaluations, 2885820];
cutoffs = [cutoffs, 2338871];
cacheRetrievals = [cacheRetrievals, 271331];
cacheSize = [cacheSize, 4221421];
cacheClears = [cacheClears, 0];

%Turn: 40
movesGenerated = [movesGenerated, 10018652];
searchTime = [searchTime, 40865];
evaluations = [evaluations, 3938144];
cutoffs = [cutoffs, 5831325];
cacheRetrievals = [cacheRetrievals, 2937160];
cacheSize = [cacheSize, 5219829];
cacheClears = [cacheClears, 0];

%Turn: 41
movesGenerated = [movesGenerated, 8634939];
searchTime = [searchTime, 116003];
evaluations = [evaluations, 5230338];
cutoffs = [cutoffs, 3146581];
cacheRetrievals = [cacheRetrievals, 544055];
cacheSize = [cacheSize, 5219829];
cacheClears = [cacheClears, 0];

%Turn: 42
movesGenerated = [movesGenerated, 17143747];
searchTime = [searchTime, 65518];
evaluations = [evaluations, 7598057];
cutoffs = [cutoffs, 9127417];
cacheRetrievals = [cacheRetrievals, 5902989];
cacheSize = [cacheSize, 6912701];
cacheClears = [cacheClears, 0];

%Turn: 43
movesGenerated = [movesGenerated, 11061876];
searchTime = [searchTime, 137307];
evaluations = [evaluations, 6537088];
cutoffs = [cutoffs, 4205433];
cacheRetrievals = [cacheRetrievals, 797924];
cacheSize = [cacheSize, 6912701];
cacheClears = [cacheClears, 0];

%Turn: 44
movesGenerated = [movesGenerated, 38505268];
searchTime = [searchTime, 120106];
evaluations = [evaluations, 10236609];
cutoffs = [cutoffs, 27368417];
cacheRetrievals = [cacheRetrievals, 6925954];
cacheSize = [cacheSize, 1809976];
cacheClears = [cacheClears, 1];

%Turn: 45
movesGenerated = [movesGenerated, 11466656];
searchTime = [searchTime, 123539];
evaluations = [evaluations, 5613090];
cutoffs = [cutoffs, 5509772];
cacheRetrievals = [cacheRetrievals, 798715];
cacheSize = [cacheSize, 1809976];
cacheClears = [cacheClears, 0];

%Turn: 46
movesGenerated = [movesGenerated, 18273310];
searchTime = [searchTime, 75219];
evaluations = [evaluations, 7597013];
cutoffs = [cutoffs, 10228649];
cacheRetrievals = [cacheRetrievals, 5695878];
cacheSize = [cacheSize, 3709963];
cacheClears = [cacheClears, 0];

%Turn: 47
