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
movesGenerated = [movesGenerated, 466477];
searchTime = [searchTime, 1465];
evaluations = [evaluations, 143055];
cutoffs = [cutoffs, 305625];
cacheRetrievals = [cacheRetrievals, 75270];
cacheSize = [cacheSize, 67785];
cacheClears = [cacheClears, 0];

%Turn: 1
movesGenerated = [movesGenerated, 834572];
searchTime = [searchTime, 3201];
evaluations = [evaluations, 187801];
cutoffs = [cutoffs, 616631];
cacheRetrievals = [cacheRetrievals, 6094];
cacheSize = [cacheSize, 67785];
cacheClears = [cacheClears, 0];

%Turn: 2
movesGenerated = [movesGenerated, 1571328];
searchTime = [searchTime, 3508];
evaluations = [evaluations, 344603];
cutoffs = [cutoffs, 1183132];
cacheRetrievals = [cacheRetrievals, 213616];
cacheSize = [cacheSize, 198757];
cacheClears = [cacheClears, 0];

%Turn: 3
movesGenerated = [movesGenerated, 2360461];
searchTime = [searchTime, 7239];
evaluations = [evaluations, 391013];
cutoffs = [cutoffs, 1898994];
cacheRetrievals = [cacheRetrievals, 14463];
cacheSize = [cacheSize, 198757];
cacheClears = [cacheClears, 0];

%Turn: 4
movesGenerated = [movesGenerated, 2342748];
searchTime = [searchTime, 5443];
evaluations = [evaluations, 627098];
cutoffs = [cutoffs, 1656666];
cacheRetrievals = [cacheRetrievals, 426192];
cacheSize = [cacheSize, 399602];
cacheClears = [cacheClears, 0];

%Turn: 5
movesGenerated = [movesGenerated, 2426281];
searchTime = [searchTime, 7462];
evaluations = [evaluations, 384072];
cutoffs = [cutoffs, 1972890];
cacheRetrievals = [cacheRetrievals, 12795];
cacheSize = [cacheSize, 399602];
cacheClears = [cacheClears, 0];

%Turn: 6
movesGenerated = [movesGenerated, 4556304];
searchTime = [searchTime, 8724];
evaluations = [evaluations, 1048594];
cutoffs = [cutoffs, 3399794];
cacheRetrievals = [cacheRetrievals, 764713];
cacheSize = [cacheSize, 683298];
cacheClears = [cacheClears, 0];

%Turn: 7
movesGenerated = [movesGenerated, 2421267];
searchTime = [searchTime, 9244];
evaluations = [evaluations, 477906];
cutoffs = [cutoffs, 1882773];
cacheRetrievals = [cacheRetrievals, 17057];
cacheSize = [cacheSize, 683298];
cacheClears = [cacheClears, 0];

%Turn: 8
movesGenerated = [movesGenerated, 2734620];
searchTime = [searchTime, 5269];
evaluations = [evaluations, 626232];
cutoffs = [cutoffs, 2037690];
cacheRetrievals = [cacheRetrievals, 453956];
cacheSize = [cacheSize, 854200];
cacheClears = [cacheClears, 0];

%Turn: 9
movesGenerated = [movesGenerated, 2626399];
searchTime = [searchTime, 10440];
evaluations = [evaluations, 530193];
cutoffs = [cutoffs, 2029525];
cacheRetrievals = [cacheRetrievals, 25325];
cacheSize = [cacheSize, 854200];
cacheClears = [cacheClears, 0];

%Turn: 10
movesGenerated = [movesGenerated, 1547196];
searchTime = [searchTime, 3378];
evaluations = [evaluations, 397620];
cutoffs = [cutoffs, 1108623];
cacheRetrievals = [cacheRetrievals, 292170];
cacheSize = [cacheSize, 959048];
cacheClears = [cacheClears, 0];

