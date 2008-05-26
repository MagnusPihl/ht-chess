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
movesGenerated = [movesGenerated, 112367];
searchTime = [searchTime, 527];
evaluations = [evaluations, 36838];
cutoffs = [cutoffs, 70403];
cacheRetrievals = [cacheRetrievals, 0];
cacheSize = [cacheSize, 0];
cacheClears = [cacheClears, 0];

%Turn: 1
movesGenerated = [movesGenerated, 192855];
searchTime = [searchTime, 776];
evaluations = [evaluations, 104514];
cutoffs = [cutoffs, 82212];
cacheRetrievals = [cacheRetrievals, 66902];
cacheSize = [cacheSize, 37612];
cacheClears = [cacheClears, 0];

%Turn: 2
movesGenerated = [movesGenerated, 199163];
searchTime = [searchTime, 867];
evaluations = [evaluations, 57295];
cutoffs = [cutoffs, 134635];
cacheRetrievals = [cacheRetrievals, 2617];
cacheSize = [cacheSize, 37612];
cacheClears = [cacheClears, 0];

%Turn: 3
movesGenerated = [movesGenerated, 457768];
searchTime = [searchTime, 2052];
evaluations = [evaluations, 287379];
cutoffs = [cutoffs, 158208];
cacheRetrievals = [cacheRetrievals, 196220];
cacheSize = [cacheSize, 128771];
cacheClears = [cacheClears, 0];

%Turn: 4
movesGenerated = [movesGenerated, 638944];
searchTime = [searchTime, 3668];
evaluations = [evaluations, 248045];
cutoffs = [cutoffs, 369098];
cacheRetrievals = [cacheRetrievals, 24019];
cacheSize = [cacheSize, 128771];
cacheClears = [cacheClears, 0];

%Turn: 5
movesGenerated = [movesGenerated, 465885];
searchTime = [searchTime, 2285];
evaluations = [evaluations, 278228];
cutoffs = [cutoffs, 175668];
cacheRetrievals = [cacheRetrievals, 175819];
cacheSize = [cacheSize, 231180];
cacheClears = [cacheClears, 0];

%Turn: 6
movesGenerated = [movesGenerated, 510684];
searchTime = [searchTime, 2752];
evaluations = [evaluations, 198353];
cutoffs = [cutoffs, 298165];
cacheRetrievals = [cacheRetrievals, 41786];
cacheSize = [cacheSize, 231180];
cacheClears = [cacheClears, 0];

%Turn: 7
movesGenerated = [movesGenerated, 954929];
searchTime = [searchTime, 4291];
evaluations = [evaluations, 497892];
cutoffs = [cutoffs, 433235];
cacheRetrievals = [cacheRetrievals, 318909];
cacheSize = [cacheSize, 410157];
cacheClears = [cacheClears, 0];

%Turn: 8
movesGenerated = [movesGenerated, 851026];
searchTime = [searchTime, 4494];
evaluations = [evaluations, 271072];
cutoffs = [cutoffs, 557318];
cacheRetrievals = [cacheRetrievals, 21130];
cacheSize = [cacheSize, 410157];
cacheClears = [cacheClears, 0];

%Turn: 9
movesGenerated = [movesGenerated, 728966];
searchTime = [searchTime, 3352];
evaluations = [evaluations, 351575];
cutoffs = [cutoffs, 359376];
cacheRetrievals = [cacheRetrievals, 211165];
cacheSize = [cacheSize, 550559];
cacheClears = [cacheClears, 0];

%Turn: 10
movesGenerated = [movesGenerated, 857284];
searchTime = [searchTime, 4882];
evaluations = [evaluations, 289006];
cutoffs = [cutoffs, 547666];
cacheRetrievals = [cacheRetrievals, 23501];
cacheSize = [cacheSize, 550559];
cacheClears = [cacheClears, 0];

%Turn: 11
movesGenerated = [movesGenerated, 708354];
searchTime = [searchTime, 2616];
evaluations = [evaluations, 292740];
cutoffs = [cutoffs, 397402];
cacheRetrievals = [cacheRetrievals, 193211];
cacheSize = [cacheSize, 650088];
cacheClears = [cacheClears, 0];

%Turn: 12
movesGenerated = [movesGenerated, 1367384];
searchTime = [searchTime, 6971];
evaluations = [evaluations, 399374];
cutoffs = [cutoffs, 935800];
cacheRetrievals = [cacheRetrievals, 35800];
cacheSize = [cacheSize, 650088];
cacheClears = [cacheClears, 0];

