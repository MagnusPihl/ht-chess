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
movesGenerated = [movesGenerated, 466477];
searchTime = [searchTime, 2023];
evaluations = [evaluations, 143055];
cutoffs = [cutoffs, 305625];

%Turn: 1
movesGenerated = [movesGenerated, 834572];
searchTime = [searchTime, 2929];
evaluations = [evaluations, 187801];
cutoffs = [cutoffs, 616631];

%Turn: 2
movesGenerated = [movesGenerated, 1571328];
searchTime = [searchTime, 5553];
evaluations = [evaluations, 344603];
cutoffs = [cutoffs, 1183132];

%Turn: 3
movesGenerated = [movesGenerated, 2360461];
searchTime = [searchTime, 6687];
evaluations = [evaluations, 391013];
cutoffs = [cutoffs, 1898994];

%Turn: 4
movesGenerated = [movesGenerated, 2342748];
searchTime = [searchTime, 10066];
evaluations = [evaluations, 627098];
cutoffs = [cutoffs, 1656666];

%Turn: 5
movesGenerated = [movesGenerated, 2426281];
searchTime = [searchTime, 6851];
evaluations = [evaluations, 384072];
cutoffs = [cutoffs, 1972890];

%Turn: 6
movesGenerated = [movesGenerated, 4556304];
searchTime = [searchTime, 17851];
evaluations = [evaluations, 1048594];
cutoffs = [cutoffs, 3399794];

%Turn: 7
movesGenerated = [movesGenerated, 2421267];
searchTime = [searchTime, 8352];
evaluations = [evaluations, 477906];
cutoffs = [cutoffs, 1882773];

%Turn: 8
movesGenerated = [movesGenerated, 2734620];
searchTime = [searchTime, 10552];
evaluations = [evaluations, 626232];
cutoffs = [cutoffs, 2037690];

%Turn: 9
movesGenerated = [movesGenerated, 2626399];
searchTime = [searchTime, 9370];
evaluations = [evaluations, 530193];
cutoffs = [cutoffs, 2029525];

%Turn: 10
movesGenerated = [movesGenerated, 1547196];
searchTime = [searchTime, 6860];
evaluations = [evaluations, 397620];
cutoffs = [cutoffs, 1108623];

%Turn: 11
movesGenerated = [movesGenerated, 1800535];
searchTime = [searchTime, 7541];
evaluations = [evaluations, 433059];
cutoffs = [cutoffs, 1320432];

%Turn: 12
movesGenerated = [movesGenerated, 5234284];
searchTime = [searchTime, 14770];
evaluations = [evaluations, 799484];
cutoffs = [cutoffs, 4291193];

%Turn: 13
movesGenerated = [movesGenerated, 2255719];
searchTime = [searchTime, 9931];
evaluations = [evaluations, 563910];
cutoffs = [cutoffs, 1633964];

%Turn: 14
movesGenerated = [movesGenerated, 1280962];
searchTime = [searchTime, 3829];
evaluations = [evaluations, 212301];
cutoffs = [cutoffs, 1035945];

%Turn: 15
movesGenerated = [movesGenerated, 1029903];
searchTime = [searchTime, 4638];
evaluations = [evaluations, 262211];
cutoffs = [cutoffs, 741830];

%Turn: 16
movesGenerated = [movesGenerated, 805226];
searchTime = [searchTime, 2640];
evaluations = [evaluations, 151878];
cutoffs = [cutoffs, 633907];

%Turn: 17
movesGenerated = [movesGenerated, 1129613];
searchTime = [searchTime, 5095];
evaluations = [evaluations, 304350];
cutoffs = [cutoffs, 797060];

%Turn: 18
movesGenerated = [movesGenerated, 308975];
searchTime = [searchTime, 1207];
evaluations = [evaluations, 75659];
cutoffs = [cutoffs, 226387];

%Turn: 19
movesGenerated = [movesGenerated, 881009];
searchTime = [searchTime, 3463];
evaluations = [evaluations, 212884];
cutoffs = [cutoffs, 642916];

%Turn: 20
movesGenerated = [movesGenerated, 232389];
searchTime = [searchTime, 1302];
evaluations = [evaluations, 99118];
cutoffs = [cutoffs, 126308];

%Turn: 21
movesGenerated = [movesGenerated, 479228];
searchTime = [searchTime, 1240];
evaluations = [evaluations, 84513];
cutoffs = [cutoffs, 375508];

