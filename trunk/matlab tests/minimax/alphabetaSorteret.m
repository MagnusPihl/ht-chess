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
movesGenerated = [movesGenerated, 96247];
searchTime = [searchTime, 726];
evaluations = [evaluations, 29647];
cutoffs = [cutoffs, 62173];
cacheRetrievals = [cacheRetrievals, 0];
cacheSize = [cacheSize, 0];
cacheClears = [cacheClears, 0];

%Turn: 1
movesGenerated = [movesGenerated, 188258];
searchTime = [searchTime, 916];
evaluations = [evaluations, 59499];
cutoffs = [cutoffs, 122791];
cacheRetrievals = [cacheRetrievals, 34722];
cacheSize = [cacheSize, 24777];
cacheClears = [cacheClears, 0];

%Turn: 2
movesGenerated = [movesGenerated, 398624];
searchTime = [searchTime, 2514];
evaluations = [evaluations, 75303];
cutoffs = [cutoffs, 310833];
cacheRetrievals = [cacheRetrievals, 884];
cacheSize = [cacheSize, 24777];
cacheClears = [cacheClears, 0];

%Turn: 3
movesGenerated = [movesGenerated, 432396];
searchTime = [searchTime, 1669];
evaluations = [evaluations, 64319];
cutoffs = [cutoffs, 357510];
cacheRetrievals = [cacheRetrievals, 29529];
cacheSize = [cacheSize, 59567];
cacheClears = [cacheClears, 0];

%Turn: 4
movesGenerated = [movesGenerated, 233004];
searchTime = [searchTime, 1079];
evaluations = [evaluations, 25526];
cutoffs = [cutoffs, 200200];
cacheRetrievals = [cacheRetrievals, 330];
cacheSize = [cacheSize, 59567];
cacheClears = [cacheClears, 0];

%Turn: 5
movesGenerated = [movesGenerated, 94669];
searchTime = [searchTime, 533];
evaluations = [evaluations, 18921];
cutoffs = [cutoffs, 73079];
cacheRetrievals = [cacheRetrievals, 6716];
cacheSize = [cacheSize, 71770];
cacheClears = [cacheClears, 0];

%Turn: 6
movesGenerated = [movesGenerated, 119484];
searchTime = [searchTime, 321];
evaluations = [evaluations, 5556];
cutoffs = [cutoffs, 110671];
cacheRetrievals = [cacheRetrievals, 118];
cacheSize = [cacheSize, 71770];
cacheClears = [cacheClears, 0];

%Turn: 7
movesGenerated = [movesGenerated, 74251];
searchTime = [searchTime, 201];
evaluations = [evaluations, 7884];
cutoffs = [cutoffs, 64222];
cacheRetrievals = [cacheRetrievals, 4242];
cacheSize = [cacheSize, 75412];
cacheClears = [cacheClears, 0];

%Turn: 8
movesGenerated = [movesGenerated, 264166];
searchTime = [searchTime, 1691];
evaluations = [evaluations, 54583];
cutoffs = [cutoffs, 199584];
cacheRetrievals = [cacheRetrievals, 807];
cacheSize = [cacheSize, 75412];
cacheClears = [cacheClears, 0];

%Turn: 9
movesGenerated = [movesGenerated, 69273];
searchTime = [searchTime, 168];
evaluations = [evaluations, 4754];
cutoffs = [cutoffs, 62051];
cacheRetrievals = [cacheRetrievals, 2642];
cacheSize = [cacheSize, 77524];
cacheClears = [cacheClears, 0];

%Turn: 10
movesGenerated = [movesGenerated, 49801];
searchTime = [searchTime, 214];
evaluations = [evaluations, 5323];
cutoffs = [cutoffs, 42558];
cacheRetrievals = [cacheRetrievals, 84];
cacheSize = [cacheSize, 77524];
cacheClears = [cacheClears, 0];

%Turn: 11
movesGenerated = [movesGenerated, 269246];
searchTime = [searchTime, 1307];
evaluations = [evaluations, 67715];
cutoffs = [cutoffs, 191399];
cacheRetrievals = [cacheRetrievals, 40686];
cacheSize = [cacheSize, 104553];
cacheClears = [cacheClears, 0];

%Turn: 12
movesGenerated = [movesGenerated, 224957];
searchTime = [searchTime, 1131];
evaluations = [evaluations, 30769];
cutoffs = [cutoffs, 185956];
cacheRetrievals = [cacheRetrievals, 2358];
cacheSize = [cacheSize, 104553];
cacheClears = [cacheClears, 0];

%Turn: 13
movesGenerated = [movesGenerated, 165100];
searchTime = [searchTime, 637];
evaluations = [evaluations, 22865];
cutoffs = [cutoffs, 136355];
cacheRetrievals = [cacheRetrievals, 12380];
cacheSize = [cacheSize, 115038];
cacheClears = [cacheClears, 0];