%Turn: 13
movesGenerated = [movesGenerated, 799337];
searchTime = [searchTime, 3181];
evaluations = [evaluations, 344098];
cutoffs = [cutoffs, 432482];
cacheRetrievals = [cacheRetrievals, 218436];
cacheSize = [cacheSize, 775750];
cacheClears = [cacheClears, 0];

%Turn: 14
movesGenerated = [movesGenerated, 1030506];
searchTime = [searchTime, 7847];
evaluations = [evaluations, 470278];
cutoffs = [cutoffs, 534213];
cacheRetrievals = [cacheRetrievals, 32861];
cacheSize = [cacheSize, 775750];
cacheClears = [cacheClears, 0];

%Turn: 15
movesGenerated = [movesGenerated, 850436];
searchTime = [searchTime, 2285];
evaluations = [evaluations, 211974];
cutoffs = [cutoffs, 616510];
cacheRetrievals = [cacheRetrievals, 113745];
cacheSize = [cacheSize, 873979];
cacheClears = [cacheClears, 0];

%Turn: 16
movesGenerated = [movesGenerated, 164876];
searchTime = [searchTime, 1472];
evaluations = [evaluations, 99506];
cutoffs = [cutoffs, 59806];
cacheRetrievals = [cacheRetrievals, 4799];
cacheSize = [cacheSize, 873979];
cacheClears = [cacheClears, 0];

%Turn: 17
movesGenerated = [movesGenerated, 544108];
searchTime = [searchTime, 2003];
evaluations = [evaluations, 273596];
cutoffs = [cutoffs, 253380];
cacheRetrievals = [cacheRetrievals, 192185];
cacheSize = [cacheSize, 955390];
cacheClears = [cacheClears, 0];

%Turn: 18
movesGenerated = [movesGenerated, 495717];
searchTime = [searchTime, 4132];
evaluations = [evaluations, 269501];
cutoffs = [cutoffs, 209705];
cacheRetrievals = [cacheRetrievals, 14773];
cacheSize = [cacheSize, 955390];
cacheClears = [cacheClears, 0];

%Turn: 19
movesGenerated = [movesGenerated, 203314];
searchTime = [searchTime, 772];
evaluations = [evaluations, 60884];
cutoffs = [cutoffs, 135187];
cacheRetrievals = [cacheRetrievals, 22253];
cacheSize = [cacheSize, 994021];
cacheClears = [cacheClears, 0];

%Turn: 20
movesGenerated = [movesGenerated, 265626];
searchTime = [searchTime, 2040];
evaluations = [evaluations, 136225];
cutoffs = [cutoffs, 120353];
cacheRetrievals = [cacheRetrievals, 4736];
cacheSize = [cacheSize, 994021];
cacheClears = [cacheClears, 0];

%Turn: 21
movesGenerated = [movesGenerated, 265097];
searchTime = [searchTime, 733];
evaluations = [evaluations, 83493];
cutoffs = [cutoffs, 170831];
cacheRetrievals = [cacheRetrievals, 54277];
cacheSize = [cacheSize, 1023237];
cacheClears = [cacheClears, 0];

%Turn: 22
movesGenerated = [movesGenerated, 169713];
searchTime = [searchTime, 1156];
evaluations = [evaluations, 79542];
cutoffs = [cutoffs, 84475];
cacheRetrievals = [cacheRetrievals, 6411];
cacheSize = [cacheSize, 1023237];
cacheClears = [cacheClears, 0];

%Turn: 23
movesGenerated = [movesGenerated, 378681];
searchTime = [searchTime, 1696];
evaluations = [evaluations, 217789];
cutoffs = [cutoffs, 146133];
cacheRetrievals = [cacheRetrievals, 143499];
cacheSize = [cacheSize, 1097527];
cacheClears = [cacheClears, 0];

%Turn: 24
movesGenerated = [movesGenerated, 168099];
searchTime = [searchTime, 933];
evaluations = [evaluations, 66871];
cutoffs = [cutoffs, 95866];
cacheRetrievals = [cacheRetrievals, 10377];
cacheSize = [cacheSize, 1097527];
cacheClears = [cacheClears, 0];

%Turn: 25
movesGenerated = [movesGenerated, 521805];
searchTime = [searchTime, 1990];
evaluations = [evaluations, 282638];
cutoffs = [cutoffs, 219698];
cacheRetrievals = [cacheRetrievals, 203597];
cacheSize = [cacheSize, 1176568];
cacheClears = [cacheClears, 0];