%Turn: 11
movesGenerated = [movesGenerated, 1800535];
searchTime = [searchTime, 8345];
evaluations = [evaluations, 433059];
cutoffs = [cutoffs, 1320432];
cacheRetrievals = [cacheRetrievals, 37126];
cacheSize = [cacheSize, 959048];
cacheClears = [cacheClears, 0];

%Turn: 12
movesGenerated = [movesGenerated, 5234284];
searchTime = [searchTime, 9059];
evaluations = [evaluations, 799484];
cutoffs = [cutoffs, 4291193];
cacheRetrievals = [cacheRetrievals, 539078];
cacheSize = [cacheSize, 1219305];
cacheClears = [cacheClears, 0];

%Turn: 13
movesGenerated = [movesGenerated, 2255719];
searchTime = [searchTime, 11951];
evaluations = [evaluations, 563910];
cutoffs = [cutoffs, 1633964];
cacheRetrievals = [cacheRetrievals, 31242];
cacheSize = [cacheSize, 1219305];
cacheClears = [cacheClears, 0];

%Turn: 14
movesGenerated = [movesGenerated, 1280962];
searchTime = [searchTime, 2685];
evaluations = [evaluations, 212301];
cutoffs = [cutoffs, 1035945];
cacheRetrievals = [cacheRetrievals, 128998];
cacheSize = [cacheSize, 1301522];
cacheClears = [cacheClears, 0];

%Turn: 15
movesGenerated = [movesGenerated, 1029903];
searchTime = [searchTime, 5582];
evaluations = [evaluations, 262211];
cutoffs = [cutoffs, 741830];
cacheRetrievals = [cacheRetrievals, 17820];
cacheSize = [cacheSize, 1301522];
cacheClears = [cacheClears, 0];

%Turn: 16
movesGenerated = [movesGenerated, 805226];
searchTime = [searchTime, 1582];
evaluations = [evaluations, 151878];
cutoffs = [cutoffs, 633907];
cacheRetrievals = [cacheRetrievals, 105846];
cacheSize = [cacheSize, 1345751];
cacheClears = [cacheClears, 0];

%Turn: 17
movesGenerated = [movesGenerated, 1129613];
searchTime = [searchTime, 6350];
evaluations = [evaluations, 304350];
cutoffs = [cutoffs, 797060];
cacheRetrievals = [cacheRetrievals, 13689];
cacheSize = [cacheSize, 1345751];
cacheClears = [cacheClears, 0];

%Turn: 18
movesGenerated = [movesGenerated, 308975];
searchTime = [searchTime, 790];
evaluations = [evaluations, 75659];
cutoffs = [cutoffs, 226387];
cacheRetrievals = [cacheRetrievals, 48846];
cacheSize = [cacheSize, 1372189];
cacheClears = [cacheClears, 0];

%Turn: 19
movesGenerated = [movesGenerated, 881009];
searchTime = [searchTime, 4394];
evaluations = [evaluations, 212884];
cutoffs = [cutoffs, 642916];
cacheRetrievals = [cacheRetrievals, 7431];
cacheSize = [cacheSize, 1372189];
cacheClears = [cacheClears, 0];

%Turn: 20
movesGenerated = [movesGenerated, 232389];
searchTime = [searchTime, 715];
evaluations = [evaluations, 99118];
cutoffs = [cutoffs, 126308];
cacheRetrievals = [cacheRetrievals, 74451];
cacheSize = [cacheSize, 1396723];
cacheClears = [cacheClears, 0];

%Turn: 21
movesGenerated = [movesGenerated, 479228];
searchTime = [searchTime, 1612];
evaluations = [evaluations, 84513];
cutoffs = [cutoffs, 375508];
cacheRetrievals = [cacheRetrievals, 2242];
cacheSize = [cacheSize, 1396723];
cacheClears = [cacheClears, 0];

