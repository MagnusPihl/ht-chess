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
movesGenerated = [movesGenerated, 99123];
searchTime = [searchTime, 642];
evaluations = [evaluations, 32424];
cutoffs = [cutoffs, 62136];
cacheRetrievals = [cacheRetrievals, 0];
cacheSize = [cacheSize, 0];
cacheClears = [cacheClears, 0];

%Turn: 1
movesGenerated = [movesGenerated, 198688];
searchTime = [searchTime, 1181];
evaluations = [evaluations, 108603];
cutoffs = [cutoffs, 83779];
cacheRetrievals = [cacheRetrievals, 68855];
cacheSize = [cacheSize, 39748];
cacheClears = [cacheClears, 0];

%Turn: 2
movesGenerated = [movesGenerated, 475639];
searchTime = [searchTime, 4731];
evaluations = [evaluations, 183996];
cutoffs = [cutoffs, 276797];
cacheRetrievals = [cacheRetrievals, 3991];
cacheSize = [cacheSize, 39748];
cacheClears = [cacheClears, 0];

%Turn: 3
movesGenerated = [movesGenerated, 966272];
searchTime = [searchTime, 7398];
evaluations = [evaluations, 607105];
cutoffs = [cutoffs, 335898];
cacheRetrievals = [cacheRetrievals, 420757];
cacheSize = [cacheSize, 226096];
cacheClears = [cacheClears, 0];

%Turn: 4
movesGenerated = [movesGenerated, 1226035];
searchTime = [searchTime, 23223];
evaluations = [evaluations, 765186];
cutoffs = [cutoffs, 422201];
cacheRetrievals = [cacheRetrievals, 30924];
cacheSize = [cacheSize, 226096];
cacheClears = [cacheClears, 0];

%Turn: 5
movesGenerated = [movesGenerated, 469667];
searchTime = [searchTime, 4138];
evaluations = [evaluations, 254672];
cutoffs = [cutoffs, 203212];
cacheRetrievals = [cacheRetrievals, 156082];
cacheSize = [cacheSize, 324686];
cacheClears = [cacheClears, 0];

%Turn: 6
movesGenerated = [movesGenerated, 921087];
searchTime = [searchTime, 13781];
evaluations = [evaluations, 438377];
cutoffs = [cutoffs, 455978];
cacheRetrievals = [cacheRetrievals, 60745];
cacheSize = [cacheSize, 324686];
cacheClears = [cacheClears, 0];

%Turn: 7
movesGenerated = [movesGenerated, 559199];
searchTime = [searchTime, 3325];
evaluations = [evaluations, 167698];
cutoffs = [cutoffs, 377519];
cacheRetrievals = [cacheRetrievals, 88149];
cacheSize = [cacheSize, 404235];
cacheClears = [cacheClears, 0];

%Turn: 8
movesGenerated = [movesGenerated, 305092];
searchTime = [searchTime, 3155];
evaluations = [evaluations, 118160];
cutoffs = [cutoffs, 175417];
cacheRetrievals = [cacheRetrievals, 3286];
cacheSize = [cacheSize, 404235];
cacheClears = [cacheClears, 0];

%Turn: 9
movesGenerated = [movesGenerated, 200649];
searchTime = [searchTime, 1448];
evaluations = [evaluations, 95322];
cutoffs = [cutoffs, 98219];
cacheRetrievals = [cacheRetrievals, 57408];
cacheSize = [cacheSize, 442149];
cacheClears = [cacheClears, 0];

%Turn: 10
movesGenerated = [movesGenerated, 346725];
searchTime = [searchTime, 2441];
evaluations = [evaluations, 78654];
cutoffs = [cutoffs, 255147];
cacheRetrievals = [cacheRetrievals, 3416];
cacheSize = [cacheSize, 442149];
cacheClears = [cacheClears, 0];

%Turn: 11
movesGenerated = [movesGenerated, 297298];
searchTime = [searchTime, 1842];
evaluations = [evaluations, 116202];
cutoffs = [cutoffs, 169908];
cacheRetrievals = [cacheRetrievals, 75170];
cacheSize = [cacheSize, 483181];
cacheClears = [cacheClears, 0];

%Turn: 12
movesGenerated = [movesGenerated, 232904];
searchTime = [searchTime, 2708];
evaluations = [evaluations, 96652];
cutoffs = [cutoffs, 127796];
cacheRetrievals = [cacheRetrievals, 15726];
cacheSize = [cacheSize, 483181];
cacheClears = [cacheClears, 0];

%Turn: 13
movesGenerated = [movesGenerated, 230724];
searchTime = [searchTime, 1497];
evaluations = [evaluations, 87244];
cutoffs = [cutoffs, 135126];
cacheRetrievals = [cacheRetrievals, 55522];
cacheSize = [cacheSize, 514903];
cacheClears = [cacheClears, 0];

