%configuration << 
%move generation
USE_FLAT_STACK = 0
USE_EN_PASSANT = 0
ONLY_GENERATE_LEGAL_MOVES = 1

%minimax
USE_MINIMAX_ONLY = 1
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
movesGenerated = [movesGenerated, 206603];
searchTime = [searchTime, 3269];
evaluations = [evaluations, 197281];
cacheSize = [cacheSize, 0];
cacheRetrievals = [cacheRetrievals, 0];
cutoffs = [cutoffs, 0];

%Turn: 1
movesGenerated = [movesGenerated, 416741];
searchTime = [searchTime, 3891];
evaluations = [evaluations, 402988];
cacheSize = [cacheSize, 140043];
cacheRetrievals = [cacheRetrievals, 262945];
cutoffs = [cutoffs, 0];

%Turn: 2
movesGenerated = [movesGenerated, 851679];
searchTime = [searchTime, 16930];
evaluations = [evaluations, 823479];
cacheSize = [cacheSize, 140043];
cacheRetrievals = [cacheRetrievals, 46041];
cutoffs = [cutoffs, 0];

%Turn: 3
movesGenerated = [movesGenerated, 1594895];
searchTime = [searchTime, 15566];
evaluations = [evaluations, 1554915];
cacheSize = [cacheSize, 618486];
cacheRetrievals = [cacheRetrievals, 1076472];
cutoffs = [cutoffs, 0];

%Turn: 4
movesGenerated = [movesGenerated, 1709747];
searchTime = [searchTime, 38984];
evaluations = [evaluations, 1653584];
cacheSize = [cacheSize, 618486];
cacheRetrievals = [cacheRetrievals, 91182];
cutoffs = [cutoffs, 0];

%Turn: 5
movesGenerated = [movesGenerated, 1443786];
searchTime = [searchTime, 15138];
evaluations = [evaluations, 1407372];
cacheSize = [cacheSize, 1075159];
cacheRetrievals = [cacheRetrievals, 950698];
cutoffs = [cutoffs, 0];

%Turn: 6
movesGenerated = [movesGenerated, 2004095];
searchTime = [searchTime, 46199];
evaluations = [evaluations, 1946176];
cacheSize = [cacheSize, 1075159];
cacheRetrievals = [cacheRetrievals, 450083];
cutoffs = [cutoffs, 0];

%Turn: 7
movesGenerated = [movesGenerated, 1021879];
searchTime = [searchTime, 12264];
evaluations = [evaluations, 995915];
cacheSize = [cacheSize, 1432873];
cacheRetrievals = [cacheRetrievals, 638201];
cutoffs = [cutoffs, 0];

%Turn: 8
movesGenerated = [movesGenerated, 500287];
searchTime = [searchTime, 10444];
evaluations = [evaluations, 480663];
cacheSize = [cacheSize, 1432873];
cacheRetrievals = [cacheRetrievals, 20694];
cutoffs = [cutoffs, 0];

%Turn: 9
movesGenerated = [movesGenerated, 562705];
searchTime = [searchTime, 5669];
evaluations = [evaluations, 542291];
cacheSize = [cacheSize, 1602371];
cacheRetrievals = [cacheRetrievals, 372793];
cutoffs = [cutoffs, 0];

%Turn: 10
movesGenerated = [movesGenerated, 529447];
searchTime = [searchTime, 11669];
evaluations = [evaluations, 509224];
cacheSize = [cacheSize, 1602371];
cacheRetrievals = [cacheRetrievals, 20719];
cutoffs = [cutoffs, 0];

%Turn: 11
movesGenerated = [movesGenerated, 425298];
searchTime = [searchTime, 4610];
evaluations = [evaluations, 408830];
cacheSize = [cacheSize, 1732868];
cacheRetrievals = [cacheRetrievals, 278333];
cutoffs = [cutoffs, 0];

%Turn: 12
movesGenerated = [movesGenerated, 477739];
searchTime = [searchTime, 9190];
evaluations = [evaluations, 459981];
cacheSize = [cacheSize, 1732868];
cacheRetrievals = [cacheRetrievals, 133928];
cutoffs = [cutoffs, 0];

%Turn: 13
movesGenerated = [movesGenerated, 576200];
searchTime = [searchTime, 6159];
evaluations = [evaluations, 554684];
cacheSize = [cacheSize, 1889578];
cacheRetrievals = [cacheRetrievals, 397974];
cutoffs = [cutoffs, 0];