%Turn: 14
movesGenerated = [movesGenerated, 161516];
searchTime = [searchTime, 732];
evaluations = [evaluations, 15099];
cutoffs = [cutoffs, 140984];
cacheRetrievals = [cacheRetrievals, 555];
cacheSize = [cacheSize, 115038];
cacheClears = [cacheClears, 0];

%Turn: 15
movesGenerated = [movesGenerated, 187982];
searchTime = [searchTime, 915];
evaluations = [evaluations, 29336];
cutoffs = [cutoffs, 152655];
cacheRetrievals = [cacheRetrievals, 13338];
cacheSize = [cacheSize, 131036];
cacheClears = [cacheClears, 0];

%Turn: 16
movesGenerated = [movesGenerated, 185088];
searchTime = [searchTime, 782];
evaluations = [evaluations, 14300];
cutoffs = [cutoffs, 164891];
cacheRetrievals = [cacheRetrievals, 622];
cacheSize = [cacheSize, 131036];
cacheClears = [cacheClears, 0];

%Turn: 17
movesGenerated = [movesGenerated, 125395];
searchTime = [searchTime, 364];
evaluations = [evaluations, 8514];
cutoffs = [cutoffs, 112611];
cacheRetrievals = [cacheRetrievals, 4864];
cacheSize = [cacheSize, 134686];
cacheClears = [cacheClears, 0];

%Turn: 18
movesGenerated = [movesGenerated, 24105];
searchTime = [searchTime, 132];
evaluations = [evaluations, 3182];
cutoffs = [cutoffs, 20067];
cacheRetrievals = [cacheRetrievals, 52];
cacheSize = [cacheSize, 134686];
cacheClears = [cacheClears, 0];

%Turn: 19
movesGenerated = [movesGenerated, 128809];
searchTime = [searchTime, 781];
evaluations = [evaluations, 24164];
cutoffs = [cutoffs, 99316];
cacheRetrievals = [cacheRetrievals, 12149];
cacheSize = [cacheSize, 146701];
cacheClears = [cacheClears, 0];

%Turn: 20
movesGenerated = [movesGenerated, 96501];
searchTime = [searchTime, 647];
evaluations = [evaluations, 16803];
cutoffs = [cutoffs, 76209];
cacheRetrievals = [cacheRetrievals, 590];
cacheSize = [cacheSize, 146701];
cacheClears = [cacheClears, 0];

%Turn: 21
movesGenerated = [movesGenerated, 81640];
searchTime = [searchTime, 308];
evaluations = [evaluations, 7845];
cutoffs = [cutoffs, 70917];
cacheRetrievals = [cacheRetrievals, 2752];
cacheSize = [cacheSize, 151794];
cacheClears = [cacheClears, 0];

%Turn: 22
movesGenerated = [movesGenerated, 133230];
searchTime = [searchTime, 1075];
evaluations = [evaluations, 29415];
cutoffs = [cutoffs, 98815];
cacheRetrievals = [cacheRetrievals, 511];
cacheSize = [cacheSize, 151794];
cacheClears = [cacheClears, 0];

%Turn: 23
movesGenerated = [movesGenerated, 254956];
searchTime = [searchTime, 1265];
evaluations = [evaluations, 35511];
cutoffs = [cutoffs, 210972];
cacheRetrievals = [cacheRetrievals, 11056];
cacheSize = [cacheSize, 176249];
cacheClears = [cacheClears, 0];

%Turn: 24
movesGenerated = [movesGenerated, 227007];
searchTime = [searchTime, 2173];
evaluations = [evaluations, 57631];
cutoffs = [cutoffs, 161336];
cacheRetrievals = [cacheRetrievals, 584];
cacheSize = [cacheSize, 176249];
cacheClears = [cacheClears, 0];

%Turn: 25
movesGenerated = [movesGenerated, 159963];
searchTime = [searchTime, 585];
evaluations = [evaluations, 17025];
cutoffs = [cutoffs, 137028];
cacheRetrievals = [cacheRetrievals, 9203];
cacheSize = [cacheSize, 184071];
cacheClears = [cacheClears, 0];

%Turn: 26
movesGenerated = [movesGenerated, 173163];
searchTime = [searchTime, 1504];
evaluations = [evaluations, 39185];
cutoffs = [cutoffs, 128615];
cacheRetrievals = [cacheRetrievals, 355];
cacheSize = [cacheSize, 184071];
cacheClears = [cacheClears, 0];

%Turn: 27
movesGenerated = [movesGenerated, 161209];
searchTime = [searchTime, 570];
evaluations = [evaluations, 13486];
cutoffs = [cutoffs, 142333];
cacheRetrievals = [cacheRetrievals, 6430];
cacheSize = [cacheSize, 191127];
cacheClears = [cacheClears, 0];