%Turn: 14
movesGenerated = [movesGenerated, 178796];
searchTime = [searchTime, 1827];
evaluations = [evaluations, 52064];
cutoffs = [cutoffs, 120736];
cacheRetrievals = [cacheRetrievals, 2335];
cacheSize = [cacheSize, 514903];
cacheClears = [cacheClears, 0];

%Turn: 15
movesGenerated = [movesGenerated, 281856];
searchTime = [searchTime, 2353];
evaluations = [evaluations, 104616];
cutoffs = [cutoffs, 168157];
cacheRetrievals = [cacheRetrievals, 53527];
cacheSize = [cacheSize, 565992];
cacheClears = [cacheClears, 0];

%Turn: 16
movesGenerated = [movesGenerated, 323451];
searchTime = [searchTime, 5107];
evaluations = [evaluations, 155424];
cutoffs = [cutoffs, 157713];
cacheRetrievals = [cacheRetrievals, 10664];
cacheSize = [cacheSize, 565992];
cacheClears = [cacheClears, 0];

%Turn: 17
movesGenerated = [movesGenerated, 260727];
searchTime = [searchTime, 1666];
evaluations = [evaluations, 65510];
cutoffs = [cutoffs, 186145];
cacheRetrievals = [cacheRetrievals, 32438];
cacheSize = [cacheSize, 599064];
cacheClears = [cacheClears, 0];

%Turn: 18
movesGenerated = [movesGenerated, 263976];
searchTime = [searchTime, 2946];
evaluations = [evaluations, 86635];
cutoffs = [cutoffs, 168856];
cacheRetrievals = [cacheRetrievals, 4084];
cacheSize = [cacheSize, 599064];
cacheClears = [cacheClears, 0];

%Turn: 19
movesGenerated = [movesGenerated, 169470];
searchTime = [searchTime, 1383];
evaluations = [evaluations, 74283];
cutoffs = [cutoffs, 88138];
cacheRetrievals = [cacheRetrievals, 41899];
cacheSize = [cacheSize, 631448];
cacheClears = [cacheClears, 0];

%Turn: 20
movesGenerated = [movesGenerated, 164659];
searchTime = [searchTime, 1578];
evaluations = [evaluations, 47928];
cutoffs = [cutoffs, 110831];
cacheRetrievals = [cacheRetrievals, 3017];
cacheSize = [cacheSize, 631448];
cacheClears = [cacheClears, 0];

%Turn: 21
movesGenerated = [movesGenerated, 237078];
searchTime = [searchTime, 1471];
evaluations = [evaluations, 70270];
cutoffs = [cutoffs, 158352];
cacheRetrievals = [cacheRetrievals, 39258];
cacheSize = [cacheSize, 662460];
cacheClears = [cacheClears, 0];

%Turn: 22
movesGenerated = [movesGenerated, 222767];
searchTime = [searchTime, 3015];
evaluations = [evaluations, 97763];
cutoffs = [cutoffs, 116597];
cacheRetrievals = [cacheRetrievals, 4040];
cacheSize = [cacheSize, 662460];
cacheClears = [cacheClears, 0];

%Turn: 23
movesGenerated = [movesGenerated, 317780];
searchTime = [searchTime, 2459];
evaluations = [evaluations, 98049];
cutoffs = [cutoffs, 209121];
cacheRetrievals = [cacheRetrievals, 43061];
cacheSize = [cacheSize, 717448];
cacheClears = [cacheClears, 0];

%Turn: 24
movesGenerated = [movesGenerated, 375779];
searchTime = [searchTime, 5836];
evaluations = [evaluations, 181565];
cutoffs = [cutoffs, 181272];
cacheRetrievals = [cacheRetrievals, 4777];
cacheSize = [cacheSize, 717448];
cacheClears = [cacheClears, 0];

%Turn: 25
movesGenerated = [movesGenerated, 234512];
searchTime = [searchTime, 1282];
evaluations = [evaluations, 54833];
cutoffs = [cutoffs, 170995];
cacheRetrievals = [cacheRetrievals, 31221];
cacheSize = [cacheSize, 741060];
cacheClears = [cacheClears, 0];

%Turn: 26
movesGenerated = [movesGenerated, 341463];
searchTime = [searchTime, 5235];
evaluations = [evaluations, 162047];
cutoffs = [cutoffs, 169101];
cacheRetrievals = [cacheRetrievals, 6322];
cacheSize = [cacheSize, 741060];
cacheClears = [cacheClears, 0];

%Turn: 27
movesGenerated = [movesGenerated, 289915];
searchTime = [searchTime, 1712];
evaluations = [evaluations, 58828];
cutoffs = [cutoffs, 221413];
cacheRetrievals = [cacheRetrievals, 27137];
cacheSize = [cacheSize, 772751];
cacheClears = [cacheClears, 0];