%Turn: 22
movesGenerated = [movesGenerated, 367454];
searchTime = [searchTime, 1809];
evaluations = [evaluations, 144214];
cutoffs = [cutoffs, 211579];

%Turn: 23
movesGenerated = [movesGenerated, 490273];
searchTime = [searchTime, 1324];
evaluations = [evaluations, 93114];
cutoffs = [cutoffs, 376597];

%Turn: 24
movesGenerated = [movesGenerated, 2315551];
searchTime = [searchTime, 6794];
evaluations = [evaluations, 514528];
cutoffs = [cutoffs, 1736534];

%Turn: 25
movesGenerated = [movesGenerated, 568157];
searchTime = [searchTime, 1362];
evaluations = [evaluations, 103101];
cutoffs = [cutoffs, 444152];

%Turn: 26
movesGenerated = [movesGenerated, 578217];
searchTime = [searchTime, 1772];
evaluations = [evaluations, 141299];
cutoffs = [cutoffs, 420458];

%Turn: 27
movesGenerated = [movesGenerated, 909057];
searchTime = [searchTime, 2863];
evaluations = [evaluations, 213998];
cutoffs = [cutoffs, 666074];

%Turn: 28
movesGenerated = [movesGenerated, 1151524];
searchTime = [searchTime, 3759];
evaluations = [evaluations, 280101];
cutoffs = [cutoffs, 840369];

%Turn: 29
movesGenerated = [movesGenerated, 3150879];
searchTime = [searchTime, 8500];
evaluations = [evaluations, 596592];
cutoffs = [cutoffs, 2457618];

%Turn: 30
movesGenerated = [movesGenerated, 3091587];
searchTime = [searchTime, 9600];
evaluations = [evaluations, 688170];
cutoffs = [cutoffs, 2323248];

%Turn: 31
movesGenerated = [movesGenerated, 1312874];
searchTime = [searchTime, 3221];
evaluations = [evaluations, 225826];
cutoffs = [cutoffs, 1045834];

%Turn: 32
movesGenerated = [movesGenerated, 2651911];
searchTime = [searchTime, 8762];
evaluations = [evaluations, 648583];
cutoffs = [cutoffs, 1933705];

%Turn: 33
movesGenerated = [movesGenerated, 942500];
searchTime = [searchTime, 2135];
evaluations = [evaluations, 142899];
cutoffs = [cutoffs, 769045];

%Turn: 34
movesGenerated = [movesGenerated, 353822];
searchTime = [searchTime, 1893];
evaluations = [evaluations, 152312];
cutoffs = [cutoffs, 191673];

%Turn: 35
movesGenerated = [movesGenerated, 292199];
searchTime = [searchTime, 894];
evaluations = [evaluations, 62512];
cutoffs = [cutoffs, 221498];

%Turn: 36
movesGenerated = [movesGenerated, 896096];
searchTime = [searchTime, 4028];
evaluations = [evaluations, 314553];
cutoffs = [cutoffs, 558349];

%Turn: 37
movesGenerated = [movesGenerated, 919378];
searchTime = [searchTime, 2036];
evaluations = [evaluations, 138826];
cutoffs = [cutoffs, 752456];

%Turn: 38
movesGenerated = [movesGenerated, 3902386];
searchTime = [searchTime, 12381];
evaluations = [evaluations, 870739];
cutoffs = [cutoffs, 2930320];

%Turn: 39
movesGenerated = [movesGenerated, 1077548];
searchTime = [searchTime, 2456];
evaluations = [evaluations, 164746];
cutoffs = [cutoffs, 879767];

%Turn: 40
movesGenerated = [movesGenerated, 1176336];
searchTime = [searchTime, 5093];
evaluations = [evaluations, 360196];
cutoffs = [cutoffs, 786100];

%Turn: 41
movesGenerated = [movesGenerated, 1233608];
searchTime = [searchTime, 3347];
evaluations = [evaluations, 231073];
cutoffs = [cutoffs, 966380];

%Turn: 42
movesGenerated = [movesGenerated, 5040936];
searchTime = [searchTime, 16188];
evaluations = [evaluations, 1115438];
cutoffs = [cutoffs, 3799014];

%Turn: 43
movesGenerated = [movesGenerated, 1972822];
searchTime = [searchTime, 5413];
evaluations = [evaluations, 364903];
cutoffs = [cutoffs, 1553420];