%Turn: 22
movesGenerated = [movesGenerated, 367454];
searchTime = [searchTime, 1108];
evaluations = [evaluations, 144214];
cutoffs = [cutoffs, 211579];
cacheRetrievals = [cacheRetrievals, 103164];
cacheSize = [cacheSize, 1437660];
cacheClears = [cacheClears, 0];

%Turn: 23
movesGenerated = [movesGenerated, 490293];
searchTime = [searchTime, 1701];
evaluations = [evaluations, 93126];
cutoffs = [cutoffs, 376604];
cacheRetrievals = [cacheRetrievals, 4639];
cacheSize = [cacheSize, 1437660];
cacheClears = [cacheClears, 0];

%Turn: 24
movesGenerated = [movesGenerated, 2391637];
searchTime = [searchTime, 4590];
evaluations = [evaluations, 524789];
cutoffs = [cutoffs, 1800348];
cacheRetrievals = [cacheRetrievals, 376395];
cacheSize = [cacheSize, 1584161];
cacheClears = [cacheClears, 0];

%Turn: 25
movesGenerated = [movesGenerated, 887001];
searchTime = [searchTime, 3151];
evaluations = [evaluations, 186331];
cutoffs = [cutoffs, 667419];
cacheRetrievals = [cacheRetrievals, 6887];
cacheSize = [cacheSize, 1584161];
cacheClears = [cacheClears, 0];

%Turn: 26
movesGenerated = [movesGenerated, 578489];
searchTime = [searchTime, 1290];
evaluations = [evaluations, 141327];
cutoffs = [cutoffs, 420694];
cacheRetrievals = [cacheRetrievals, 92158];
cacheSize = [cacheSize, 1632868];
cacheClears = [cacheClears, 0];

%Turn: 27
movesGenerated = [movesGenerated, 909057];
searchTime = [searchTime, 3733];
evaluations = [evaluations, 213998];
cutoffs = [cutoffs, 666074];
cacheRetrievals = [cacheRetrievals, 9853];
cacheSize = [cacheSize, 1632868];
cacheClears = [cacheClears, 0];

%Turn: 28
movesGenerated = [movesGenerated, 1151524];
searchTime = [searchTime, 2719];
evaluations = [evaluations, 280101];
cutoffs = [cutoffs, 840369];
cacheRetrievals = [cacheRetrievals, 177939];
cacheSize = [cacheSize, 1734207];
cacheClears = [cacheClears, 0];

%Turn: 29
movesGenerated = [movesGenerated, 3150879];
searchTime = [searchTime, 11183];
evaluations = [evaluations, 596592];
cutoffs = [cutoffs, 2457618];
cacheRetrievals = [cacheRetrievals, 12179];
cacheSize = [cacheSize, 1734207];
cacheClears = [cacheClears, 0];

%Turn: 30
movesGenerated = [movesGenerated, 3091587];
searchTime = [searchTime, 7137];
evaluations = [evaluations, 688170];
cutoffs = [cutoffs, 2323248];
cacheRetrievals = [cacheRetrievals, 425904];
cacheSize = [cacheSize, 1994996];
cacheClears = [cacheClears, 0];

%Turn: 31
movesGenerated = [movesGenerated, 1312874];
searchTime = [searchTime, 4122];
evaluations = [evaluations, 225826];
cutoffs = [cutoffs, 1045834];
cacheRetrievals = [cacheRetrievals, 15238];
cacheSize = [cacheSize, 1994996];
cacheClears = [cacheClears, 0];

%Turn: 32
movesGenerated = [movesGenerated, 2651911];
searchTime = [searchTime, 5477];
evaluations = [evaluations, 648583];
cutoffs = [cutoffs, 1933705];
cacheRetrievals = [cacheRetrievals, 469630];
cacheSize = [cacheSize, 2173107];
cacheClears = [cacheClears, 0];

%Turn: 33
movesGenerated = [movesGenerated, 942500];
searchTime = [searchTime, 2785];
evaluations = [evaluations, 142899];
cutoffs = [cutoffs, 769045];
cacheRetrievals = [cacheRetrievals, 5850];
cacheSize = [cacheSize, 2173107];
cacheClears = [cacheClears, 0];