%Turn: 28
movesGenerated = [movesGenerated, 365499];
searchTime = [searchTime, 5896];
evaluations = [evaluations, 168969];
cutoffs = [cutoffs, 185716];
cacheRetrievals = [cacheRetrievals, 2795];
cacheSize = [cacheSize, 772751];
cacheClears = [cacheClears, 0];

%Turn: 29
movesGenerated = [movesGenerated, 1353175];
searchTime = [searchTime, 7472];
evaluations = [evaluations, 363624];
cutoffs = [cutoffs, 951840];
cacheRetrievals = [cacheRetrievals, 242271];
cacheSize = [cacheSize, 894102];
cacheClears = [cacheClears, 0];

%Turn: 30
movesGenerated = [movesGenerated, 712320];
searchTime = [searchTime, 8898];
evaluations = [evaluations, 263324];
cutoffs = [cutoffs, 428254];
cacheRetrievals = [cacheRetrievals, 44213];
cacheSize = [cacheSize, 894102];
cacheClears = [cacheClears, 0];

%Turn: 31
movesGenerated = [movesGenerated, 673658];
searchTime = [searchTime, 2620];
evaluations = [evaluations, 88668];
cutoffs = [cutoffs, 564534];
cacheRetrievals = [cacheRetrievals, 52191];
cacheSize = [cacheSize, 930579];
cacheClears = [cacheClears, 0];

%Turn: 32
movesGenerated = [movesGenerated, 55693];
searchTime = [searchTime, 648];
evaluations = [evaluations, 17385];
cutoffs = [cutoffs, 36643];
cacheRetrievals = [cacheRetrievals, 564];
cacheSize = [cacheSize, 930579];
cacheClears = [cacheClears, 0];

%Turn: 33
movesGenerated = [movesGenerated, 229537];
searchTime = [searchTime, 1245];
evaluations = [evaluations, 53905];
cutoffs = [cutoffs, 168766];
cacheRetrievals = [cacheRetrievals, 32862];
cacheSize = [cacheSize, 951622];
cacheClears = [cacheClears, 0];

%Turn: 34
movesGenerated = [movesGenerated, 50366];
searchTime = [searchTime, 750];
evaluations = [evaluations, 20775];
cutoffs = [cutoffs, 28048];
cacheRetrievals = [cacheRetrievals, 1156];
cacheSize = [cacheSize, 951622];
cacheClears = [cacheClears, 0];

%Turn: 35
movesGenerated = [movesGenerated, 234314];
searchTime = [searchTime, 2276];
evaluations = [evaluations, 88069];
cutoffs = [cutoffs, 138150];
cacheRetrievals = [cacheRetrievals, 42172];
cacheSize = [cacheSize, 997517];
cacheClears = [cacheClears, 0];

%Turn: 36
movesGenerated = [movesGenerated, 523997];
searchTime = [searchTime, 9777];
evaluations = [evaluations, 261392];
cutoffs = [cutoffs, 246206];
cacheRetrievals = [cacheRetrievals, 7035];
cacheSize = [cacheSize, 997517];
cacheClears = [cacheClears, 0];

%Turn: 37
movesGenerated = [movesGenerated, 190318];
searchTime = [searchTime, 1410];
evaluations = [evaluations, 42742];
cutoffs = [cutoffs, 140404];
cacheRetrievals = [cacheRetrievals, 17843];
cacheSize = [cacheSize, 1022398];
cacheClears = [cacheClears, 0];

%Turn: 38
movesGenerated = [movesGenerated, 10568];
searchTime = [searchTime, 241];
evaluations = [evaluations, 5875];
cutoffs = [cutoffs, 4393];
cacheRetrievals = [cacheRetrievals, 182];
cacheSize = [cacheSize, 1022398];
cacheClears = [cacheClears, 0];

%Turn: 39
movesGenerated = [movesGenerated, 267722];
searchTime = [searchTime, 1652];
evaluations = [evaluations, 37978];
cutoffs = [cutoffs, 218667];
cacheRetrievals = [cacheRetrievals, 15215];
cacheSize = [cacheSize, 1044910];
cacheClears = [cacheClears, 0];

%Turn: 40
movesGenerated = [movesGenerated, 336779];
searchTime = [searchTime, 6140];
evaluations = [evaluations, 152392];
cutoffs = [cutoffs, 175424];
cacheRetrievals = [cacheRetrievals, 3127];
cacheSize = [cacheSize, 1044910];
cacheClears = [cacheClears, 0];

%Turn: 41
movesGenerated = [movesGenerated, 465035];
searchTime = [searchTime, 2984];
evaluations = [evaluations, 78636];
cutoffs = [cutoffs, 366665];
cacheRetrievals = [cacheRetrievals, 35743];
cacheSize = [cacheSize, 1087365];
cacheClears = [cacheClears, 0];

%Turn: 42