%Turn: 14
movesGenerated = [movesGenerated, 686355];
searchTime = [searchTime, 17633];
evaluations = [evaluations, 663361];
cacheSize = [cacheSize, 1889578];
cacheRetrievals = [cacheRetrievals, 76820];
cutoffs = [cutoffs, 0];

%Turn: 15
movesGenerated = [movesGenerated, 907208];
searchTime = [searchTime, 11216];
evaluations = [evaluations, 877273];
cacheSize = [cacheSize, 2159294];
cacheRetrievals = [cacheRetrievals, 607557];
cutoffs = [cutoffs, 0];

%Turn: 16
movesGenerated = [movesGenerated, 905748];
searchTime = [searchTime, 20788];
evaluations = [evaluations, 876830];
cacheSize = [cacheSize, 2159294];
cacheRetrievals = [cacheRetrievals, 252081];
cutoffs = [cutoffs, 0];

%Turn: 17
movesGenerated = [movesGenerated, 842480];
searchTime = [searchTime, 10491];
evaluations = [evaluations, 812348];
cacheSize = [cacheSize, 2408726];
cacheRetrievals = [cacheRetrievals, 562916];
cutoffs = [cutoffs, 0];

%Turn: 18
movesGenerated = [movesGenerated, 556467];
searchTime = [searchTime, 15841];
evaluations = [evaluations, 538688];
cacheSize = [cacheSize, 2408726];
cacheRetrievals = [cacheRetrievals, 23211];
cutoffs = [cutoffs, 0];

%Turn: 19
movesGenerated = [movesGenerated, 377879];
searchTime = [searchTime, 4517];
evaluations = [evaluations, 361851];
cacheSize = [cacheSize, 2525032];
cacheRetrievals = [cacheRetrievals, 245545];
cutoffs = [cutoffs, 0];

%Turn: 20
movesGenerated = [movesGenerated, 429542];
searchTime = [searchTime, 11001];
evaluations = [evaluations, 413729];
cacheSize = [cacheSize, 2525032];
cacheRetrievals = [cacheRetrievals, 25498];
cutoffs = [cutoffs, 0];

%Turn: 21
movesGenerated = [movesGenerated, 608889];
searchTime = [searchTime, 7309];
evaluations = [evaluations, 586390];
cacheSize = [cacheSize, 2707574];
cacheRetrievals = [cacheRetrievals, 403848];
cutoffs = [cutoffs, 0];

%Turn: 22
movesGenerated = [movesGenerated, 522475];
searchTime = [searchTime, 13064];
evaluations = [evaluations, 502179];
cacheSize = [cacheSize, 2707574];
cacheRetrievals = [cacheRetrievals, 43493];
cutoffs = [cutoffs, 0];

%Turn: 23
movesGenerated = [movesGenerated, 663507];
searchTime = [searchTime, 8022];
evaluations = [evaluations, 641067];
cacheSize = [cacheSize, 2900807];
cacheRetrievals = [cacheRetrievals, 447834];
cutoffs = [cutoffs, 0];

%Turn: 24
movesGenerated = [movesGenerated, 750995];
searchTime = [searchTime, 20314];
evaluations = [evaluations, 724271];
cacheSize = [cacheSize, 2900807];
cacheRetrievals = [cacheRetrievals, 58947];
cutoffs = [cutoffs, 0];

%Turn: 25
movesGenerated = [movesGenerated, 622849];
searchTime = [searchTime, 7965];
evaluations = [evaluations, 599724];
cacheSize = [cacheSize, 3091347];
cacheRetrievals = [cacheRetrievals, 409184];
cutoffs = [cutoffs, 0];

%Turn: 26
movesGenerated = [movesGenerated, 867436];
searchTime = [searchTime, 24378];
evaluations = [evaluations, 840701];
cacheSize = [cacheSize, 3091347];
cacheRetrievals = [cacheRetrievals, 54713];
cutoffs = [cutoffs, 0];

%Turn: 27
movesGenerated = [movesGenerated, 933350];
searchTime = [searchTime, 12563];
evaluations = [evaluations, 900806];
cacheSize = [cacheSize, 3374516];
cacheRetrievals = [cacheRetrievals, 617637];
cutoffs = [cutoffs, 0];