%Turn: 34
movesGenerated = [movesGenerated, 353822];
searchTime = [searchTime, 954];
evaluations = [evaluations, 152312];
cutoffs = [cutoffs, 191673];
cacheRetrievals = [cacheRetrievals, 122852];
cacheSize = [cacheSize, 2202531];
cacheClears = [cacheClears, 0];

%Turn: 35
movesGenerated = [movesGenerated, 292199];
searchTime = [searchTime, 1137];
evaluations = [evaluations, 62512];
cutoffs = [cutoffs, 221498];
cacheRetrievals = [cacheRetrievals, 5220];
cacheSize = [cacheSize, 2202531];
cacheClears = [cacheClears, 0];

%Turn: 36
movesGenerated = [movesGenerated, 896096];
searchTime = [searchTime, 2026];
evaluations = [evaluations, 314553];
cutoffs = [cutoffs, 558349];
cacheRetrievals = [cacheRetrievals, 254843];
cacheSize = [cacheSize, 2262216];
cacheClears = [cacheClears, 0];

%Turn: 37
movesGenerated = [movesGenerated, 919378];
searchTime = [searchTime, 2608];
evaluations = [evaluations, 138826];
cutoffs = [cutoffs, 752456];
cacheRetrievals = [cacheRetrievals, 10227];
cacheSize = [cacheSize, 2262216];
cacheClears = [cacheClears, 0];

%Turn: 38
movesGenerated = [movesGenerated, 3902386];
searchTime = [searchTime, 7250];
evaluations = [evaluations, 870739];
cutoffs = [cutoffs, 2930320];
cacheRetrievals = [cacheRetrievals, 645248];
cacheSize = [cacheSize, 2487243];
cacheClears = [cacheClears, 0];

%Turn: 39
movesGenerated = [movesGenerated, 1077548];
searchTime = [searchTime, 3310];
evaluations = [evaluations, 164746];
cutoffs = [cutoffs, 879767];
cacheRetrievals = [cacheRetrievals, 8899];
cacheSize = [cacheSize, 2487243];
cacheClears = [cacheClears, 0];

%Turn: 40
movesGenerated = [movesGenerated, 1176336];
searchTime = [searchTime, 2708];
evaluations = [evaluations, 360196];
cutoffs = [cutoffs, 786100];
cacheRetrievals = [cacheRetrievals, 278412];
cacheSize = [cacheSize, 2568759];
cacheClears = [cacheClears, 0];

%Turn: 41
movesGenerated = [movesGenerated, 1233608];
searchTime = [searchTime, 4701];
evaluations = [evaluations, 231073];
cutoffs = [cutoffs, 966380];
cacheRetrievals = [cacheRetrievals, 16293];
cacheSize = [cacheSize, 2568759];
cacheClears = [cacheClears, 0];

%Turn: 42
movesGenerated = [movesGenerated, 5040936];
searchTime = [searchTime, 9678];
evaluations = [evaluations, 1115438];
cutoffs = [cutoffs, 3799014];
cacheRetrievals = [cacheRetrievals, 839547];
cacheSize = [cacheSize, 2843509];
cacheClears = [cacheClears, 0];

%Turn: 43
movesGenerated = [movesGenerated, 1972822];
searchTime = [searchTime, 7119];
evaluations = [evaluations, 364903];
cutoffs = [cutoffs, 1553420];
cacheRetrievals = [cacheRetrievals, 15621];
cacheSize = [cacheSize, 2843509];
cacheClears = [cacheClears, 0];

%Turn: 44
movesGenerated = [movesGenerated, 1158010];
searchTime = [searchTime, 2310];
evaluations = [evaluations, 336533];
cutoffs = [cutoffs, 793953];
cacheRetrievals = [cacheRetrievals, 271964];
cacheSize = [cacheSize, 2906199];
cacheClears = [cacheClears, 0];

