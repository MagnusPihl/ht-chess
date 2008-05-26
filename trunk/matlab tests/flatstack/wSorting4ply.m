%configuration << 
%move generation
USE_FLAT_STACK = 0
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
movesGenerated = [movesGenerated, 108514];
searchTime = [searchTime, 532];
evaluations = [evaluations, 33528];
cutoffs = [cutoffs, 70031];
cacheRetrievals = [cacheRetrievals, 0];
cacheSize = [cacheSize, 0];
cacheClears = [cacheClears, 0];

%Turn: 1
movesGenerated = [movesGenerated, 186395];
searchTime = [searchTime, 562];
evaluations = [evaluations, 59715];
cutoffs = [cutoffs, 120775];
cacheRetrievals = [cacheRetrievals, 34980];
cacheSize = [cacheSize, 24735];
cacheClears = [cacheClears, 0];

%Turn: 2
movesGenerated = [movesGenerated, 174710];
searchTime = [searchTime, 601];
evaluations = [evaluations, 34613];
cutoffs = [cutoffs, 133755];
cacheRetrievals = [cacheRetrievals, 1406];
cacheSize = [cacheSize, 24735];
cacheClears = [cacheClears, 0];

%Turn: 3
movesGenerated = [movesGenerated, 380990];
searchTime = [searchTime, 617];
evaluations = [evaluations, 51048];
cutoffs = [cutoffs, 320018];
cacheRetrievals = [cacheRetrievals, 27931];
cacheSize = [cacheSize, 47852];
cacheClears = [cacheClears, 0];

%Turn: 4
movesGenerated = [movesGenerated, 444291];
searchTime = [searchTime, 1372];
evaluations = [evaluations, 75748];
cutoffs = [cutoffs, 353427];
cacheRetrievals = [cacheRetrievals, 4084];
cacheSize = [cacheSize, 47852];
cacheClears = [cacheClears, 0];

%Turn: 5
movesGenerated = [movesGenerated, 370478];
searchTime = [searchTime, 699];
evaluations = [evaluations, 53641];
cutoffs = [cutoffs, 307256];
cacheRetrievals = [cacheRetrievals, 26445];
cacheSize = [cacheSize, 75048];
cacheClears = [cacheClears, 0];

%Turn: 6
movesGenerated = [movesGenerated, 387780];
searchTime = [searchTime, 661];
evaluations = [evaluations, 31716];
cutoffs = [cutoffs, 345292];
cacheRetrievals = [cacheRetrievals, 981];
cacheSize = [cacheSize, 75048];
cacheClears = [cacheClears, 0];

%Turn: 7
movesGenerated = [movesGenerated, 408333];
searchTime = [searchTime, 731];
evaluations = [evaluations, 45724];
cutoffs = [cutoffs, 352467];
cacheRetrievals = [cacheRetrievals, 17623];
cacheSize = [cacheSize, 103147];
cacheClears = [cacheClears, 0];

%Turn: 8
movesGenerated = [movesGenerated, 609073];
searchTime = [searchTime, 1251];
evaluations = [evaluations, 58546];
cutoffs = [cutoffs, 534341];
cacheRetrievals = [cacheRetrievals, 527];
cacheSize = [cacheSize, 103147];
cacheClears = [cacheClears, 0];

%Turn: 9
movesGenerated = [movesGenerated, 565459];
searchTime = [searchTime, 1034];
evaluations = [evaluations, 65316];
cutoffs = [cutoffs, 485016];
cacheRetrievals = [cacheRetrievals, 26699];
cacheSize = [cacheSize, 141764];
cacheClears = [cacheClears, 0];

%Turn: 10
movesGenerated = [movesGenerated, 839455];
searchTime = [searchTime, 1900];
evaluations = [evaluations, 92003];
cutoffs = [cutoffs, 727884];
cacheRetrievals = [cacheRetrievals, 2256];
cacheSize = [cacheSize, 141764];
cacheClears = [cacheClears, 0];

%Turn: 11
movesGenerated = [movesGenerated, 809664];
searchTime = [searchTime, 969];
evaluations = [evaluations, 64979];
cutoffs = [cutoffs, 724854];
cacheRetrievals = [cacheRetrievals, 33958];
cacheSize = [cacheSize, 172785];
cacheClears = [cacheClears, 0];