%Turn: 28
movesGenerated = [movesGenerated, 857093];
searchTime = [searchTime, 26040];
evaluations = [evaluations, 831281];
cacheSize = [cacheSize, 3374516];
cacheRetrievals = [cacheRetrievals, 34655];
cutoffs = [cutoffs, 0];

%Turn: 29
movesGenerated = [movesGenerated, 1553988];
searchTime = [searchTime, 21519];
evaluations = [evaluations, 1509224];
cacheSize = [cacheSize, 3836374];
cacheRetrievals = [cacheRetrievals, 1047365];
cutoffs = [cutoffs, 0];

%Turn: 30
movesGenerated = [movesGenerated, 1707908];
searchTime = [searchTime, 47681];
evaluations = [evaluations, 1656880];
cacheSize = [cacheSize, 3836374];
cacheRetrievals = [cacheRetrievals, 290551];
cutoffs = [cutoffs, 0];

%Turn: 31
movesGenerated = [movesGenerated, 1305173];
searchTime = [searchTime, 16188];
evaluations = [evaluations, 1265110];
cacheSize = [cacheSize, 4205754];
cacheRetrievals = [cacheRetrievals, 895730];
cutoffs = [cutoffs, 0];

%Turn: 32
movesGenerated = [movesGenerated, 136316];
searchTime = [searchTime, 4114];
evaluations = [evaluations, 132127];
cacheSize = [cacheSize, 4205754];
cacheRetrievals = [cacheRetrievals, 3719];
cutoffs = [cutoffs, 0];

%Turn: 33
movesGenerated = [movesGenerated, 1343603];
searchTime = [searchTime, 16731];
evaluations = [evaluations, 1302680];
cacheSize = [cacheSize, 4591891];
cacheRetrievals = [cacheRetrievals, 916543];
cutoffs = [cutoffs, 0];

%Turn: 34
movesGenerated = [movesGenerated, 132785];
searchTime = [searchTime, 3364];
evaluations = [evaluations, 128696];
cacheSize = [cacheSize, 4591891];
cacheRetrievals = [cacheRetrievals, 27556];
cutoffs = [cutoffs, 0];

%Turn: 35
movesGenerated = [movesGenerated, 988522];
searchTime = [searchTime, 12577];
evaluations = [evaluations, 953019];
cacheSize = [cacheSize, 4873146];
cacheRetrievals = [cacheRetrievals, 671752];
cutoffs = [cutoffs, 0];

%Turn: 36
movesGenerated = [movesGenerated, 904031];
searchTime = [searchTime, 27586];
evaluations = [evaluations, 875341];
cacheSize = [cacheSize, 4873146];
cacheRetrievals = [cacheRetrievals, 43889];
cutoffs = [cutoffs, 0];

%Turn: 37
movesGenerated = [movesGenerated, 708831];
searchTime = [searchTime, 9535];
evaluations = [evaluations, 681229];
cacheSize = [cacheSize, 5083405];
cacheRetrievals = [cacheRetrievals, 470934];
cutoffs = [cutoffs, 0];

%Turn: 38
movesGenerated = [movesGenerated, 32771];
searchTime = [searchTime, 990];
evaluations = [evaluations, 31856];
cacheSize = [cacheSize, 5083405];
cacheRetrievals = [cacheRetrievals, 6173];
cutoffs = [cutoffs, 0];

%Turn: 39
movesGenerated = [movesGenerated, 774385];
searchTime = [searchTime, 11304];
evaluations = [evaluations, 742236];
cacheSize = [cacheSize, 5310837];
cacheRetrievals = [cacheRetrievals, 514183];
cutoffs = [cutoffs, 0];

%Turn: 40
movesGenerated = [movesGenerated, 968079];
searchTime = [searchTime, 30958];
evaluations = [evaluations, 942655];
cacheSize = [cacheSize, 5310837];
cacheRetrievals = [cacheRetrievals, 88575];
cutoffs = [cutoffs, 0];

%Turn: 41
movesGenerated = [movesGenerated, 853228];
searchTime = [searchTime, 11893];
evaluations = [evaluations, 816417];
cacheSize = [cacheSize, 5555812];
cacheRetrievals = [cacheRetrievals, 570717];
cutoffs = [cutoffs, 0];

%Turn: 42