%Turn: 45
movesGenerated = [movesGenerated, 576342];
searchTime = [searchTime, 1807];
evaluations = [evaluations, 95802];
cutoffs = [cutoffs, 465185];
cacheRetrievals = [cacheRetrievals, 6860];
cacheSize = [cacheSize, 2906199];
cacheClears = [cacheClears, 0];

%Turn: 46
movesGenerated = [movesGenerated, 2606279];
searchTime = [searchTime, 4951];
evaluations = [evaluations, 699145];
cutoffs = [cutoffs, 1842541];
cacheRetrievals = [cacheRetrievals, 566112];
cacheSize = [cacheSize, 3038895];
cacheClears = [cacheClears, 0];

%Turn: 47
movesGenerated = [movesGenerated, 1972822];
searchTime = [searchTime, 7041];
evaluations = [evaluations, 364903];
cutoffs = [cutoffs, 1553420];
cacheRetrievals = [cacheRetrievals, 22742];
cacheSize = [cacheSize, 3038895];
cacheClears = [cacheClears, 0];

%Turn: 48
movesGenerated = [movesGenerated, 1158010];
searchTime = [searchTime, 1246];
evaluations = [evaluations, 336533];
cutoffs = [cutoffs, 793953];
cacheRetrievals = [cacheRetrievals, 334650];
cacheSize = [cacheSize, 3038899];
cacheClears = [cacheClears, 0];

%Turn: 49
movesGenerated = [movesGenerated, 577526];
searchTime = [searchTime, 1763];
evaluations = [evaluations, 95894];
cutoffs = [cutoffs, 466243];
cacheRetrievals = [cacheRetrievals, 10188];
cacheSize = [cacheSize, 3038899];
cacheClears = [cacheClears, 0];

%Turn: 50
movesGenerated = [movesGenerated, 2606279];
searchTime = [searchTime, 2613];
evaluations = [evaluations, 699145];
cutoffs = [cutoffs, 1842541];
cacheRetrievals = [cacheRetrievals, 698791];
cacheSize = [cacheSize, 3038916];
cacheClears = [cacheClears, 0];

%Turn: 51
movesGenerated = [movesGenerated, 1972822];
searchTime = [searchTime, 7102];
evaluations = [evaluations, 364903];
cutoffs = [cutoffs, 1553420];
cacheRetrievals = [cacheRetrievals, 22742];
cacheSize = [cacheSize, 3038916];
cacheClears = [cacheClears, 0];

%Turn: 52
movesGenerated = [movesGenerated, 1158010];
searchTime = [searchTime, 1247];
evaluations = [evaluations, 336533];
cutoffs = [cutoffs, 793953];
cacheRetrievals = [cacheRetrievals, 334650];
cacheSize = [cacheSize, 3038920];
cacheClears = [cacheClears, 0];

%Turn: 53
movesGenerated = [movesGenerated, 577526];
searchTime = [searchTime, 1783];
evaluations = [evaluations, 95894];
cutoffs = [cutoffs, 466243];
cacheRetrievals = [cacheRetrievals, 10188];
cacheSize = [cacheSize, 3038920];
cacheClears = [cacheClears, 0];

%Turn: 54
movesGenerated = [movesGenerated, 2606279];
searchTime = [searchTime, 2633];
evaluations = [evaluations, 699145];
cutoffs = [cutoffs, 1842541];
cacheRetrievals = [cacheRetrievals, 698791];
cacheSize = [cacheSize, 3038937];
cacheClears = [cacheClears, 0];

%Turn: 55
movesGenerated = [movesGenerated, 1972822];
searchTime = [searchTime, 7468];
evaluations = [evaluations, 364903];
cutoffs = [cutoffs, 1553420];
cacheRetrievals = [cacheRetrievals, 22742];
cacheSize = [cacheSize, 3038937];
cacheClears = [cacheClears, 0];