%Turn: 12
movesGenerated = [movesGenerated, 676685];
searchTime = [searchTime, 1351];
evaluations = [evaluations, 63728];
cutoffs = [cutoffs, 597250];
cacheRetrievals = [cacheRetrievals, 2033];
cacheSize = [cacheSize, 172785];
cacheClears = [cacheClears, 0];

%Turn: 13
movesGenerated = [movesGenerated, 678024];
searchTime = [searchTime, 896];
evaluations = [evaluations, 61384];
cutoffs = [cutoffs, 599596];
cacheRetrievals = [cacheRetrievals, 32358];
cacheSize = [cacheSize, 201803];
cacheClears = [cacheClears, 0];

%Turn: 14
movesGenerated = [movesGenerated, 317852];
searchTime = [searchTime, 639];
evaluations = [evaluations, 29235];
cutoffs = [cutoffs, 281065];
cacheRetrievals = [cacheRetrievals, 471];
cacheSize = [cacheSize, 201803];
cacheClears = [cacheClears, 0];

%Turn: 15
movesGenerated = [movesGenerated, 333758];
searchTime = [searchTime, 521];
evaluations = [evaluations, 28599];
cutoffs = [cutoffs, 295915];
cacheRetrievals = [cacheRetrievals, 13288];
cacheSize = [cacheSize, 217108];
cacheClears = [cacheClears, 0];

%Turn: 16
movesGenerated = [movesGenerated, 313649];
searchTime = [searchTime, 645];
evaluations = [evaluations, 33455];
cutoffs = [cutoffs, 273062];
cacheRetrievals = [cacheRetrievals, 4452];
cacheSize = [cacheSize, 217108];
cacheClears = [cacheClears, 0];

%Turn: 17
movesGenerated = [movesGenerated, 427671];
searchTime = [searchTime, 614];
evaluations = [evaluations, 40346];
cutoffs = [cutoffs, 374774];
cacheRetrievals = [cacheRetrievals, 21167];
cacheSize = [cacheSize, 236281];
cacheClears = [cacheClears, 0];

%Turn: 18
movesGenerated = [movesGenerated, 251280];
searchTime = [searchTime, 540];
evaluations = [evaluations, 24930];
cutoffs = [cutoffs, 220317];
cacheRetrievals = [cacheRetrievals, 720];
cacheSize = [cacheSize, 236281];
cacheClears = [cacheClears, 0];

%Turn: 19
movesGenerated = [movesGenerated, 190615];
searchTime = [searchTime, 172];
evaluations = [evaluations, 9225];
cutoffs = [cutoffs, 176506];
cacheRetrievals = [cacheRetrievals, 4499];
cacheSize = [cacheSize, 241001];
cacheClears = [cacheClears, 0];

%Turn: 20
movesGenerated = [movesGenerated, 230630];
searchTime = [searchTime, 446];
evaluations = [evaluations, 20910];
cutoffs = [cutoffs, 204254];
cacheRetrievals = [cacheRetrievals, 158];
cacheSize = [cacheSize, 241001];
cacheClears = [cacheClears, 0];

%Turn: 21
movesGenerated = [movesGenerated, 368316];
searchTime = [searchTime, 409];
evaluations = [evaluations, 27031];
cutoffs = [cutoffs, 330796];
cacheRetrievals = [cacheRetrievals, 14405];
cacheSize = [cacheSize, 253625];
cacheClears = [cacheClears, 0];

%Turn: 22
movesGenerated = [movesGenerated, 353608];
searchTime = [searchTime, 668];
evaluations = [evaluations, 32783];
cutoffs = [cutoffs, 312152];
cacheRetrievals = [cacheRetrievals, 216];
cacheSize = [cacheSize, 253625];
cacheClears = [cacheClears, 0];

%Turn: 23
movesGenerated = [movesGenerated, 166617];
searchTime = [searchTime, 108];
evaluations = [evaluations, 5801];
cutoffs = [cutoffs, 156433];
cacheRetrievals = [cacheRetrievals, 3443];
cacheSize = [cacheSize, 255982];
cacheClears = [cacheClears, 0];