%Turn: 28
movesGenerated = [movesGenerated, 226749];
searchTime = [searchTime, 2253];
evaluations = [evaluations, 56568];
cutoffs = [cutoffs, 163355];
cacheRetrievals = [cacheRetrievals, 432];
cacheSize = [cacheSize, 191127];
cacheClears = [cacheClears, 0];

%Turn: 29
movesGenerated = [movesGenerated, 860043];
searchTime = [searchTime, 2618];
evaluations = [evaluations, 56690];
cutoffs = [cutoffs, 779135];
cacheRetrievals = [cacheRetrievals, 31076];
cacheSize = [cacheSize, 216741];
cacheClears = [cacheClears, 0];

%Turn: 30
movesGenerated = [movesGenerated, 224054];
searchTime = [searchTime, 1326];
evaluations = [evaluations, 26800];
cutoffs = [cutoffs, 190795];
cacheRetrievals = [cacheRetrievals, 925];
cacheSize = [cacheSize, 216741];
cacheClears = [cacheClears, 0];

%Turn: 31
movesGenerated = [movesGenerated, 168888];
searchTime = [searchTime, 558];
evaluations = [evaluations, 12957];
cutoffs = [cutoffs, 151024];
cacheRetrievals = [cacheRetrievals, 6304];
cacheSize = [cacheSize, 223394];
cacheClears = [cacheClears, 0];

%Turn: 32
movesGenerated = [movesGenerated, 29921];
searchTime = [searchTime, 245];
evaluations = [evaluations, 6018];
cutoffs = [cutoffs, 23009];
cacheRetrievals = [cacheRetrievals, 232];
cacheSize = [cacheSize, 223394];
cacheClears = [cacheClears, 0];

%Turn: 33
movesGenerated = [movesGenerated, 104986];
searchTime = [searchTime, 296];
evaluations = [evaluations, 6562];
cutoffs = [cutoffs, 95647];
cacheRetrievals = [cacheRetrievals, 3480];
cacheSize = [cacheSize, 226476];
cacheClears = [cacheClears, 0];

%Turn: 34
movesGenerated = [movesGenerated, 37628];
searchTime = [searchTime, 349];
evaluations = [evaluations, 8279];
cutoffs = [cutoffs, 28126];
cacheRetrievals = [cacheRetrievals, 163];
cacheSize = [cacheSize, 226476];
cacheClears = [cacheClears, 0];

%Turn: 35
movesGenerated = [movesGenerated, 103507];
searchTime = [searchTime, 433];
evaluations = [evaluations, 11338];
cutoffs = [cutoffs, 88646];
cacheRetrievals = [cacheRetrievals, 5713];
cacheSize = [cacheSize, 232101];
cacheClears = [cacheClears, 0];

%Turn: 36
movesGenerated = [movesGenerated, 269912];
searchTime = [searchTime, 2995];
evaluations = [evaluations, 71490];
cutoffs = [cutoffs, 189855];
cacheRetrievals = [cacheRetrievals, 839];
cacheSize = [cacheSize, 232101];
cacheClears = [cacheClears, 0];

%Turn: 37
movesGenerated = [movesGenerated, 139877];
searchTime = [searchTime, 761];
evaluations = [evaluations, 16706];
cutoffs = [cutoffs, 117927];
cacheRetrievals = [cacheRetrievals, 5619];
cacheSize = [cacheSize, 243186];
cacheClears = [cacheClears, 0];

%Turn: 38
movesGenerated = [movesGenerated, 12133];
searchTime = [searchTime, 122];
evaluations = [evaluations, 2499];
cutoffs = [cutoffs, 9298];
cacheRetrievals = [cacheRetrievals, 58];
cacheSize = [cacheSize, 243186];
cacheClears = [cacheClears, 0];

%Turn: 39
movesGenerated = [movesGenerated, 217306];
searchTime = [searchTime, 1094];
evaluations = [evaluations, 17499];
cutoffs = [cutoffs, 190911];
cacheRetrievals = [cacheRetrievals, 4644];
cacheSize = [cacheSize, 255811];
cacheClears = [cacheClears, 0];

%Turn: 40
movesGenerated = [movesGenerated, 105293];
searchTime = [searchTime, 752];
evaluations = [evaluations, 15318];
cutoffs = [cutoffs, 87145];
cacheRetrievals = [cacheRetrievals, 388];
cacheSize = [cacheSize, 255811];
cacheClears = [cacheClears, 0];

%Turn: 41
movesGenerated = [movesGenerated, 355272];
searchTime = [searchTime, 1822];
evaluations = [evaluations, 33061];
cutoffs = [cutoffs, 307103];
cacheRetrievals = [cacheRetrievals, 11338];
cacheSize = [cacheSize, 277157];
cacheClears = [cacheClears, 0];

%Turn: 42