%Turn: 56
movesGenerated = [movesGenerated, 1158010];
searchTime = [searchTime, 1265];
evaluations = [evaluations, 336533];
cutoffs = [cutoffs, 793953];
cacheRetrievals = [cacheRetrievals, 334650];
cacheSize = [cacheSize, 3038941];
cacheClears = [cacheClears, 0];

%Turn: 57
movesGenerated = [movesGenerated, 577526];
searchTime = [searchTime, 1799];
evaluations = [evaluations, 95894];
cutoffs = [cutoffs, 466243];
cacheRetrievals = [cacheRetrievals, 10188];
cacheSize = [cacheSize, 3038941];
cacheClears = [cacheClears, 0];

%Turn: 58
movesGenerated = [movesGenerated, 2606279];
searchTime = [searchTime, 2649];
evaluations = [evaluations, 699145];
cutoffs = [cutoffs, 1842541];
cacheRetrievals = [cacheRetrievals, 698791];
cacheSize = [cacheSize, 3038958];
cacheClears = [cacheClears, 0];

%Turn: 59
movesGenerated = [movesGenerated, 1972822];
searchTime = [searchTime, 7138];
evaluations = [evaluations, 364903];
cutoffs = [cutoffs, 1553420];
cacheRetrievals = [cacheRetrievals, 22742];
cacheSize = [cacheSize, 3038958];
cacheClears = [cacheClears, 0];

%Turn: 60
movesGenerated = [movesGenerated, 1158010];
searchTime = [searchTime, 1244];
evaluations = [evaluations, 336533];
cutoffs = [cutoffs, 793953];
cacheRetrievals = [cacheRetrievals, 334650];
cacheSize = [cacheSize, 3038962];
cacheClears = [cacheClears, 0];

%Turn: 61
movesGenerated = [movesGenerated, 577526];
searchTime = [searchTime, 1782];
evaluations = [evaluations, 95894];
cutoffs = [cutoffs, 466243];
cacheRetrievals = [cacheRetrievals, 10188];
cacheSize = [cacheSize, 3038962];
cacheClears = [cacheClears, 0];

%Turn: 62
movesGenerated = [movesGenerated, 2606279];
searchTime = [searchTime, 2613];
evaluations = [evaluations, 699145];
cutoffs = [cutoffs, 1842541];
cacheRetrievals = [cacheRetrievals, 698791];
cacheSize = [cacheSize, 3038979];
cacheClears = [cacheClears, 0];

%Turn: 63
movesGenerated = [movesGenerated, 1972822];
searchTime = [searchTime, 7144];
evaluations = [evaluations, 364903];
cutoffs = [cutoffs, 1553420];
cacheRetrievals = [cacheRetrievals, 22742];
cacheSize = [cacheSize, 3038979];
cacheClears = [cacheClears, 0];

%Turn: 64
movesGenerated = [movesGenerated, 1158010];
searchTime = [searchTime, 1259];
evaluations = [evaluations, 336533];
cutoffs = [cutoffs, 793953];
cacheRetrievals = [cacheRetrievals, 334650];
cacheSize = [cacheSize, 3038983];
cacheClears = [cacheClears, 0];

%Turn: 65
movesGenerated = [movesGenerated, 577526];
searchTime = [searchTime, 1793];
evaluations = [evaluations, 95894];
cutoffs = [cutoffs, 466243];
cacheRetrievals = [cacheRetrievals, 10188];
cacheSize = [cacheSize, 3038983];
cacheClears = [cacheClears, 0];

%Turn: 66
movesGenerated = [movesGenerated, 2606279];
searchTime = [searchTime, 2618];
evaluations = [evaluations, 699145];
cutoffs = [cutoffs, 1842541];
cacheRetrievals = [cacheRetrievals, 698791];
cacheSize = [cacheSize, 3039000];
cacheClears = [cacheClears, 0];

%Turn: 67