%Turn: 26
movesGenerated = [movesGenerated, 346907];
searchTime = [searchTime, 1463];
evaluations = [evaluations, 91077];
cutoffs = [cutoffs, 244837];
cacheRetrievals = [cacheRetrievals, 4359];
cacheSize = [cacheSize, 1176568];
cacheClears = [cacheClears, 0];

%Turn: 27
movesGenerated = [movesGenerated, 182670];
searchTime = [searchTime, 734];
evaluations = [evaluations, 88114];
cutoffs = [cutoffs, 87782];
cacheRetrievals = [cacheRetrievals, 55940];
cacheSize = [cacheSize, 1208742];
cacheClears = [cacheClears, 0];

%Turn: 28
movesGenerated = [movesGenerated, 368592];
searchTime = [searchTime, 1457];
evaluations = [evaluations, 93605];
cutoffs = [cutoffs, 263537];
cacheRetrievals = [cacheRetrievals, 4751];
cacheSize = [cacheSize, 1208742];
cacheClears = [cacheClears, 0];

%Turn: 29
movesGenerated = [movesGenerated, 326012];
searchTime = [searchTime, 1173];
evaluations = [evaluations, 132754];
cutoffs = [cutoffs, 181868];
cacheRetrievals = [cacheRetrievals, 80667];
cacheSize = [cacheSize, 1260829];
cacheClears = [cacheClears, 0];

%Turn: 30
movesGenerated = [movesGenerated, 179945];
searchTime = [searchTime, 830];
evaluations = [evaluations, 56807];
cutoffs = [cutoffs, 117660];
cacheRetrievals = [cacheRetrievals, 7581];
cacheSize = [cacheSize, 1260829];
cacheClears = [cacheClears, 0];

%Turn: 31
movesGenerated = [movesGenerated, 259124];
searchTime = [searchTime, 712];
evaluations = [evaluations, 60117];
cutoffs = [cutoffs, 190805];
cacheRetrievals = [cacheRetrievals, 28475];
cacheSize = [cacheSize, 1292471];
cacheClears = [cacheClears, 0];

%Turn: 32
movesGenerated = [movesGenerated, 410032];
searchTime = [searchTime, 1661];
evaluations = [evaluations, 97906];
cutoffs = [cutoffs, 299041];
cacheRetrievals = [cacheRetrievals, 2808];
cacheSize = [cacheSize, 1292471];
cacheClears = [cacheClears, 0];

%Turn: 33
movesGenerated = [movesGenerated, 247261];
searchTime = [searchTime, 447];
evaluations = [evaluations, 38336];
cutoffs = [cutoffs, 201289];
cacheRetrievals = [cacheRetrievals, 18931];
cacheSize = [cacheSize, 1311876];
cacheClears = [cacheClears, 0];

%Turn: 34
movesGenerated = [movesGenerated, 192508];
searchTime = [searchTime, 974];
evaluations = [evaluations, 66547];
cutoffs = [cutoffs, 118945];
cacheRetrievals = [cacheRetrievals, 1879];
cacheSize = [cacheSize, 1311876];
cacheClears = [cacheClears, 0];

%Turn: 35
movesGenerated = [movesGenerated, 419950];
searchTime = [searchTime, 1171];
evaluations = [evaluations, 151039];
cutoffs = [cutoffs, 254956];
cacheRetrievals = [cacheRetrievals, 98701];
cacheSize = [cacheSize, 1364214];
cacheClears = [cacheClears, 0];

%Turn: 36
movesGenerated = [movesGenerated, 141045];
searchTime = [searchTime, 492];
evaluations = [evaluations, 36037];
cutoffs = [cutoffs, 99328];
cacheRetrievals = [cacheRetrievals, 1783];
cacheSize = [cacheSize, 1364214];
cacheClears = [cacheClears, 0];

%Turn: 37
movesGenerated = [movesGenerated, 119305];
searchTime = [searchTime, 451];
evaluations = [evaluations, 68813];
cutoffs = [cutoffs, 46017];
cacheRetrievals = [cacheRetrievals, 45702];
cacheSize = [cacheSize, 1387325];
cacheClears = [cacheClears, 0];

%Turn: 38
movesGenerated = [movesGenerated, 145541];
searchTime = [searchTime, 518];
evaluations = [evaluations, 39669];
cutoffs = [cutoffs, 99397];
cacheRetrievals = [cacheRetrievals, 1649];
cacheSize = [cacheSize, 1387325];
cacheClears = [cacheClears, 0];

%Turn: 39
movesGenerated = [movesGenerated, 118849];
searchTime = [searchTime, 307];
evaluations = [evaluations, 33965];
cutoffs = [cutoffs, 80431];
cacheRetrievals = [cacheRetrievals, 17203];
cacheSize = [cacheSize, 1404087];
cacheClears = [cacheClears, 0];