%Turn: 24
movesGenerated = [movesGenerated, 51272];
searchTime = [searchTime, 65];
evaluations = [evaluations, 3538];
cutoffs = [cutoffs, 46342];
cacheRetrievals = [cacheRetrievals, 36];
cacheSize = [cacheSize, 255982];
cacheClears = [cacheClears, 0];

%Turn: 25
movesGenerated = [movesGenerated, 102014];
searchTime = [searchTime, 140];
evaluations = [evaluations, 10123];
cutoffs = [cutoffs, 88240];
cacheRetrievals = [cacheRetrievals, 4438];
cacheSize = [cacheSize, 261667];
cacheClears = [cacheClears, 0];

%Turn: 26
movesGenerated = [movesGenerated, 68633];
searchTime = [searchTime, 75];
evaluations = [evaluations, 4638];
cutoffs = [cutoffs, 61487];
cacheRetrievals = [cacheRetrievals, 1340];
cacheSize = [cacheSize, 261667];
cacheClears = [cacheClears, 0];

%Turn: 27
movesGenerated = [movesGenerated, 40278];
searchTime = [searchTime, 32];
evaluations = [evaluations, 2056];
cutoffs = [cutoffs, 36796];
cacheRetrievals = [cacheRetrievals, 1089];
cacheSize = [cacheSize, 262634];
cacheClears = [cacheClears, 0];

%Turn: 28
movesGenerated = [movesGenerated, 84856];
searchTime = [searchTime, 334];
evaluations = [evaluations, 25318];
cutoffs = [cutoffs, 55597];
cacheRetrievals = [cacheRetrievals, 28];
cacheSize = [cacheSize, 262634];
cacheClears = [cacheClears, 0];

%Turn: 29
movesGenerated = [movesGenerated, 65326];
searchTime = [searchTime, 71];
evaluations = [evaluations, 5693];
cutoffs = [cutoffs, 57410];
cacheRetrievals = [cacheRetrievals, 2786];
cacheSize = [cacheSize, 265541];
cacheClears = [cacheClears, 0];

%Turn: 30
movesGenerated = [movesGenerated, 59384];
searchTime = [searchTime, 160];
evaluations = [evaluations, 11139];
cutoffs = [cutoffs, 45411];
cacheRetrievals = [cacheRetrievals, 13];
cacheSize = [cacheSize, 265541];
cacheClears = [cacheClears, 0];

%Turn: 31
movesGenerated = [movesGenerated, 71082];
searchTime = [searchTime, 133];
evaluations = [evaluations, 14985];
cutoffs = [cutoffs, 53461];
cacheRetrievals = [cacheRetrievals, 8624];
cacheSize = [cacheSize, 271902];
cacheClears = [cacheClears, 0];

%Turn: 32
movesGenerated = [movesGenerated, 43025];
searchTime = [searchTime, 70];
evaluations = [evaluations, 4186];
cutoffs = [cutoffs, 36767];
cacheRetrievals = [cacheRetrievals, 50];
cacheSize = [cacheSize, 271902];
cacheClears = [cacheClears, 0];

%Turn: 33
movesGenerated = [movesGenerated, 46522];
searchTime = [searchTime, 58];
evaluations = [evaluations, 4530];
cutoffs = [cutoffs, 40640];
cacheRetrievals = [cacheRetrievals, 1695];
cacheSize = [cacheSize, 274737];
cacheClears = [cacheClears, 0];

%Turn: 34
movesGenerated = [movesGenerated, 63376];
searchTime = [searchTime, 63];
evaluations = [evaluations, 3068];
cutoffs = [cutoffs, 57846];
cacheRetrievals = [cacheRetrievals, 97];
cacheSize = [cacheSize, 274737];
cacheClears = [cacheClears, 0];

%Turn: 35
movesGenerated = [movesGenerated, 73011];
searchTime = [searchTime, 66];
evaluations = [evaluations, 6351];
cutoffs = [cutoffs, 64656];
cacheRetrievals = [cacheRetrievals, 3684];
cacheSize = [cacheSize, 277403];
cacheClears = [cacheClears, 0];

%Turn: 36
movesGenerated = [movesGenerated, 59697];
searchTime = [searchTime, 95];
evaluations = [evaluations, 6455];
cutoffs = [cutoffs, 50671];
cacheRetrievals = [cacheRetrievals, 211];
cacheSize = [cacheSize, 277403];
cacheClears = [cacheClears, 0];