%Turn: 44
movesGenerated = [movesGenerated, 1158010];
searchTime = [searchTime, 4683];
evaluations = [evaluations, 336533];
cutoffs = [cutoffs, 793953];

%Turn: 45
movesGenerated = [movesGenerated, 576342];
searchTime = [searchTime, 1406];
evaluations = [evaluations, 95802];
cutoffs = [cutoffs, 465185];

%Turn: 46
movesGenerated = [movesGenerated, 2606279];
searchTime = [searchTime, 10355];
evaluations = [evaluations, 699145];
cutoffs = [cutoffs, 1842541];

%Turn: 47
movesGenerated = [movesGenerated, 1972822];
searchTime = [searchTime, 5453];
evaluations = [evaluations, 364903];
cutoffs = [cutoffs, 1553420];

%Turn: 48
movesGenerated = [movesGenerated, 1158010];
searchTime = [searchTime, 4695];
evaluations = [evaluations, 336533];
cutoffs = [cutoffs, 793953];

%Turn: 49
movesGenerated = [movesGenerated, 576342];
searchTime = [searchTime, 1438];
evaluations = [evaluations, 95802];
cutoffs = [cutoffs, 465185];

%Turn: 50
movesGenerated = [movesGenerated, 2606279];
searchTime = [searchTime, 10710];
evaluations = [evaluations, 699145];
cutoffs = [cutoffs, 1842541];

%Turn: 51
movesGenerated = [movesGenerated, 1972822];
searchTime = [searchTime, 5687];
evaluations = [evaluations, 364903];
cutoffs = [cutoffs, 1553420];

%Turn: 52
movesGenerated = [movesGenerated, 1158010];
searchTime = [searchTime, 4915];
evaluations = [evaluations, 336533];
cutoffs = [cutoffs, 793953];

%Turn: 53
movesGenerated = [movesGenerated, 576342];
searchTime = [searchTime, 1484];
evaluations = [evaluations, 95802];
cutoffs = [cutoffs, 465185];

%Turn: 54
movesGenerated = [movesGenerated, 2606279];
searchTime = [searchTime, 11120];
evaluations = [evaluations, 699145];
cutoffs = [cutoffs, 1842541];

%Turn: 55
movesGenerated = [movesGenerated, 1972822];
searchTime = [searchTime, 5869];
evaluations = [evaluations, 364903];
cutoffs = [cutoffs, 1553420];

%Turn: 56
movesGenerated = [movesGenerated, 1158010];
searchTime = [searchTime, 5055];
evaluations = [evaluations, 336533];
cutoffs = [cutoffs, 793953];

%Turn: 57
movesGenerated = [movesGenerated, 576342];
searchTime = [searchTime, 1540];
evaluations = [evaluations, 95802];
cutoffs = [cutoffs, 465185];

%Turn: 58
movesGenerated = [movesGenerated, 2606279];
searchTime = [searchTime, 11455];
evaluations = [evaluations, 699145];
cutoffs = [cutoffs, 1842541];

%Turn: 59
movesGenerated = [movesGenerated, 1972822];
searchTime = [searchTime, 6169];
evaluations = [evaluations, 364903];
cutoffs = [cutoffs, 1553420];

%Turn: 60
movesGenerated = [movesGenerated, 1158010];
searchTime = [searchTime, 5163];
evaluations = [evaluations, 336533];
cutoffs = [cutoffs, 793953];

%Turn: 61
movesGenerated = [movesGenerated, 576342];
searchTime = [searchTime, 1551];
evaluations = [evaluations, 95802];
cutoffs = [cutoffs, 465185];

%Turn: 62
movesGenerated = [movesGenerated, 2606279];
searchTime = [searchTime, 11578];
evaluations = [evaluations, 699145];
cutoffs = [cutoffs, 1842541];

%Turn: 63
movesGenerated = [movesGenerated, 1972822];
searchTime = [searchTime, 6112];
evaluations = [evaluations, 364903];
cutoffs = [cutoffs, 1553420];

%Turn: 64
movesGenerated = [movesGenerated, 1158010];
searchTime = [searchTime, 5239];
evaluations = [evaluations, 336533];
cutoffs = [cutoffs, 793953];

%Turn: 65
movesGenerated = [movesGenerated, 576342];
searchTime = [searchTime, 1589];
evaluations = [evaluations, 95802];
cutoffs = [cutoffs, 465185];

%Turn: 66