%Turn: 40
movesGenerated = [movesGenerated, 204572];
searchTime = [searchTime, 809];
evaluations = [evaluations, 62738];
cutoffs = [cutoffs, 131879];
cacheRetrievals = [cacheRetrievals, 1316];
cacheSize = [cacheSize, 1404087];
cacheClears = [cacheClears, 0];

%Turn: 41
movesGenerated = [movesGenerated, 119363];
searchTime = [searchTime, 208];
evaluations = [evaluations, 23964];
cutoffs = [cutoffs, 91236];
cacheRetrievals = [cacheRetrievals, 13737];
cacheSize = [cacheSize, 1414314];
cacheClears = [cacheClears, 0];

%Turn: 42
movesGenerated = [movesGenerated, 132124];
searchTime = [searchTime, 639];
evaluations = [evaluations, 49194];
cutoffs = [cutoffs, 75747];
cacheRetrievals = [cacheRetrievals, 1842];
cacheSize = [cacheSize, 1414314];
cacheClears = [cacheClears, 0];

%Turn: 43
movesGenerated = [movesGenerated, 87517];
searchTime = [searchTime, 336];
evaluations = [evaluations, 54019];
cutoffs = [cutoffs, 30142];
cacheRetrievals = [cacheRetrievals, 37441];
cacheSize = [cacheSize, 1430892];
cacheClears = [cacheClears, 0];

%Turn: 44
movesGenerated = [movesGenerated, 79010];
searchTime = [searchTime, 334];
evaluations = [evaluations, 26843];
cutoffs = [cutoffs, 48362];
cacheRetrievals = [cacheRetrievals, 2988];
cacheSize = [cacheSize, 1430892];
cacheClears = [cacheClears, 0];

%Turn: 45
movesGenerated = [movesGenerated, 60227];
searchTime = [searchTime, 219];
evaluations = [evaluations, 31340];
cutoffs = [cutoffs, 26588];
cacheRetrievals = [cacheRetrievals, 20180];
cacheSize = [cacheSize, 1442052];
cacheClears = [cacheClears, 0];

%Turn: 46
movesGenerated = [movesGenerated, 85692];
searchTime = [searchTime, 449];
evaluations = [evaluations, 33958];
cutoffs = [cutoffs, 47669];
cacheRetrievals = [cacheRetrievals, 1328];
cacheSize = [cacheSize, 1442052];
cacheClears = [cacheClears, 0];

%Turn: 47
movesGenerated = [movesGenerated, 108564];
searchTime = [searchTime, 436];
evaluations = [evaluations, 56210];
cutoffs = [cutoffs, 48425];
cacheRetrievals = [cacheRetrievals, 33246];
cacheSize = [cacheSize, 1465016];
cacheClears = [cacheClears, 0];

%Turn: 48
movesGenerated = [movesGenerated, 70117];
searchTime = [searchTime, 306];
evaluations = [evaluations, 24135];
cutoffs = [cutoffs, 42844];
cacheRetrievals = [cacheRetrievals, 3570];
cacheSize = [cacheSize, 1465016];
cacheClears = [cacheClears, 0];

%Turn: 49
movesGenerated = [movesGenerated, 190650];
searchTime = [searchTime, 861];
evaluations = [evaluations, 123879];
cutoffs = [cutoffs, 59738];
cacheRetrievals = [cacheRetrievals, 80919];
cacheSize = [cacheSize, 1507963];
cacheClears = [cacheClears, 0];

%Turn: 50
movesGenerated = [movesGenerated, 73077];
searchTime = [searchTime, 333];
evaluations = [evaluations, 25555];
cutoffs = [cutoffs, 44348];
cacheRetrievals = [cacheRetrievals, 2449];
cacheSize = [cacheSize, 1507963];
cacheClears = [cacheClears, 0];

%Turn: 51
movesGenerated = [movesGenerated, 205732];
searchTime = [searchTime, 761];
evaluations = [evaluations, 103427];
cutoffs = [cutoffs, 95644];
cacheRetrievals = [cacheRetrievals, 66540];
cacheSize = [cacheSize, 1544850];
cacheClears = [cacheClears, 0];

%Turn: 52
movesGenerated = [movesGenerated, 302214];
searchTime = [searchTime, 1779];
evaluations = [evaluations, 136188];
cutoffs = [cutoffs, 153638];
cacheRetrievals = [cacheRetrievals, 12360];
cacheSize = [cacheSize, 1544850];
cacheClears = [cacheClears, 0];

%Turn: 53