%Turn: 37
movesGenerated = [movesGenerated, 126333];
searchTime = [searchTime, 155];
evaluations = [evaluations, 15043];
cutoffs = [cutoffs, 107507];
cacheRetrievals = [cacheRetrievals, 7611];
cacheSize = [cacheSize, 284831];
cacheClears = [cacheClears, 0];

%Turn: 38
movesGenerated = [movesGenerated, 235129];
searchTime = [searchTime, 724];
evaluations = [evaluations, 57107];
cutoffs = [cutoffs, 169883];
cacheRetrievals = [cacheRetrievals, 1868];
cacheSize = [cacheSize, 284831];
cacheClears = [cacheClears, 0];

%Turn: 39
movesGenerated = [movesGenerated, 166490];
searchTime = [searchTime, 190];
evaluations = [evaluations, 17360];
cutoffs = [cutoffs, 144321];
cacheRetrievals = [cacheRetrievals, 9046];
cacheSize = [cacheSize, 293141];
cacheClears = [cacheClears, 0];

%Turn: 40
movesGenerated = [movesGenerated, 108181];
searchTime = [searchTime, 164];
evaluations = [evaluations, 11166];
cutoffs = [cutoffs, 93299];
cacheRetrievals = [cacheRetrievals, 235];
cacheSize = [cacheSize, 293141];
cacheClears = [cacheClears, 0];

%Turn: 41
movesGenerated = [movesGenerated, 216568];
searchTime = [searchTime, 259];
evaluations = [evaluations, 23446];
cutoffs = [cutoffs, 186438];
cacheRetrievals = [cacheRetrievals, 12061];
cacheSize = [cacheSize, 304519];
cacheClears = [cacheClears, 0];

%Turn: 42
movesGenerated = [movesGenerated, 103268];
searchTime = [searchTime, 125];
evaluations = [evaluations, 7775];
cutoffs = [cutoffs, 91890];
cacheRetrievals = [cacheRetrievals, 137];
cacheSize = [cacheSize, 304519];
cacheClears = [cacheClears, 0];

%Turn: 43
movesGenerated = [movesGenerated, 124960];
searchTime = [searchTime, 186];
evaluations = [evaluations, 16135];
cutoffs = [cutoffs, 105039];
cacheRetrievals = [cacheRetrievals, 7063];
cacheSize = [cacheSize, 313532];
cacheClears = [cacheClears, 0];

%Turn: 44
movesGenerated = [movesGenerated, 159881];
searchTime = [searchTime, 234];
evaluations = [evaluations, 15837];
cutoffs = [cutoffs, 139192];
cacheRetrievals = [cacheRetrievals, 410];
cacheSize = [cacheSize, 313532];
cacheClears = [cacheClears, 0];

%Turn: 45
movesGenerated = [movesGenerated, 239665];
searchTime = [searchTime, 255];
evaluations = [evaluations, 22952];
cutoffs = [cutoffs, 209189];
cacheRetrievals = [cacheRetrievals, 12593];
cacheSize = [cacheSize, 323885];
cacheClears = [cacheClears, 0];

%Turn: 46
movesGenerated = [movesGenerated, 131987];
searchTime = [searchTime, 169];
evaluations = [evaluations, 11030];
cutoffs = [cutoffs, 117114];
cacheRetrievals = [cacheRetrievals, 491];
cacheSize = [cacheSize, 323885];
cacheClears = [cacheClears, 0];

%Turn: 47
movesGenerated = [movesGenerated, 100557];
searchTime = [searchTime, 79];
evaluations = [evaluations, 5603];
cutoffs = [cutoffs, 92099];
cacheRetrievals = [cacheRetrievals, 2806];
cacheSize = [cacheSize, 326680];
cacheClears = [cacheClears, 0];

%Turn: 48
movesGenerated = [movesGenerated, 141345];
searchTime = [searchTime, 123];
evaluations = [evaluations, 6599];
cutoffs = [cutoffs, 130698];
cacheRetrievals = [cacheRetrievals, 68];
cacheSize = [cacheSize, 326680];
cacheClears = [cacheClears, 0];

%Turn: 49
