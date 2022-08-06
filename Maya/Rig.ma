//Maya ASCII 2023 scene
//Name: Rig.ma
//Last modified: Sat, Aug 06, 2022 07:34:18 PM
//Codeset: 1252
requires maya "2023";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftPostEffects" "redshift4maya" "3.5.04";
requires "stereoCamera" "10.0";
requires "mtoa" "5.1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202205052215-234554116d";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22000)";
fileInfo "UUID" "4E1ED7DE-41EF-E2D6-14C1-B1B75FFA886C";
createNode transform -s -n "persp";
	rename -uid "E51556F0-4512-FDD4-6C0E-BBA0C9D7F9BE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -60.042453867816555 152.43504602584426 119.82314790714824 ;
	setAttr ".r" -type "double3" -15.938352728578046 -1101.3999999980417 -4.2700913135836757e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "96D3E7A4-45C4-9C6B-A7C3-1CAC0FAD82FF";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 145.33525983259614;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 89.661492065395848 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "BE7F0DE5-4E13-9550-8830-7AB080329BA4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "696843E8-4038-1BAB-9CA3-DE8B7A2C4F8A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "15507D8E-438E-45D5-81ED-63AC92BCFE01";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.9604130102458486 91.897647414668668 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "14945EB6-474C-CBE3-60C6-11817D0A6C49";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 46.972188857952219;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "D90AB0ED-4F8A-B73C-4C4B-42903BEFB4D5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "6371E556-44DC-EB86-39CF-B0AECAE7A0E8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "rig";
	rename -uid "D2E8D52B-412E-9172-5B4A-C4B718EF4BB4";
createNode transform -n "root_ctrl_pos" -p "rig";
	rename -uid "630343AD-40FF-63EF-AB79-AD8D8ADF1DDC";
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode transform -n "root_ctrl" -p "root_ctrl_pos";
	rename -uid "E3DF1A00-4FF7-D1D9-B249-62A76078F43E";
	setAttr -k off ".v";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode nurbsCurve -n "root_ctrlShape" -p "root_ctrl";
	rename -uid "FAE4A0BB-4B5E-BDD4-FAF5-809205FED350";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 5 0 no 3
		6 0 1 2 3 4 5
		6
		0.32030557323951464 -52.33882338325575 -1.2319559130568024e-14
		54.983002462832644 -12.114326568801749 5.5902795508378877e-16
		33.95489314536114 52.329429239832699 7.2203661028347276e-15
		-33.947132766011663 52.33882338325575 1.2549436621035476e-14
		-54.983002462832644 -12.402890148296811 -2.1055073040165873e-15
		0.32030557323951464 -52.33882338325575 -1.2319559130568024e-14
		;
createNode transform -n "body_ctrl_pos" -p "root_ctrl";
	rename -uid "71794F82-4425-6DAB-EF4B-12A79EA538DE";
	setAttr ".t" -type "double3" 0 -3.1554436208840472e-30 84.908119201660156 ;
	setAttr ".r" -type "double3" 89.999992370605483 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999994039535522 0.99999994039535522 ;
createNode transform -n "body_ctrl" -p "body_ctrl_pos";
	rename -uid "D27177C2-4773-AAEE-2DE3-979A1E9559BC";
	addAttr -ci true -sn "IkFk" -ln "IkFk" -dv 1 -min 0 -max 1 -at "long";
	setAttr -k off ".v";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 3.3881317890172014e-21 ;
	setAttr ".sp" -type "double3" 0 0 3.3881317890172014e-21 ;
	setAttr -k on ".IkFk" 0;
createNode nurbsCurve -n "body_ctrlShape" -p "body_ctrl";
	rename -uid "3402D974-49B7-986A-CDC7-B4BE709B8579";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		-30.076919549297092 0 1.6940658945086007e-21
		-15.038459774648546 0 -26.047364252680016
		15.038459774648546 0 -26.047364252680016
		30.076919549297092 0 1.6940658945086007e-21
		15.038459774648546 0 26.047364252680016
		-15.038459774648546 0 26.047364252680016
		-30.076919549297092 0 1.6940658945086007e-21
		;
createNode transform -n "L_Thigh_fk_ctrl_pos" -p "body_ctrl";
	rename -uid "42FC1F9C-4F16-13B2-BE06-C0B47BCA38D4";
	setAttr ".t" -type "double3" 8.6588566268734386 -1.4904603368634781 -1.3327054414789308 ;
	setAttr ".r" -type "double3" -1.8016000017876936 0.0042670714650859896 179.18261030760564 ;
	setAttr ".s" -type "double3" 1.0000001192214194 1.000000357615783 1.0000002384185771 ;
	setAttr ".sh" -type "double3" -1.6993061757976017e-09 0 0 ;
createNode transform -n "L_Thigh_fk_ctrl" -p "L_Thigh_fk_ctrl_pos";
	rename -uid "3C90AA97-468A-BF4E-9F76-C0BB434A2163";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -1.712542215592805e-06 2.8313169480043143e-06 -7.2247423199556238e-07 ;
	setAttr ".sp" -type "double3" -1.712542215592805e-06 2.8313169480043143e-06 -7.2247423199556238e-07 ;
createNode nurbsCurve -n "L_Thigh_fk_ctrlShape" -p "L_Thigh_fk_ctrl";
	rename -uid "3E330020-4E8A-1629-A81A-C4B447653D05";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.0989762478451901 18.553636924865824 -8.0981953315504924
		0.0010846000163012327 18.553636949993194 -11.452451678642667
		-8.0968070484698949 18.553636924865824 -8.0981953315504889
		-11.451063596558003 18.553636864202986 -0.00030416672451820089
		-8.0968070500567713 18.553636803540147 8.0975869981014554
		0.0010845977721166845 18.553636778412777 11.451843345193637
		8.0989762462583137 18.553636803540147 8.0975869981014554
		11.453232794346421 18.553636864202986 -0.00030416672451604544
		8.0989762478451901 18.553636924865824 -8.0981953315504924
		0.0010846000163012327 18.553636949993194 -11.452451678642667
		-8.0968070484698949 18.553636924865824 -8.0981953315504889
		;
createNode transform -n "L_Calf_fk_ctrl_pos" -p "L_Thigh_fk_ctrl";
	rename -uid "9CD960CE-47D2-0537-1272-50B1038702EC";
	setAttr ".t" -type "double3" 0.0020637197094774962 37.107269286658429 -0.00034570695625601999 ;
	setAttr ".r" -type "double3" 1.340532462592378 0.029105808638244419 -0.1104621580366875 ;
	setAttr ".s" -type "double3" 0.99999982119750752 0.99999970203058752 0.99999988072545754 ;
	setAttr ".sh" -type "double3" 6.9070710881850747e-10 0 5.5764915765354802e-09 ;
createNode transform -n "L_Calf_fk_ctrl" -p "L_Calf_fk_ctrl_pos";
	rename -uid "A943F603-42A0-DFD1-6307-35847300ECE5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 2.6267563058013366e-07 -5.1843984749666561e-07 -5.3651630693707375e-08 ;
	setAttr ".sp" -type "double3" 2.6267563058013366e-07 -5.1843984749666561e-07 -5.3651630693707375e-08 ;
createNode nurbsCurve -n "L_Calf_fk_ctrlShape" -p "L_Calf_fk_ctrl";
	rename -uid "BA8B700B-4CE7-B00C-521B-1AA20EE0A0DB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		8.0994362354156415 19.310878424686578 -8.0952634909329539
		0.0015431384648207092 19.310878421475074 -11.449520238292131
		-8.0963499570694744 19.310878424686571 -8.0952634909329539
		-11.450607102470691 19.310878432439814 0.0026286402230391026
		-8.0963499536496712 19.310878440193072 8.1005207713790313
		0.0015431433011490053 19.310878443404576 11.454777518738215
		8.0994362388354411 19.310878440193086 8.1005207713790366
		11.453693384236669 19.310878432439814 0.002628640223040879
		8.0994362354156415 19.310878424686578 -8.0952634909329539
		0.0015431384648207092 19.310878421475074 -11.449520238292131
		-8.0963499570694744 19.310878424686571 -8.0952634909329539
		;
createNode transform -n "L_Foot_fk_ctrl_pos" -p "L_Calf_fk_ctrl";
	rename -uid "300006D1-408F-C112-000A-27BCDC99B0FF";
	setAttr ".t" -type "double3" 0.002161423856974487 38.621681210688884 0.0056022520658394193 ;
	setAttr ".r" -type "double3" 74.36754500298035 -6.3416211227739092 0.72905357106144375 ;
	setAttr ".s" -type "double3" 1.0000000581287429 0.9999999461169925 0.9999999957543968 ;
	setAttr ".sh" -type "double3" -2.5943341360325078e-08 -5.6005456794872492e-09 -3.1354063312228958e-08 ;
createNode transform -n "L_Foot_fk_ctrl" -p "L_Foot_fk_ctrl_pos";
	rename -uid "DAA55D9E-413F-ADC8-D8CF-25B7BDC485A4";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -5.8620308607260085e-10 6.3153493989887011e-08 -2.1862541377259959e-07 ;
	setAttr ".sp" -type "double3" -5.8620397425102055e-10 6.3153493989887011e-08 -2.1862541377259959e-07 ;
createNode nurbsCurve -n "L_Foot_fk_ctrlShape" -p "L_Foot_fk_ctrl";
	rename -uid "76E6A291-4BF9-BEEF-AB84-7F87A28F8B1D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.6810192231252712 4.362986543898387 5.3305643332057429
		0.0099956144557004079 6.6162439194178226 5.9944183525326906
		-5.6610279942138684 4.362986543898387 5.3305643332057713
		-8.0100428854628127 -1.0768579715978923 3.7278789563108603
		-5.6610279942138693 -6.5167024870941486 2.1251935794159489
		0.0099956144556988518 -8.769959862613609 1.4613395600890298
		5.6810192231252703 -6.5167024870941574 2.1251935794159489
		8.0300341143742138 -1.0768579715978888 3.7278789563108603
		5.6810192231252712 4.362986543898387 5.3305643332057429
		0.0099956144557004079 6.6162439194178226 5.9944183525326906
		-5.6610279942138684 4.362986543898387 5.3305643332057713
		;
createNode transform -n "R_Thigh_fk_ctrl_pos" -p "body_ctrl";
	rename -uid "1E02A4F7-4766-B03A-0405-ADBA35220F2E";
	setAttr ".t" -type "double3" -8.6589162383544966 -1.4904136239570107 -1.3326921847514768 ;
	setAttr ".r" -type "double3" -1.8016966269575241 -0.004265664939187507 -179.18205859862312 ;
	setAttr ".s" -type "double3" 1 1.0000001192092896 0.99999999999998579 ;
	setAttr ".rp" -type "double3" 8.8817841970012523e-16 0 -4.4408920985006262e-16 ;
	setAttr ".rpt" -type "double3" 1.4184141846260532e-19 -1.2892329801305275e-18 8.8789275094768781e-16 ;
	setAttr ".sp" -type "double3" 8.8817841970012523e-16 0 -4.4408920985006262e-16 ;
createNode transform -n "R_Thigh_fk_ctrl" -p "R_Thigh_fk_ctrl_pos";
	rename -uid "A71AD590-46B6-2ECF-A7B6-92B99B9B4B6B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -1.7125424252029114e-06 2.831317942764144e-06 7.2247440385808659e-07 ;
	setAttr ".sp" -type "double3" -1.712542425202912e-06 2.8313179427641444e-06 7.2247440385808659e-07 ;
	setAttr ".spt" -type "double3" 6.3527471044072516e-22 -4.2351647362715008e-22 0 ;
createNode nurbsCurve -n "R_Thigh_fk_ctrlShape" -p "R_Thigh_fk_ctrl";
	rename -uid "6452877A-423D-38F9-0572-62AD1D2FFBB2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-8.0989806069731589 18.553643559939225 -8.0981958173618942
		-0.0010879937021348856 18.553643585066599 -11.452452964171091
		8.0968046202261945 18.553643559939218 -8.0981958173618835
		11.451061568213527 18.553643499276358 -0.00030272184822789753
		8.0968046218130674 18.553643438613495 8.0975903736654313
		-0.0010879914579531651 18.553643413486121 11.451847520474638
		-8.0989806053862861 18.553643438613502 8.0975903736654313
		-11.453237553373619 18.553643499276365 -0.0003027218482289119
		-8.0989806069731589 18.553643559939225 -8.0981958173618942
		-0.0010879937021348856 18.553643585066599 -11.452452964171091
		8.0968046202261945 18.553643559939218 -8.0981958173618835
		;
createNode transform -n "R_Calf_fk_ctrl_pos" -p "R_Thigh_fk_ctrl";
	rename -uid "32222BAE-4DFA-E4F1-5106-B0B882718233";
	setAttr ".t" -type "double3" 0.0024152225726385979 37.107309923433263 -0.00027407422427483397 ;
	setAttr ".r" -type "double3" 1.3401887821344973 -0.029133820751092439 0.11226076098429413 ;
	setAttr ".s" -type "double3" 0.99999988080240854 1.0000000000535347 1.0000001191440573 ;
	setAttr ".sh" -type "double3" -4.6700923718689961e-10 0 5.5749607102647698e-09 ;
	setAttr ".rp" -type "double3" -0.0041308012008314842 1.3270145155059032e-05 1.4448665569060683e-06 ;
	setAttr ".rpt" -type "double3" -1.8356470649058143e-08 -8.1310053369505459e-06 -1.7904599293794812e-06 ;
	setAttr ".sp" -type "double3" -0.0041308016932068981 1.3270145146293544e-05 1.444866384758825e-06 ;
	setAttr ".spt" -type "double3" 4.9237541414967793e-10 8.7654882054831196e-15 1.7214724329553506e-13 ;
createNode transform -n "R_Calf_fk_ctrl" -p "R_Calf_fk_ctrl_pos";
	rename -uid "DE0B49A1-4103-52AD-9EA1-24AC4F2BEBC4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".sh" -type "double3" 9.3417854434662203e-10 2.42448664668357e-10 0 ;
	setAttr ".rp" -type "double3" -0.0041310638304655808 1.2752596930620658e-05 1.3789671617188515e-06 ;
	setAttr ".rpt" -type "double3" 3.4151058758003052e-08 8.1697232927461015e-06 1.6120253670625318e-06 ;
	setAttr ".sp" -type "double3" -0.004131063338070895 1.2752596930454274e-05 1.37896732610443e-06 ;
	setAttr ".spt" -type "double3" -4.9239468588320574e-10 1.6638437589722757e-16 -1.6438557856007049e-13 ;
createNode nurbsCurve -n "R_Calf_fk_ctrlShape" -p "R_Calf_fk_ctrl";
	rename -uid "66953466-4591-F248-5413-1F830DDB5E21";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-8.1372536266953617 19.479348987008333 -7.6453911965197472
		-0.03782492692072234 19.573435667517728 -10.9946162167682
		8.0584994120632736 19.510573284677736 -7.6371638634509065
		11.409002397851179 19.327585769792925 0.46021580988032396
		8.051004822140003 19.131664727337895 8.5541876102722814
		-0.048423877634632587 19.0375780468285 11.903412630520741
		-8.1447482166186269 19.100440429668502 8.5459602772034522
		-11.495251202406546 19.283427944553274 0.44858060387221604
		-8.1372536266953617 19.479348987008333 -7.6453911965197472
		-0.03782492692072234 19.573435667517728 -10.9946162167682
		8.0584994120632736 19.510573284677736 -7.6371638634509065
		;
createNode transform -n "R_Foot_fk_ctrl_pos" -p "R_Calf_fk_ctrl";
	rename -uid "AC79836E-4855-62AF-1CEC-FB834C327A88";
	setAttr ".t" -type "double3" 0.061905191468830445 39.493938008358583 -0.23527924425290969 ;
	setAttr ".r" -type "double3" 74.367492560788804 6.3416175130654029 -0.72905821537407467 ;
	setAttr ".s" -type "double3" 1.0000002355747091 1.0000002411566251 1.000000000105824 ;
	setAttr ".sh" -type "double3" 5.1574122719554007e-08 9.1307773311729277e-09 1.0267502957873957e-09 ;
	setAttr ".rp" -type "double3" -0.083354595565191189 -0.010762689229699265 0.9035362940405246 ;
	setAttr ".rpt" -type "double3" 0.015154558116787035 -0.86145465598443249 -0.66264769669846424 ;
	setAttr ".sp" -type "double3" -0.083354583623871825 -0.01076268756191201 0.90353629394490875 ;
	setAttr ".spt" -type "double3" -1.1941319368474486e-08 -1.6677872556396393e-09 9.5615848582213267e-11 ;
createNode transform -n "R_Foot_fk_ctrl" -p "R_Foot_fk_ctrl_pos";
	rename -uid "F62585B1-44F2-8791-EEE3-519D09B2F721";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -0.083354580377506912 -0.010762460132636478 0.90353630109826366 ;
	setAttr ".sp" -type "double3" -0.083354580595679018 -0.010762457765759237 0.90353649743891218 ;
	setAttr ".spt" -type "double3" 2.1817299298914721e-10 -2.3668781293598463e-09 -1.9634064670816185e-07 ;
createNode nurbsCurve -n "R_Foot_fk_ctrlShape" -p "R_Foot_fk_ctrl";
	rename -uid "AA58933E-45B4-0765-C3FB-FF81533E1D57";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-5.1521324960785053 5.8842561750339151 6.508491521851048
		0.7421489969969256 7.504321485006507 7.0663553130475316
		6.1204353756660579 4.6507014234213493 6.2858028672060238
		7.8321994216309996 -1.0049920795049749 4.6240712209570294
		4.8747129723481324 -6.1497304743835866 3.0545802356486389
		-1.0195685207272938 -7.769795784356214 2.4967164444521748
		-6.3978548993964264 -4.9161757227710368 3.2772688902936862
		-8.1096189453613672 0.73951778015528002 4.9390005365426761
		-5.1521324960785053 5.8842561750339151 6.508491521851048
		0.7421489969969256 7.504321485006507 7.0663553130475316
		6.1204353756660579 4.6507014234213493 6.2858028672060238
		;
createNode transform -n "RightHand_ctrl" -p "body_ctrl";
	rename -uid "CD9F146B-46B1-51FE-8996-97B719B23F37";
	setAttr ".t" -type "double3" -54.937678560011499 20.176220128489824 -5.6897108970293706 ;
	setAttr ".r" -type "double3" -4.7423533273385274 5.8511657682266422 121.56491339394185 ;
	setAttr ".s" -type "double3" 0.99999992457486964 1.0000001911123029 0.99999994391728331 ;
	setAttr ".rp" -type "double3" 0 1.2434497875801753e-14 -8.8817841970012523e-16 ;
	setAttr ".rpt" -type "double3" -1.0634590796965528e-14 -1.893730582261393e-14 7.3144387816013025e-16 ;
	setAttr ".sp" -type "double3" 0 1.2434497875801753e-14 -8.8817841970012523e-16 ;
createNode transform -n "RightHandPinky1_ctrl_pos" -p "RightHand_ctrl";
	rename -uid "4E65A0DA-4BE0-1A99-EC77-5EB69CDC96D4";
	setAttr ".t" -type "double3" -0.26867371605936796 7.6355702285310709 -1.3872284006412805 ;
	setAttr ".r" -type "double3" 6.9111809730529794 -0.35239917039871221 -0.6780969500541687 ;
	setAttr ".s" -type "double3" 0.99999992551895101 1.0000003154813719 1.0000002358368734 ;
	setAttr ".sh" -type "double3" 4.6157836812755022e-08 1.0848382757161358e-09 -6.2477505464858633e-08 ;
createNode transform -n "RightHandPinky1_ctrl" -p "RightHandPinky1_ctrl_pos";
	rename -uid "BBC3CFD9-464D-ADEB-1255-2DBBD4DB9923";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 6.616581487151052e-07 2.2740416748545655e-06 1.4809451798214468e-07 ;
	setAttr ".sp" -type "double3" 6.616581487151052e-07 2.2740416748545655e-06 1.4809451798214468e-07 ;
createNode nurbsCurve -n "RightHandPinky1_ctrlShape" -p "RightHandPinky1_ctrl";
	rename -uid "7FBD727E-470A-4DF9-3E28-389C755A170E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ovrgb" -type "float3" 1 1 1 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		1.0000015568009508 1.513248805995365 0.50000022310281933
		1.0000011022248017 5.3995382213769506e-07 0.50000022310281933
		1.0000010898316298 5.3497307282027793e-07 -0.4999997788192625
		1.000001544407779 1.5132488010146159 -0.4999997788192625
		1.0000015568009508 1.513248805995365 0.50000022310281933
		;
createNode transform -n "RightHandPinky2_ctrl_pos" -p "RightHandPinky1_ctrl";
	rename -uid "612EA1C7-4677-436E-D297-65A5DC71B950";
	setAttr ".t" -type "double3" 0.00033358382154443115 2.5279611287156896 -8.1762704016688216e-05 ;
	setAttr ".r" -type "double3" -1.7198066711425779 0.42119884490966791 3.7917900085449219 ;
	setAttr ".s" -type "double3" 0.99999963115862045 1.0000001848594171 0.99999982635416895 ;
	setAttr ".rp" -type "double3" -0.00066584432670520636 -2.0428107429430215e-14 0.00016382159706615189 ;
	setAttr ".sp" -type "double3" -0.00066584457229623695 -2.042810365310288e-14 0.0001638216255130942 ;
	setAttr ".spt" -type "double3" 2.455910305317097e-10 -3.7763273350493869e-21 -2.8446942304935837e-11 ;
createNode transform -n "RightHandPinky2_ctrl" -p "RightHandPinky2_ctrl_pos";
	rename -uid "196D6E3F-42BE-A7FA-6FDD-4396E6DB05A6";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -0.00066533440595151205 2.3162700486523136e-06 0.00016389653913151392 ;
	setAttr ".sp" -type "double3" -0.00066533440595151205 2.3162700486523136e-06 0.00016389653913151392 ;
createNode nurbsCurve -n "RightHandPinky2_ctrlShape" -p "RightHandPinky2_ctrl";
	rename -uid "ED5C1421-4FB4-6637-97EF-CEB4462F70A3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ovrgb" -type "float3" 1 1 1 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.93278053002376371 1.0890898609249682 0.46225022215180045
		0.99979274428280396 0.08134628612193788 0.49257403363142982
		0.99444559390955856 0.050914299832769593 -0.50694850507626721
		0.92743337965051842 1.0586578746357997 -0.53727231655589658
		0.93278053002376371 1.0890898609249682 0.46225022215180045
		;
createNode transform -n "RightHandPinky3_ctrl_pos" -p "RightHandPinky2_ctrl";
	rename -uid "2416CA43-46CE-4D6B-D5D2-2EB860834CCD";
	setAttr ".t" -type "double3" 0.089768179056617964 1.35721638096409 0.040624945676382911 ;
	setAttr ".r" -type "double3" -2.7304894924163818 0.027774892747402188 -6.6627418896430806 ;
	setAttr ".s" -type "double3" 0.9999996221484837 1.0000003794548282 1.0000002368154093 ;
	setAttr ".rp" -type "double3" -0.090426640024842936 -0.0035908502989279332 -0.040462065920152827 ;
	setAttr ".sp" -type "double3" -0.090426674192698897 -0.003590848936362967 -0.040462056338114394 ;
	setAttr ".spt" -type "double3" 3.4167855957181782e-08 -1.3625649663223299e-09 -9.582038433697616e-09 ;
createNode transform -n "RightHandPinky3_ctrl" -p "RightHandPinky3_ctrl_pos";
	rename -uid "E9744DF2-40F8-D0ED-F0DB-E2A4AB4DF731";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -0.090425899453833836 -0.0035886062435723787 -0.040462089471404283 ;
	setAttr ".sp" -type "double3" -0.090425899453833836 -0.0035886062435723787 -0.040462089471404283 ;
createNode nurbsCurve -n "RightHandPinky3_ctrlShape" -p "RightHandPinky3_ctrl";
	rename -uid "1C5F04AD-4E1B-3644-9FF9-31B301B0801E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ovrgb" -type "float3" 1 1 1 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.96248982146743889 0.99140694244175032 0.37463935686693872
		0.91241273550411384 -0.01467432661238603 0.45369654405264781
		0.90421117867700085 -0.09260377672595696 -0.54322859592737205
		0.9542882646403259 0.91347749232817943 -0.62228578311308114
		0.96248982146743889 0.99140694244175032 0.37463935686693872
		;
createNode transform -n "RightHandRing1_ctrl_pos" -p "RightHand_ctrl";
	rename -uid "C88AE184-432B-611C-F924-669EDD7CA49D";
	setAttr ".t" -type "double3" 0.013808414737098929 7.6049648964925298 -0.010964783962489122 ;
	setAttr ".r" -type "double3" 5.0719809532165527 -0.18563932180404666 -3.1530041694641109 ;
	setAttr ".s" -type "double3" 0.99999980630968455 1.0000001962720588 1.000000116627584 ;
	setAttr ".sh" -type "double3" 2.0632481107565512e-08 -2.3233722094034743e-09 -4.3992687567441525e-08 ;
createNode transform -n "RightHandRing1_ctrl" -p "RightHandRing1_ctrl_pos";
	rename -uid "9A3C3FA8-497F-A0C3-0285-7A8EF8871FB2";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 6.6165816292595991e-07 2.27404166253109e-06 1.4809451709396626e-07 ;
	setAttr ".sp" -type "double3" 6.6165816292595991e-07 2.27404166253109e-06 1.4809451709396626e-07 ;
createNode nurbsCurve -n "RightHandRing1_ctrlShape" -p "RightHandRing1_ctrl";
	rename -uid "75B87D4C-4FFA-0E07-77E7-48865282CF94";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ovrgb" -type "float3" 1 1 1 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		1.0000015568009508 2.0000000244161256 0.50000022310281755
		1.0000011022248017 -1.7833267307310052e-08 0.50000022310281755
		1.0000010898316298 -2.4416125565807079e-08 -0.49999977881926427
		1.000001544407779 2.0000000178332673 -0.49999977881926427
		1.0000015568009508 2.0000000244161256 0.50000022310281755
		;
createNode transform -n "RightHandRing2_ctrl_pos" -p "RightHandRing1_ctrl";
	rename -uid "7EC17DC5-40EC-E385-8CE5-BBB19C4699F3";
	setAttr ".t" -type "double3" 0.00024207445613470238 3.5082198210344462 -0.00022148828018292465 ;
	setAttr ".r" -type "double3" -0.95110112428665194 0.15634122490882876 4.0764546394348145 ;
	setAttr ".s" -type "double3" 0.9999999306180376 1.0000004252594821 1.0000002401689854 ;
	setAttr ".rp" -type "double3" -0.00048282559593374711 -1.2434503163689879e-14 0.00044327274940120264 ;
	setAttr ".sp" -type "double3" -0.00048282562943313678 -1.2434497875801753e-14 0.00044327264294086177 ;
	setAttr ".spt" -type "double3" 3.3499389683939048e-11 -5.2878881257887475e-21 1.0646034084973494e-10 ;
createNode transform -n "RightHandRing2_ctrl" -p "RightHandRing2_ctrl_pos";
	rename -uid "767AC8B5-4D2D-3D41-2508-95B32E6A56D3";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -0.00048232715602125609 2.3174848973184226e-06 0.00044338116422171225 ;
	setAttr ".sp" -type "double3" -0.00048232715602125609 2.3174848973184226e-06 0.00044338116422171225 ;
createNode nurbsCurve -n "RightHandRing2_ctrlShape" -p "RightHandRing2_ctrl";
	rename -uid "F61CAEDC-47BD-35A8-2077-249567683185";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ovrgb" -type "float3" 1 1 1 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.85550984811038633 2.0741217689896896 0.46444606036905617
		0.99775534158911039 0.079462825603657639 0.49764408105991986
		0.9962139299985231 0.062711800082953753 -0.50221442439776565
		0.85396843651979903 2.0573707434689852 -0.53541244508862929
		0.85550984811038633 2.0741217689896896 0.46444606036905617
		;
createNode transform -n "RightHandRing3_ctrl_pos" -p "RightHandRing2_ctrl";
	rename -uid "675BAD83-4E63-B659-003F-81A2F3212A18";
	setAttr ".t" -type "double3" 0.15267863850241947 2.1524486037710857 0.035633229297474089 ;
	setAttr ".r" -type "double3" -0.67958396673202537 -0.06277918815612793 -3.914050260741218 ;
	setAttr ".s" -type "double3" 0.99999964316303414 1.0000003574881144 0.99999976093039977 ;
	setAttr ".rp" -type "double3" -0.15315798178947371 -0.0057326892067261631 -0.03518945526816436 ;
	setAttr ".sp" -type "double3" -0.15315803644192272 -0.0057326871573586402 -0.035189463680895372 ;
	setAttr ".spt" -type "double3" 5.4652449020965508e-08 -2.0493675226085666e-09 8.4127310128703406e-09 ;
createNode transform -n "RightHandRing3_ctrl" -p "RightHandRing3_ctrl_pos";
	rename -uid "A2FF2C9C-4601-4518-CAC3-0791B408F3DA";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -0.1531573812638527 -0.0057304079254922868 -0.035189381021322852 ;
	setAttr ".sp" -type "double3" -0.1531573812638527 -0.0057304079254922868 -0.035189381021322852 ;
createNode nurbsCurve -n "RightHandRing3_ctrlShape" -p "RightHandRing3_ctrl";
	rename -uid "E389B911-4102-05B9-D067-A48A29B74ACE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ovrgb" -type "float3" 1 1 1 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.8412947899724974 2.0106056773040795 0.40690353958411107
		0.84704466467986861 0.011432287964999214 0.46411240115934232
		0.84663302377821603 -0.017173407359346859 -0.53547828875543713
		0.84088314907084483 1.9819999819797331 -0.59268715033066832
		0.8412947899724974 2.0106056773040795 0.40690353958411107
		;
createNode transform -n "RightHandMiddle1_ctrl_pos" -p "RightHand_ctrl";
	rename -uid "076E1A28-48A8-28FD-496B-69A8DADD8460";
	setAttr ".t" -type "double3" 0.38258661271960648 7.7476650688895656 1.3656731519035699 ;
	setAttr ".r" -type "double3" 5.7263784408569336 0.15333515405654907 -1.7558153867721558 ;
	setAttr ".s" -type "double3" 0.99999980630968455 1.0000001962720588 1.000000116627584 ;
	setAttr ".sh" -type "double3" 3.5028724078651853e-08 -7.7066004321488302e-10 -5.0382440396735253e-08 ;
createNode transform -n "RightHandMiddle1_ctrl" -p "RightHandMiddle1_ctrl_pos";
	rename -uid "A6E126E7-4623-561E-CE21-CC979F71160A";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 6.6165812029339577e-07 2.2740416878441749e-06 1.480945188703231e-07 ;
	setAttr ".sp" -type "double3" 6.6165812029339577e-07 2.2740416878441749e-06 1.480945188703231e-07 ;
createNode nurbsCurve -n "RightHandMiddle1_ctrlShape" -p "RightHandMiddle1_ctrl";
	rename -uid "6C53B491-4565-D9BD-F02A-6AA0B6866468";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		1.0000015568009508 2.0000000244161256 0.50000022310281755
		1.0000011022248017 -1.7833267307310052e-08 0.50000022310281755
		1.0000010898316298 -2.4416125565807079e-08 -0.49999977881926427
		1.000001544407779 2.0000000178332673 -0.49999977881926427
		1.0000015568009508 2.0000000244161256 0.50000022310281755
		;
createNode transform -n "RightHandMiddle2_ctrl_pos" -p "RightHandMiddle1_ctrl";
	rename -uid "A1E4929D-4D20-558E-BF11-3EB44B6FE070";
	setAttr ".t" -type "double3" 0.0014094633657265529 3.7411184855020374 -0.00027489650567317809 ;
	setAttr ".r" -type "double3" -0.20649226009845739 -0.36054706573486339 2.18475341796875 ;
	setAttr ".s" -type "double3" 0.99999993021479161 1.0000004247246812 1.0000001218977421 ;
	setAttr ".rp" -type "double3" -0.0028176034151755555 -3.5527151877256856e-15 0.00055008920037983883 ;
	setAttr ".sp" -type "double3" -0.0028176036118026104 -3.5527136788005009e-15 0.00055008913332521558 ;
	setAttr ".spt" -type "double3" 1.9662705507198124e-10 -1.5089251845613934e-21 6.705462328948375e-11 ;
createNode transform -n "RightHandMiddle2_ctrl" -p "RightHandMiddle2_ctrl_pos";
	rename -uid "E8E82383-4FF6-8264-06C2-44BA2DB7EEF2";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -0.0028170300380310209 2.2980968461538964e-06 0.00055023319219316136 ;
	setAttr ".sp" -type "double3" -0.0028170300380310209 2.2980968461538964e-06 0.00055023319219316136 ;
createNode nurbsCurve -n "RightHandMiddle2_ctrlShape" -p "RightHandMiddle2_ctrl";
	rename -uid "3602CFC1-434B-E7F8-643D-C491B9065FE3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.91702649896353261 2.0383368766521901 0.49962211384227578
		0.99322407424594605 0.039801875049114317 0.50682986384021711
		0.99964953010911362 0.036440429981041592 -0.49314384484274254
		0.92345195482670017 2.0349754315841175 -0.50035159484068403
		0.91702649896353261 2.0383368766521901 0.49962211384227578
		;
createNode transform -n "RightHandMiddle3_ctrl_pos" -p "RightHandMiddle2_ctrl";
	rename -uid "0C64110B-4FD4-4B45-D172-C78D714FA8D2";
	setAttr ".t" -type "double3" 0.09318810569225712 2.4482887440769439 0.0087941790540569335 ;
	setAttr ".r" -type "double3" 0.06097673624753952 -0.023076042532920834 -0.52540576457977295 ;
	setAttr ".s" -type "double3" 0.99999952188244878 1.0000003590268289 0.99999988067231504 ;
	setAttr ".rp" -type "double3" -0.095983202692573225 -0.0017911950542769831 -0.0082211637337402058 ;
	setAttr ".sp" -type "double3" -0.09598324858384899 -0.0017911944111901335 -0.00822116471475276 ;
	setAttr ".spt" -type "double3" 4.5891275764944796e-08 -6.4308684956441675e-10 9.81012553341543e-10 ;
createNode transform -n "RightHandMiddle3_ctrl" -p "RightHandMiddle3_ctrl_pos";
	rename -uid "8B581293-4C01-87FD-BDC9-06959479A4CF";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -0.095982654039204363 -0.0017889018304959592 -0.0082210178159991543 ;
	setAttr ".sp" -type "double3" -0.095982654039204363 -0.0017889018304959592 -0.0082210178159991543 ;
createNode nurbsCurve -n "RightHandMiddle3_ctrlShape" -p "RightHandMiddle3_ctrl";
	rename -uid "8B22AEF6-4B2B-5DFF-2656-8893D25B3F8A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.84229447253229295 2.0274655549145288 0.49353081007907945
		0.90017722286866242 0.028309451102194183 0.49849442040209874
		0.90697445789091424 0.026023463926357009 -0.50147986714041903
		0.84909170755454477 2.0251795677386912 -0.50644347746343832
		0.84229447253229295 2.0274655549145288 0.49353081007907945
		;
createNode transform -n "RightHandIndex1_ctrl_pos" -p "RightHand_ctrl";
	rename -uid "40397638-40B7-E74C-CC8E-FA9A3EE33F3A";
	setAttr ".t" -type "double3" 0.22828589129890986 7.630153303535991 2.9952739119085345 ;
	setAttr ".r" -type "double3" 3.9731698036193857 0.19402214884758004 -1.2220602035522461 ;
	setAttr ".s" -type "double3" 0.99999974670505132 1.0000001962720588 1.000000116627584 ;
	setAttr ".sh" -type "double3" 4.048546467810925e-08 -1.5257340773127225e-09 -3.2683373984886744e-08 ;
createNode transform -n "RightHandIndex1_ctrl" -p "RightHandIndex1_ctrl_pos";
	rename -uid "43816BFA-49D0-00F6-B801-749F7164D2ED";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 8.5820089168464619e-07 1.4772314518296525e-06 4.9752894248911161e-08 ;
	setAttr ".sp" -type "double3" 8.5820089168464619e-07 1.4772314518296525e-06 4.9752894248911161e-08 ;
createNode nurbsCurve -n "RightHandIndex1_ctrlShape" -p "RightHandIndex1_ctrl";
	rename -uid "22658D0B-4BDC-A2A0-F4FE-898E5A55D13E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		1.0000016822580258 2.000000125542138 0.64111092602559427
		1.000001741068687 -1.2768619528369385e-07 0.64111092602559427
		1.0000017505455738 -1.2554216499705007e-07 -0.641110762725561
		1.0000016917349126 2.0000001276861683 -0.641110762725561
		1.0000016822580258 2.000000125542138 0.64111092602559427
		;
createNode transform -n "RightHandIndex2_ctrl_pos" -p "RightHandIndex1_ctrl";
	rename -uid "498F3475-476D-774C-8F5F-9693E99D46FC";
	setAttr ".t" -type "double3" -5.5996228360375854e-06 -4.604106327299462e-06 -7.9308684791794444e-05 ;
	setAttr ".r" -type "double3" 1.0692806243896482 -0.62073642015457153 3.2556257247924809 ;
	setAttr ".s" -type "double3" 0.99999988671363305 1.0000003514400968 1.0000000002648886 ;
	setAttr ".rp" -type "double3" -0.0003916094977279196 3.3388748062816878 0.00012370114370065401 ;
	setAttr ".sp" -type "double3" -0.00039160954209194188 3.3388736328676147 0.00012370114366788698 ;
	setAttr ".spt" -type "double3" 4.436402229139046e-11 1.1734140728448089e-06 3.2767029116079646e-14 ;
createNode transform -n "RightHandIndex2_ctrl" -p "RightHandIndex2_ctrl_pos";
	rename -uid "FFEE9C11-4F1E-4F9E-8256-D3B12D749422";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -0.00039068607391357091 3.3388787630043026 0.00012391915533083164 ;
	setAttr ".sp" -type "double3" -0.00039068607391357091 3.3388787630043026 0.00012391915533083164 ;
createNode nurbsCurve -n "RightHandIndex2_ctrlShape" -p "RightHandIndex2_ctrl";
	rename -uid "E7FE047D-4F7E-F5AB-A7AA-8FB7EBEEE7A7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.76653718092721634 5.4428080158475085 0.65062038752244822
		0.99377853177021414 3.4558942654376881 0.64450358815864983
		0.99245688598823278 3.4489408777116446 -0.63786507531184511
		0.76521553514523466 5.4358546281214641 -0.63174827594804661
		0.76653718092721634 5.4428080158475085 0.65062038752244822
		;
createNode transform -n "RightHandIndex3_ctrl_pos" -p "RightHandIndex2_ctrl";
	rename -uid "3313B2AB-4F78-1C5E-7090-B58178EA74B1";
	setAttr ".t" -type "double3" 2.3740334296560445e-06 0.0081313767333961451 -0.07580026956148396 ;
	setAttr ".r" -type "double3" -0.18375669419765472 -0.048138085752725594 -2.9607273524350561 ;
	setAttr ".s" -type "double3" 0.99999949516378761 1.0000002657058804 0.99999994110725399 ;
	setAttr ".rp" -type "double3" -0.00041725660972361835 5.5858946025339522 0.075921154953289952 ;
	setAttr ".sp" -type "double3" -0.00041725682036997114 5.5858931183293032 0.07592115942449551 ;
	setAttr ".spt" -type "double3" 2.1064635280949423e-10 1.4842046489710653e-06 -4.4712055589324316e-09 ;
createNode transform -n "RightHandIndex3_ctrl" -p "RightHandIndex3_ctrl_pos";
	rename -uid "D0019E6B-489C-8335-1738-639BC0DCB0BC";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -0.00041598023763356196 5.585893488159301 0.07592119695456967 ;
	setAttr ".sp" -type "double3" -0.00041598023763356196 5.585893488159301 0.07592119695456967 ;
createNode nurbsCurve -n "RightHandIndex3_ctrlShape" -p "RightHandIndex3_ctrl";
	rename -uid "FA194969-48E7-A7A9-CC53-238AB51C64B6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.98017274942075949 7.5986847927359298 0.72553528970074532
		1.0011266878104692 5.5988959305393253 0.71929847645802814
		0.99788982704553353 5.5937091848956406 -0.56304132710088495
		0.97693588865582393 7.5934980470922442 -0.55680451385816765
		0.98017274942075949 7.5986847927359298 0.72553528970074532
		;
createNode transform -n "RightHandThumb1_ctrl_pos" -p "RightHand_ctrl";
	rename -uid "55B388EA-4C5A-CC22-F866-6EA187D8EA7F";
	setAttr ".t" -type "double3" -0.51271080826671778 1.5932463660367162 2.1656210575649721 ;
	setAttr ".r" -type "double3" 49.555515289306641 6.2685670852661142 12.44094944000244 ;
	setAttr ".s" -type "double3" 0.99999980630968455 1.0000001962720588 1.000000116627584 ;
	setAttr ".sh" -type "double3" 1.1806032592625472e-07 1.2234690915221462e-07 -2.64917569802135e-07 ;
createNode transform -n "RightHandThumb1_ctrl" -p "RightHandThumb1_ctrl_pos";
	rename -uid "F8DA0241-403B-394A-2BD6-26958B92B417";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 1.708557135771116e-07 1.151697388124262e-06 -1.1240660988676154e-06 ;
	setAttr ".sp" -type "double3" 1.708557135771116e-07 1.151697388124262e-06 -1.1240660988676154e-06 ;
createNode nurbsCurve -n "RightHandThumb1_ctrlShape" -p "RightHandThumb1_ctrl";
	rename -uid "68B7E74A-437C-FD5A-6ED5-C9B2E4EE056B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		1.0000000000000324 4.0925088566547503 1.9999999999999887
		-0.99999999999996825 4.0925088566547503 1.9999999999999889
		-0.99999999999996814 2.0925088566547485 1.9999999999999885
		1.000000000000032 2.0925088566547489 1.9999999999999887
		1.0000000000000324 4.0925088566547503 1.9999999999999887
		;
createNode transform -n "RightHandThumb2_ctrl_pos" -p "RightHandThumb1_ctrl";
	rename -uid "82133BEA-4FA7-A220-A7E7-A8B0BC006F4C";
	setAttr ".t" -type "double3" 2.7811512097741797e-06 4.8854169120635653 -3.2374127453493884e-05 ;
	setAttr ".r" -type "double3" -20.954442977905277 -0.98874336481094338 -10.016579627990723 ;
	setAttr ".s" -type "double3" 0.99999984860919156 0.99999995530990915 1.0000004941042202 ;
	setAttr ".sh" -type "double3" 6.448652712291956e-08 2.7653294776052411e-08 1.8266604695702323e-07 ;
createNode transform -n "RightHandThumb2_ctrl" -p "RightHandThumb2_ctrl_pos";
	rename -uid "68C3424C-4CFA-3CD4-0BAB-D78029E72238";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 1 1 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -2.97205900778863e-07 -0.9999997723286127 -1.0000000229780426 ;
	setAttr ".sp" -type "double3" -2.97205900778863e-07 -0.9999997723286127 -1.0000000229780426 ;
createNode nurbsCurve -n "RightHandThumb2_ctrlShape" -p "RightHandThumb2_ctrl";
	rename -uid "CFBDE20D-4298-940A-B2EE-6AB9E7EB00B4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.99999999999999978 1.0000000000000178 -1.7763568394002505e-14
		-1.0000000000000142 1.0000000000000164 -1.1546319456101628e-14
		-1.000000000000028 -0.99999999999998057 -1.1546319456101628e-14
		0.99999999999999933 -0.99999999999997302 -1.7763568394002505e-14
		0.99999999999999978 1.0000000000000178 -1.7763568394002505e-14
		;
createNode transform -n "RightHandThumb3_ctrl_pos" -p "RightHandThumb2_ctrl";
	rename -uid "EA224FEE-4735-36E2-C585-F6AD5B23D757";
	setAttr ".t" -type "double3" -7.9937742754054852e-06 1.3804390226514531 -1.0000069081356919 ;
	setAttr ".r" -type "double3" -1.6609431031306057 0.24690594320804216 -6.9894658369077574 ;
	setAttr ".s" -type "double3" 0.99999991162871105 0.99999985173400041 1.0000000578233545 ;
	setAttr ".sh" -type "double3" 1.2391426835535396e-07 -5.3235748000069682e-08 -2.3664360876944918e-08 ;
createNode transform -n "RightHandThumb3_ctrl" -p "RightHandThumb3_ctrl_pos";
	rename -uid "9E4AF7BC-4DE1-2859-5AB2-FBA18ACF27CE";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 1 1 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -3.2865070927485886e-07 4.2457124085581519e-07 -1.4800998045316453e-06 ;
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1.0000000925922325 0.99999986622101955 1.0000000411867618 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".sh" -type "double3" 1.7953092144679079e-07 9.8050438608734822e-10 -1.3555251595394074e-07 ;
	setAttr ".rp" -type "double3" 2.4683540333279872e-06 -1.0000004555245581 -1.0000005830568743 ;
	setAttr ".rpt" -type "double3" -2.5832622521191392e-08 -7.1941261516658897e-14 0 ;
	setAttr ".sp" -type "double3" 2.6488653332989998e-06 -1.0000007248562301 -1.0000005418700901 ;
	setAttr ".spt" -type "double3" -1.805112999710127e-07 2.6933167198575441e-07 -4.1186784125387036e-08 ;
createNode nurbsCurve -n "RightHandThumb3_ctrlShape" -p "RightHandThumb3_ctrl";
	rename -uid "81310FDA-4FFD-936C-C841-F4B528C1A974";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		1.0000000000000011 1.0000000000000027 -8.8817841970012523e-16
		-0.99999999999999867 1.0000000000000027 -8.8817841970012523e-16
		-0.99999999999999911 -0.99999999999999822 -8.8817841970012523e-16
		1.0000000000000007 -0.99999999999999822 -8.8817841970012523e-16
		1.0000000000000011 1.0000000000000027 -8.8817841970012523e-16
		;
createNode transform -n "LeftHand_ctrl" -p "body_ctrl";
	rename -uid "F59501D6-4AA6-FBA0-D59D-B3A7261A49BF";
	setAttr ".t" -type "double3" 54.937338672860051 20.175488821194577 -5.6905730777908641 ;
	setAttr ".r" -type "double3" -4.7436848354998311 -5.8525972018993411 -121.5648164659859 ;
	setAttr ".s" -type "double3" 1.0000000433849499 1.0000000165340222 1.000000059290324 ;
	setAttr ".sh" -type "double3" 5.2861800677848111e-08 4.5158674025113919e-09 -7.3588575450009265e-09 ;
createNode transform -n "LeftHandPinky1_ctrl_pos" -p "LeftHand_ctrl";
	rename -uid "581DE050-4505-2621-C8BF-57A3173D19B3";
	setAttr ".t" -type "double3" 0.26865232290860774 7.6355774123691562 -1.3872288278567755 ;
	setAttr ".r" -type "double3" 6.9111572366418068 0.35239704031448016 0.67811297555386929 ;
	setAttr ".s" -type "double3" 0.99999992443248886 0.99999989861942351 1.0000001173432176 ;
createNode transform -n "LeftHandPinky1_ctrl" -p "LeftHandPinky1_ctrl_pos";
	rename -uid "75589B01-4DA0-F1C3-2A91-DBBBEE3386F8";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 6.616581487151052e-07 2.2740416856237289e-06 1.4809451798214468e-07 ;
	setAttr ".sp" -type "double3" 6.616581487151052e-07 2.2740416856237289e-06 1.4809451798214468e-07 ;
createNode nurbsCurve -n "LeftHandPinky1_ctrlShape" -p "LeftHandPinky1_ctrl";
	rename -uid "790463AE-4A62-8B37-7376-7497B8AA9E3E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ovrgb" -type "float3" 1 1 1 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1.0000002334846534 1.513248805995365 -0.49999992691378325
		-0.99999977890850433 5.3995382213769506e-07 -0.49999992691378325
		-0.9999997665153324 5.3497307282027793e-07 0.50000007500829857
		-1.0000002210914816 1.5132488010146159 0.50000007500829857
		-1.0000002334846534 1.513248805995365 -0.49999992691378325
		;
createNode transform -n "LeftHandPinky2_ctrl_pos" -p "LeftHandPinky1_ctrl";
	rename -uid "C9EC494B-4A1F-C913-3337-5881DB4FF5A1";
	setAttr ".t" -type "double3" 0.00033963665224234774 2.5279655384866451 8.2084631419121479e-05 ;
	setAttr ".r" -type "double3" -1.7197880718711682 -0.42119915926074042 -3.7918315047893421 ;
	setAttr ".s" -type "double3" 1.0000001385556858 0.99999997807305907 1.0000001217898375 ;
createNode transform -n "LeftHandPinky2_ctrl" -p "LeftHandPinky2_ctrl_pos";
	rename -uid "710C59F2-4B2E-D4F0-1B28-E6957B90E8B6";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 6.6165812029339577e-07 2.2740416794064799e-06 1.4809451709396626e-07 ;
	setAttr ".sp" -type "double3" 6.6165812029339577e-07 2.2740416794064799e-06 1.4809451709396626e-07 ;
createNode nurbsCurve -n "LeftHandPinky2_ctrlShape" -p "LeftHandPinky2_ctrl";
	rename -uid "029B5BAC-4C9C-5CE8-ED45-1C8874EF83AF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ovrgb" -type "float3" 1 1 1 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1.0000002334846534 1.0104254217485569 -0.49999992691378325
		-0.99999977890850433 1.1161586305991723e-06 -0.49999992691378325
		-0.9999997665153324 1.1128328906771082e-06 0.50000007500829857
		-1.0000002210914816 1.010425418422817 0.50000007500829857
		-1.0000002334846534 1.0104254217485569 -0.49999992691378325
		;
createNode transform -n "LeftHandPinky3_ctrl_pos" -p "LeftHandPinky2_ctrl";
	rename -uid "CB0FD4C5-4B33-B1AA-3BA2-5CBF69359131";
	setAttr ".t" -type "double3" -3.8078052412515717e-05 1.353622466548102 -9.5421383594640474e-07 ;
	setAttr ".r" -type "double3" -2.7304940223693857 -0.027774179354310053 6.6627602577209464 ;
	setAttr ".s" -type "double3" 0.99999993911761997 0.99999988170911736 0.99999994075468279 ;
	setAttr ".sh" -type "double3" 3.69458710843845e-08 1.776207000122264e-09 1.3453785959394469e-08 ;
createNode transform -n "LeftHandPinky3_ctrl" -p "LeftHandPinky3_ctrl_pos";
	rename -uid "D3CB77F5-43F2-A312-ECA5-4791FA698A90";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 6.6165812029339577e-07 2.2740416794064799e-06 1.4809451709396626e-07 ;
	setAttr ".sp" -type "double3" 6.6165812029339577e-07 2.2740416794064799e-06 1.4809451709396626e-07 ;
createNode nurbsCurve -n "LeftHandPinky3_ctrlShape" -p "LeftHandPinky3_ctrl";
	rename -uid "789A527E-4F25-A535-165A-1A9D3207128C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ovrgb" -type "float3" 1 1 1 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1.0000002334846534 1.0104254217485569 -0.49999992691378325
		-0.99999977890850433 1.1161586305991723e-06 -0.49999992691378325
		-0.9999997665153324 1.1128328906771082e-06 0.50000007500829857
		-1.0000002210914816 1.010425418422817 0.50000007500829857
		-1.0000002334846534 1.0104254217485569 -0.49999992691378325
		;
createNode transform -n "LeftHandRing1_ctrl_pos" -p "LeftHand_ctrl";
	rename -uid "BEFA8D5E-4305-C879-134A-53A1E1085DD2";
	setAttr ".t" -type "double3" -0.013835518049191364 7.6049720686155755 -0.010963140300670915 ;
	setAttr ".r" -type "double3" 5.0719624639454022 0.18564262824177927 3.1530089335486502 ;
	setAttr ".s" -type "double3" 1.0000000436417693 1.0000000178287014 1.0000001173432183 ;
createNode transform -n "LeftHandRing1_ctrl" -p "LeftHandRing1_ctrl_pos";
	rename -uid "9F94BC91-4AFB-5B7A-A2A0-A491386A9309";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 6.616581487151052e-07 2.2740416820710152e-06 1.4809451709396626e-07 ;
	setAttr ".sp" -type "double3" 6.616581487151052e-07 2.2740416820710152e-06 1.4809451709396626e-07 ;
createNode nurbsCurve -n "LeftHandRing1_ctrlShape" -p "LeftHandRing1_ctrl";
	rename -uid "EBF76F1A-4208-F43B-1020-6C956AA2EE8E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ovrgb" -type "float3" 1 1 1 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1.0000002334846534 2.0000000244161256 -0.49999992691378325
		-0.99999977890850433 -1.7833267307310052e-08 -0.49999992691378325
		-0.9999997665153324 -2.4416125565807079e-08 0.50000007500829857
		-1.0000002210914816 2.0000000178332673 0.50000007500829857
		-1.0000002334846534 2.0000000244161256 -0.49999992691378325
		;
createNode transform -n "LeftHandRing2_ctrl_pos" -p "LeftHandRing1_ctrl";
	rename -uid "344BE177-48A4-56FA-D5CB-A08738460E23";
	setAttr ".t" -type "double3" 0.00026720253815426531 3.5082320992071132 0.00021941499893962657 ;
	setAttr ".r" -type "double3" -0.95109879970550493 -0.15634679794311521 -4.076465129852294 ;
	setAttr ".s" -type "double3" 0.99999996306285532 0.9999999750106634 1.0000001215311258 ;
createNode transform -n "LeftHandRing2_ctrl" -p "LeftHandRing2_ctrl_pos";
	rename -uid "4BEE6866-4E24-AE23-0D5D-588C3CA36BDC";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 6.616581487151052e-07 2.2740416820710152e-06 1.4809451709396626e-07 ;
	setAttr ".sp" -type "double3" 6.616581487151052e-07 2.2740416820710152e-06 1.4809451709396626e-07 ;
createNode nurbsCurve -n "LeftHandRing2_ctrlShape" -p "LeftHandRing2_ctrl";
	rename -uid "D3357848-4D88-36CF-A7B5-94A92FF4281F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ovrgb" -type "float3" 1 1 1 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1.0000002334846534 2.0000000244161256 -0.49999992691378325
		-0.99999977890850433 -1.7833267307310052e-08 -0.49999992691378325
		-0.9999997665153324 -2.4416125565807079e-08 0.50000007500829857
		-1.0000002210914816 2.0000000178332673 0.50000007500829857
		-1.0000002334846534 2.0000000244161256 -0.49999992691378325
		;
createNode transform -n "LeftHandRing3_ctrl_pos" -p "LeftHandRing2_ctrl";
	rename -uid "15C70910-42AD-B083-4105-428290599920";
	setAttr ".t" -type "double3" 1.5365827550795075e-05 2.1467133073094873 5.1926279986957979e-07 ;
	setAttr ".r" -type "double3" -0.67958599328994784 0.062780290842056288 3.9140601158142099 ;
	setAttr ".s" -type "double3" 0.99999998793839473 1.0000000121705999 0.99999994028636141 ;
createNode transform -n "LeftHandRing3_ctrl" -p "LeftHandRing3_ctrl_pos";
	rename -uid "8BB769D9-4ACF-4DD0-7A69-0696AB77AF81";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 6.616581487151052e-07 2.2740416820710152e-06 1.4809451709396626e-07 ;
	setAttr ".sp" -type "double3" 6.616581487151052e-07 2.2740416820710152e-06 1.4809451709396626e-07 ;
createNode nurbsCurve -n "LeftHandRing3_ctrlShape" -p "LeftHandRing3_ctrl";
	rename -uid "081B9794-4706-1911-41A4-26BBD1C22CC7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ovrgb" -type "float3" 1 1 1 ;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1.0000002334846534 2.0000000244161256 -0.49999992691378325
		-0.99999977890850433 -1.7833267307310052e-08 -0.49999992691378325
		-0.9999997665153324 -2.4416125565807079e-08 0.50000007500829857
		-1.0000002210914816 2.0000000178332673 0.50000007500829857
		-1.0000002334846534 2.0000000244161256 -0.49999992691378325
		;
createNode transform -n "LeftHandMiddle1_ctrl_pos" -p "LeftHand_ctrl";
	rename -uid "61790AA2-4ED1-27B7-1D58-76BC38F1124F";
	setAttr ".t" -type "double3" -0.38261370313989573 7.7476760335203743 1.3656744761321411 ;
	setAttr ".r" -type "double3" 5.7263575660183976 -0.15333487503573875 1.7558249270599815 ;
	setAttr ".s" -type "double3" 1.00000004364177 0.99999977941014595 0.9999999981339146 ;
createNode transform -n "LeftHandMiddle1_ctrl" -p "LeftHandMiddle1_ctrl_pos";
	rename -uid "28544FEE-4A6A-EADA-8C84-5A8000FCC880";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 6.616581487151052e-07 2.2740416820710152e-06 1.4809451709396626e-07 ;
	setAttr ".sp" -type "double3" 6.616581487151052e-07 2.2740416820710152e-06 1.4809451709396626e-07 ;
createNode nurbsCurve -n "LeftHandMiddle1_ctrlShape" -p "LeftHandMiddle1_ctrl";
	rename -uid "D3DCF0E4-4F31-51F0-14CB-2684802FDC62";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1.0000002334846534 2.0000000244161256 -0.49999992691378325
		-0.99999977890850433 -1.7833267307310052e-08 -0.49999992691378325
		-0.9999997665153324 -2.4416125565807079e-08 0.50000007500829857
		-1.0000002210914816 2.0000000178332673 0.50000007500829857
		-1.0000002334846534 2.0000000244161256 -0.49999992691378325
		;
createNode transform -n "LeftHandMiddle2_ctrl_pos" -p "LeftHandMiddle1_ctrl";
	rename -uid "97F771C6-4B88-E53E-88BF-4DB48ED4BCEF";
	setAttr ".t" -type "double3" 0.0014078120480576217 3.7411231849281052 0.00027187999738575996 ;
	setAttr ".r" -type "double3" -0.20648382524035547 0.3605428523524889 -2.1847469726918529 ;
createNode transform -n "LeftHandMiddle2_ctrl" -p "LeftHandMiddle2_ctrl_pos";
	rename -uid "92F5B63F-4471-CE57-2278-E99F822F4975";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 6.616581487151052e-07 2.2740416820710152e-06 1.4809451709396626e-07 ;
	setAttr ".sp" -type "double3" 6.616581487151052e-07 2.2740416820710152e-06 1.4809451709396626e-07 ;
createNode nurbsCurve -n "LeftHandMiddle2_ctrlShape" -p "LeftHandMiddle2_ctrl";
	rename -uid "1419A069-4985-88C3-A0E5-51B271E18A25";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1.0000002334846534 2.0000000244161256 -0.49999992691378325
		-0.99999977890850433 -1.7833267307310052e-08 -0.49999992691378325
		-0.9999997665153324 -2.4416125565807079e-08 0.50000007500829857
		-1.0000002210914816 2.0000000178332673 0.50000007500829857
		-1.0000002334846534 2.0000000244161256 -0.49999992691378325
		;
createNode transform -n "LeftHandMiddle3_ctrl_pos" -p "LeftHandMiddle2_ctrl";
	rename -uid "C2AA2CAA-411F-1DB1-83A9-42BAD5F765FE";
	setAttr ".t" -type "double3" -3.0393813972295902e-05 2.4464877134928771 2.2412305521690712e-05 ;
	setAttr ".r" -type "double3" 0.060967952013015733 0.023078016936779019 0.52541333436965931 ;
createNode transform -n "LeftHandMiddle3_ctrl" -p "LeftHandMiddle3_ctrl_pos";
	rename -uid "077CC6D0-4F14-1A2E-E902-159846247B95";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 6.616581487151052e-07 2.2740416820710152e-06 1.4809451709396626e-07 ;
	setAttr ".sp" -type "double3" 6.616581487151052e-07 2.2740416820710152e-06 1.4809451709396626e-07 ;
createNode nurbsCurve -n "LeftHandMiddle3_ctrlShape" -p "LeftHandMiddle3_ctrl";
	rename -uid "513453BC-4B46-0701-D121-8AA1D25CA10C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-1.0000002334846534 2.0000000244161256 -0.49999992691378325
		-0.99999977890850433 -1.7833267307310052e-08 -0.49999992691378325
		-0.9999997665153324 -2.4416125565807079e-08 0.50000007500829857
		-1.0000002210914816 2.0000000178332673 0.50000007500829857
		-1.0000002334846534 2.0000000244161256 -0.49999992691378325
		;
createNode transform -n "LeftHandIndex1_ctrl_pos" -p "LeftHand_ctrl";
	rename -uid "4A0F343E-4632-FD28-0A98-18AEC827103D";
	setAttr ".t" -type "double3" -0.22830920631319884 7.6301604447565445 2.9952744799731388 ;
	setAttr ".r" -type "double3" 3.973125563436446 -0.19400780057151032 1.2219991728819914 ;
	setAttr ".s" -type "double3" 0.99999986482784864 0.99999989861942307 1.0000000577385666 ;
createNode transform -n "LeftHandIndex1_ctrl" -p "LeftHandIndex1_ctrl_pos";
	rename -uid "12D76869-43BA-BB05-F75A-92B0BC141778";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 8.5820089168464619e-07 1.4772314425037791e-06 4.9752894248911161e-08 ;
	setAttr ".sp" -type "double3" 8.5820089168464619e-07 1.4772314425037791e-06 4.9752894248911161e-08 ;
createNode nurbsCurve -n "LeftHandIndex1_ctrlShape" -p "LeftHandIndex1_ctrl";
	rename -uid "ECF4F438-44D4-B259-8037-79BFC3BA8266";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.9999999658562424 2.000000125542138 -0.64111082651980567
		-1.0000000246669036 -1.2768619528369385e-07 -0.64111082651980567
		-1.0000000341437905 -1.2554216499705007e-07 0.64111086223134961
		-0.99999997533312923 2.0000001276861683 0.64111086223134961
		-0.9999999658562424 2.000000125542138 -0.64111082651980567
		;
createNode transform -n "LeftHandIndex2_ctrl_pos" -p "LeftHandIndex1_ctrl";
	rename -uid "38C3E577-4B20-3F0B-6112-E4BCE95A968D";
	setAttr ".t" -type "double3" 2.1299797481333371e-09 -2.4868995751603507e-13 8.6656357503045456e-06 ;
	setAttr ".r" -type "double3" 1.0693060159683225 0.62073135375976562 -3.2555582523345947 ;
	setAttr ".rp" -type "double3" 0.00040452514514299764 3.3388748062817029 3.5015731670196004e-05 ;
	setAttr ".sp" -type "double3" 0.00040452514514299764 3.3388748062817029 3.5015731670196004e-05 ;
createNode transform -n "LeftHandIndex2_ctrl" -p "LeftHandIndex2_ctrl_pos";
	rename -uid "CD3450BE-4684-76AA-D032-94AA793287D6";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0.00040574075839572288 3.3388798786344416 3.5125947753567033e-05 ;
	setAttr ".sp" -type "double3" 0.00040574075839572288 3.3388798786344416 3.5125947753567033e-05 ;
createNode nurbsCurve -n "LeftHandIndex2_ctrlShape" -p "LeftHandIndex2_ctrl";
	rename -uid "5C4AB2A6-4D2C-9AFE-ED37-04891B9FCA75";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.89176362938299825 5.4074604554507495 -0.60233575024970432
		-1.0057267621082628 3.4110586624313819 -0.63224474925057428
		-0.99011968377540827 3.3802637171252257 0.64967863975200946
		-0.87615655105014345 5.3766655101445924 0.67958763875287931
		-0.89176362938299825 5.4074604554507495 -0.60233575024970432
		;
createNode transform -n "LeftHandIndex3_ctrl_pos" -p "LeftHandIndex2_ctrl";
	rename -uid "8E19ED35-4D17-FE18-859C-4EA565208687";
	setAttr ".t" -type "double3" -0.12850133258292828 0.0040588672158250461 -0.033724842832199897 ;
	setAttr ".r" -type "double3" -0.18374890089035034 0.048130381852388389 2.9607186317443848 ;
	setAttr ".rp" -type "double3" 0.12893267496185956 5.5899546036994376 0.033756795017977126 ;
	setAttr ".sp" -type "double3" 0.12893267496185956 5.5899546036994376 0.033756795017977126 ;
createNode transform -n "LeftHandIndex3_ctrl" -p "LeftHandIndex3_ctrl_pos";
	rename -uid "D8C08592-4BA7-CE19-097C-A29471865A72";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0.12893395375597549 5.589954967301404 0.033756813060786151 ;
	setAttr ".sp" -type "double3" 0.12893395375597549 5.589954967301404 0.033756813060786151 ;
createNode nurbsCurve -n "LeftHandIndex3_ctrlShape" -p "LeftHandIndex3_ctrl";
	rename -uid "16956991-451C-5304-B725-0E84FBCCAEBD";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.86887337275153964 7.6076423917257898 -0.5730378515544452
		-0.87948616019041559 5.6079263873147323 -0.59866473894277739
		-0.86250779196477212 5.5822548931713358 0.68332022981685725
		-0.85189500452589617 7.5819708975823925 0.70894711720518944
		-0.86887337275153964 7.6076423917257898 -0.5730378515544452
		;
createNode transform -n "LeftHandThumb1_ctrl_pos" -p "LeftHand_ctrl";
	rename -uid "780FCEA4-41CE-A3B7-52F4-A5BC02ADF0E1";
	setAttr ".t" -type "double3" 0.70841231840496732 1.6015665180176271 2.1032924797125609 ;
	setAttr ".r" -type "double3" 49.555452952350464 -6.2685692780923059 -12.440944529488579 ;
	setAttr ".s" -type "double3" 1.0000000436417695 0.99999983901478462 1.0000001173432187 ;
createNode transform -n "LeftHandThumb1_ctrl" -p "LeftHandThumb1_ctrl_pos";
	rename -uid "E912A9DD-44B0-40AA-EF6C-55BF4D851CF2";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 1.7085569936625689e-07 1.1516973827951915e-06 -1.1240660953149018e-06 ;
	setAttr ".sp" -type "double3" 1.7085569936625689e-07 1.1516973827951915e-06 -1.1240660953149018e-06 ;
createNode nurbsCurve -n "LeftHandThumb1_ctrlShape" -p "LeftHandThumb1_ctrl";
	rename -uid "91173294-4878-BF26-B89E-018030E5CC40";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		1.0000000000000426 4.0925088566547547 1.9999999999999818
		-0.99999999999995781 4.0925088566547547 1.9999999999999813
		-0.99999999999995781 2.0925088566547538 1.9999999999999805
		1.0000000000000431 2.0925088566547538 1.9999999999999818
		1.0000000000000426 4.0925088566547547 1.9999999999999818
		;
createNode transform -n "LeftHandThumb2_ctrl_pos" -p "LeftHandThumb1_ctrl";
	rename -uid "B36C7253-4908-9911-F6D7-54890DA8FB67";
	setAttr ".t" -type "double3" 0.31533786881114167 -0.011536461680904608 -0.11450976751234521 ;
	setAttr ".rp" -type "double3" 2.701427816020896e-05 4.8854184514954975 -4.5176922455425483e-05 ;
	setAttr ".sp" -type "double3" 2.701427816020896e-05 4.8854184514954975 -4.5176922455425483e-05 ;
createNode transform -n "LeftHandThumb2_ctrl" -p "LeftHandThumb2_ctrl_pos";
	rename -uid "BEF6C191-4074-0FA8-7D22-DA9AFFBDDCDB";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 3.2994303467148711e-07 -1.4926306146634261e-07 9.7733050097303931e-08 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 2.6684335125537473e-05 4.8854186007585492 -4.527465549841736e-05 ;
	setAttr ".sp" -type "double3" 2.6684335125537473e-05 4.8854186007585492 -4.527465549841736e-05 ;
createNode nurbsCurve -n "LeftHandThumb2_ctrlShape" -p "LeftHandThumb2_ctrl";
	rename -uid "B1D135C1-4508-BBF0-8B8E-CB981C68DCC0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0.60114542659951875 7.2514612374282832 0.20120531654646451
		-1.3680537684106793 6.9035243017553487 0.23576554017229884
		-1.0309101299018502 5.0664493757623701 0.95095243874761826
		0.93828906510836041 5.4143863114353135 0.91639221512178115
		0.60114542659951875 7.2514612374282832 0.20120531654646451
		;
createNode transform -n "LeftHandThumb3_ctrl_pos" -p "LeftHandThumb2_ctrl";
	rename -uid "4E6DC07E-4A16-6AD5-16EB-D28D6F4D4CC3";
	setAttr ".t" -type "double3" 0.080766392677432464 0.0054422772469377989 -0.020010510329306896 ;
	setAttr ".rp" -type "double3" -0.40125514968833897 7.0719386283804262 -0.85126786912800867 ;
	setAttr ".sp" -type "double3" -0.40125514968833897 7.0719386283804262 -0.85126786912800867 ;
createNode transform -n "LeftHandThumb3_ctrl" -p "LeftHandThumb3_ctrl_pos";
	rename -uid "B070212D-4633-7DC3-F9A3-2D802AFB490F";
	setAttr ".t" -type "double3" -2.5007564090628875e-06 -7.6447486563324674e-08 5.0372690196809344e-07 ;
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".rp" -type "double3" -0.40125264893192991 7.071938704827911 -0.85126837285491064 ;
	setAttr ".sp" -type "double3" -0.40125264893192991 7.071938704827911 -0.85126837285491064 ;
createNode nurbsCurve -n "LeftHandThumb3_ctrlShape" -p "LeftHandThumb3_ctrl";
	rename -uid "E80C50ED-4CC9-89F5-05D7-7B9CEA2CA955";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-0.074548469085294 9.4971753529711016 -0.74406520098192974
		-1.9876715020493345 8.9252247854057352 -0.63078266647160486
		-1.4165777213219093 7.1653953685922849 0.12872529046544479
		0.49654531164213123 7.7373459361576531 0.015442755955119902
		-0.074548469085294 9.4971753529711016 -0.74406520098192974
		;
createNode transform -n "L_Clavicle_ctrl_pos" -p "body_ctrl";
	rename -uid "21E3DC3C-4CC3-8BE3-E6C4-66915038825A";
	setAttr ".t" -type "double3" 4.78549163385531 43.845032191920041 -3.0843367413953064 ;
	setAttr ".r" -type "double3" -14.090292871306183 0.38623569478634256 -89.754548778503491 ;
	setAttr ".s" -type "double3" 1.0000000596035548 1.000000003534504 1.0000000560712372 ;
	setAttr ".sh" -type "double3" -4.9529878721134867e-10 -1.2433648898851924e-10 -2.8150936557671058e-08 ;
createNode transform -n "L_Clavicle_ctrl" -p "L_Clavicle_ctrl_pos";
	rename -uid "75057CD2-485C-B04F-1F36-2AB11F0E0983";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 5.6843418860808015e-14 0 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 5.6843418860808015e-14 0 8.8817841970012523e-16 ;
createNode nurbsCurve -n "L_Clavicle_ctrlShape" -p "L_Clavicle_ctrl";
	rename -uid "2A78B5C4-4E76-7580-5DEF-D3A7602DEC51";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 18 2 no 3
		19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		19
		-2.5177189101153105e-05 10.634012497056133 -7.4834478926398909
		-2.8638131936260658 10.634012497056133 -6.9138071364784359
		-5.2916161773339407 10.634012497056133 -5.2916027747648613
		-6.913822769285737 10.634012497056133 -2.8638013522237413
		-7.4834666477807037 10.634012497056133 -1.3781834419281994e-05
		-6.9138245534763154 10.634012497056133 2.863774234602547
		-5.2916197457150975 10.634012497056133 5.2915769952866007
		-2.8638178771263338 10.634012497056133 6.9137831411907547
		-3.0083713191386719e-05 10.634012497056133 7.4834265736380763
		-3.0083713191386719e-05 9.3992454539489199 7.4834265736380763
		-2.8638178771263338 9.3992454539489199 6.9137835872383988
		-5.2916197457150975 9.3992454539489199 5.2915769952866007
		-6.9138245534763154 9.3992454539489199 2.863774234602547
		-7.4834666477807037 9.3992454539489199 -1.3781834419281994e-05
		-6.913822769285737 9.3992454539489199 -2.8638013522237413
		-5.2916161773339407 9.3992454539489199 -5.2916027747648613
		-2.8638131936260658 9.3992454539489199 -6.9138071364784359
		-2.5177189101153105e-05 9.3992454539489199 -7.4834478926398909
		-2.5177189101153105e-05 10.634012497056133 -7.4834478926398909
		;
createNode transform -n "L_Upperarm_fk_ctrl_pos" -p "L_Clavicle_ctrl";
	rename -uid "83041DEB-4933-26B4-7F95-7F94B9698D92";
	setAttr ".t" -type "double3" -3.0810496582489577e-05 9.8856684600171256 -1.1007128649875852e-05 ;
	setAttr ".r" -type "double3" 12.083169482794064 6.9942876392647948 -29.950361423285479 ;
	setAttr ".s" -type "double3" 0.99999999999999956 0.99999999999999967 0.99999999999999989 ;
createNode transform -n "L_Upperarm_fk_ctrl" -p "L_Upperarm_fk_ctrl_pos";
	rename -uid "070089B9-4CD8-DB11-96B7-FA89FDA79D95";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -8.5830688050236842e-06 -7.1054273576009995e-15 -1.430511474609375e-06 ;
	setAttr ".sp" -type "double3" -8.5830688050236859e-06 -7.1054273576010019e-15 -1.430511474609375e-06 ;
	setAttr ".spt" -type "double3" 1.6940658945086003e-21 2.3665827156630351e-30 0 ;
createNode nurbsCurve -n "L_Upperarm_fk_ctrlShape" -p "L_Upperarm_fk_ctrl";
	rename -uid "B76A3DA9-4235-9FC4-A36E-BE8736072403";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.6399214752909899 12.566703018540023 -5.6399314888713059
		-8.5830688408612484e-06 12.566703018540023 -7.9760670098796265
		-5.6399386414286719 12.566703018540023 -5.639931488871305
		-7.976074162436996 12.566703018540023 -1.4305114753142892e-06
		-5.6399386414286719 12.566703018540023 5.6399286278483567
		-8.5830688421486097e-06 12.566703018540023 7.9760641488566817
		5.6399214752909899 12.566703018540023 5.6399286278483558
		7.976056996299314 12.566703018540023 -1.4305114738131153e-06
		5.6399214752909899 12.566703018540023 -5.6399314888713059
		-8.5830688408612484e-06 12.566703018540023 -7.9760670098796265
		-5.6399386414286719 12.566703018540023 -5.639931488871305
		;
createNode transform -n "L_Forearm_fk_ctrl_pos" -p "L_Upperarm_fk_ctrl";
	rename -uid "604E39FE-4AB3-FC30-7A13-59804270B00F";
	setAttr ".t" -type "double3" 0.0045363134553610962 25.133954701260503 -0.0028499300989279774 ;
	setAttr ".r" -type "double3" 0.15095488982190322 -1.3892481363967488e-05 0.14083015089432302 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
createNode transform -n "L_Forearm_fk_ctrl" -p "L_Forearm_fk_ctrl_pos";
	rename -uid "D24A234D-48F8-B2BE-DF50-B196C81331AA";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -0.055923716748566221 -3.5527136788005009e-15 0.015767279888343921 ;
	setAttr ".sp" -type "double3" -0.055923716748566221 -3.5527136788005009e-15 0.015767279888343921 ;
createNode nurbsCurve -n "L_Forearm_fk_ctrlShape" -p "L_Forearm_fk_ctrl";
	rename -uid "8E211B8C-4937-A734-41CD-82BE293EE497";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.5840063416112713 10.928474283884858 -5.6241627784714892
		-0.055923716748559428 10.928474283884858 -7.9602982994798097
		-5.6958537751083904 10.928474283884858 -5.6241627784714883
		-8.0319892961167145 10.928474283884858 0.015767279888341441
		-5.6958537751083904 10.928474283884858 5.6556973382481734
		-0.055923716748560712 10.928474283884858 7.9918328592564984
		5.5840063416112713 10.928474283884858 5.6556973382481726
		7.9201418626195954 10.928474283884858 0.015767279888342943
		5.5840063416112713 10.928474283884858 -5.6241627784714892
		-0.055923716748559428 10.928474283884858 -7.9602982994798097
		-5.6958537751083904 10.928474283884858 -5.6241627784714883
		;
createNode transform -n "L_Hand_fk_ctrl_pos" -p "L_Forearm_fk_ctrl";
	rename -uid "962E0141-4B63-FE41-8270-8490BE6750DF";
	setAttr ".t" -type "double3" 0.049200062713296688 0.00020909005830560545 -0.054743674831701838 ;
	setAttr ".r" -type "double3" -4.6622939109802255 -0.31058177351951605 -1.148286938667298 ;
	setAttr ".rp" -type "double3" -0.091231166407368391 21.859655122293468 0.03908911798604997 ;
	setAttr ".sp" -type "double3" -0.091231166407368391 21.859655122293468 0.03908911798604997 ;
createNode transform -n "L_Hand_fk_ctrl" -p "L_Hand_fk_ctrl_pos";
	rename -uid "0EC2F804-4FB1-BD8F-AD75-889C57712DAA";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -0.09123116640733997 21.859655122293468 0.039089117986048194 ;
	setAttr ".sp" -type "double3" -0.09123116640733997 21.859655122293468 0.039089117986048194 ;
createNode nurbsCurve -n "L_Hand_fk_ctrlShape" -p "L_Hand_fk_ctrl";
	rename -uid "A125E105-48C2-6FBA-5EA3-589ECDBE9B45";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.5701151414999588 21.316330506579831 -5.5530105297567625
		-0.059594142478814692 21.231628804532697 -7.9121500413713353
		-5.7078359660018094 21.514816401902582 -5.6135614911064033
		-8.0659468724121961 22.000005844846058 -0.0037268773916500839
		-5.7525774743146822 22.402979738007083 5.6311887657288562
		-0.12286819033590965 22.487681440054217 7.9903282773434325
		5.525373633187086 22.204493842684332 5.6917397270784971
		7.8834845395974735 21.719304399740857 0.081905113363744314
		5.5701151414999588 21.316330506579831 -5.5530105297567625
		-0.059594142478814692 21.231628804532697 -7.9121500413713353
		-5.7078359660018094 21.514816401902582 -5.6135614911064033
		;
createNode transform -n "R_Clavicle_ctrl_pos" -p "body_ctrl";
	rename -uid "A6426325-4F9E-48E8-D690-7EB8774D5E45";
	setAttr ".t" -type "double3" -4.7854489543172978 43.845031989396915 -3.0843376733177976 ;
	setAttr ".r" -type "double3" -14.090024355362019 -0.38632858321375269 89.754139419829059 ;
	setAttr ".s" -type "double3" 1.0000000596035397 1.0000001823482843 1.0000001752806258 ;
	setAttr ".sh" -type "double3" 4.9612552126258452e-10 1.2454148201617857e-10 -2.8150448228727987e-08 ;
createNode transform -n "R_Clavicle_ctrl" -p "R_Clavicle_ctrl_pos";
	rename -uid "B134E0E9-4835-8ACD-EF64-4EAAE9132FDA";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 5.6843418860808015e-14 -1.7763568394002505e-15 1.3322676295501878e-15 ;
	setAttr ".sp" -type "double3" 5.6843418860808015e-14 -1.7763568394002505e-15 1.3322676295501878e-15 ;
createNode nurbsCurve -n "R_Clavicle_ctrlShape" -p "R_Clavicle_ctrl";
	rename -uid "EB1E3590-4261-4C9C-8791-C89F36B81E6A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 18 2 no 3
		19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		19
		2.5177189213923483e-05 10.634012497056133 7.4834478926398926
		2.8638131936261786 10.634012497056133 6.9138071364784377
		5.2916161773340535 10.634012497056133 5.291602774764864
		6.9138227692858507 10.634012497056133 2.863801352223744
		7.4834666477808174 10.634012497056133 1.3781834421974811e-05
		6.9138245534764291 10.634012497056133 -2.8637742346025443
		5.2916197457152121 10.634012497056133 -5.2915769952865981
		2.8638178771264484 10.634012497056133 -6.9137831411907529
		3.0083713305990012e-05 10.634012497056133 -7.4834265736380745
		3.0083713305990012e-05 9.3992454539489199 -7.4834265736380745
		2.8638178771264484 9.3992454539489199 -6.913783587238397
		5.2916197457152121 9.3992454539489199 -5.2915769952865981
		6.9138245534764291 9.3992454539489199 -2.8637742346025443
		7.4834666477808174 9.3992454539489199 1.3781834421974811e-05
		6.9138227692858507 9.3992454539489199 2.863801352223744
		5.2916161773340535 9.3992454539489199 5.291602774764864
		2.8638131936261786 9.3992454539489199 6.9138071364784377
		2.5177189213923483e-05 9.3992454539489199 7.4834478926398926
		2.5177189213923483e-05 10.634012497056133 7.4834478926398926
		;
createNode transform -n "R_Upperarm_fk_ctrl_pos" -p "R_Clavicle_ctrl";
	rename -uid "52DB61D5-4A88-80F8-BCE9-36929D77AFD2";
	setAttr ".t" -type "double3" 2.6973463434387668e-05 9.8856685996683691 -1.1841586940786186e-05 ;
	setAttr ".r" -type "double3" 12.083200954071899 -6.9943253094122149 29.950443439274519 ;
	setAttr ".s" -type "double3" 0.99999988432509035 1.0000000070591311 0.9999998105925596 ;
createNode transform -n "R_Upperarm_fk_ctrl" -p "R_Upperarm_fk_ctrl_pos";
	rename -uid "1001B666-41C4-765E-BD8B-E1A017916AED";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -8.5830688050236842e-06 -7.1054273576009995e-15 -1.430511474609375e-06 ;
	setAttr ".sp" -type "double3" -8.5830688050236859e-06 -7.1054273576010019e-15 -1.430511474609375e-06 ;
	setAttr ".spt" -type "double3" 1.6940658945086003e-21 2.3665827156630351e-30 0 ;
createNode nurbsCurve -n "R_Upperarm_fk_ctrlShape" -p "R_Upperarm_fk_ctrl";
	rename -uid "3C616878-4D20-AFFD-7E86-3CA6B428BB65";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.6399214752909899 12.566703018540025 -5.6399314888713059
		-8.5830688407292688e-06 12.566703018540025 -7.9760670098796274
		-5.6399386414286736 12.566703018540023 -5.6399314888713059
		-7.9760741624369969 12.566703018540023 -1.4305114752955598e-06
		-5.6399386414286772 12.566703018540023 5.6399286278483585
		-8.5830688423946033e-06 12.566703018540023 7.9760641488566835
		5.6399214752909907 12.566703018540025 5.6399286278483567
		7.9760569962993157 12.566703018540025 -1.4305114728530691e-06
		5.6399214752909899 12.566703018540025 -5.6399314888713059
		-8.5830688407292688e-06 12.566703018540025 -7.9760670098796274
		-5.6399386414286736 12.566703018540023 -5.6399314888713059
		;
createNode transform -n "R_Forearm_fk_ctrl_pos" -p "R_Upperarm_fk_ctrl";
	rename -uid "0FDAFF3A-4807-6DB6-6E87-2D8AD5147C2E";
	setAttr ".t" -type "double3" -0.004475344598091624 25.133957601754432 -0.0028766360739220787 ;
	setAttr ".r" -type "double3" 0.15297458622620985 3.5698808329292989e-05 -0.14106084661131016 ;
	setAttr ".s" -type "double3" 1.0000000120196664 1.0000003350915536 1.0000001297259602 ;
createNode transform -n "R_Forearm_fk_ctrl" -p "R_Forearm_fk_ctrl_pos";
	rename -uid "80975F65-4D27-5A1A-F0AE-3C91841AEC13";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -0.055923716748566221 -3.5527136788005009e-15 0.015767279888343921 ;
	setAttr ".sp" -type "double3" -0.055923716748566221 -3.5527136788005009e-15 0.015767279888343921 ;
createNode nurbsCurve -n "R_Forearm_fk_ctrlShape" -p "R_Forearm_fk_ctrl";
	rename -uid "8C09D6A3-4E78-F93B-FADE-08A96C55D73F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.5840063416112686 10.928474283884862 -5.6241627784714883
		-0.055923716748562668 10.92847428388486 -7.9602982994798088
		-5.6958537751083984 10.928474283884864 -5.6241627784714874
		-8.0319892961167216 10.928474283884864 0.015767279888343033
		-5.6958537751083949 10.928474283884864 5.6556973382481761
		-0.055923716748562668 10.928474283884864 7.9918328592565011
		5.5840063416112713 10.928474283884862 5.6556973382481743
		7.9201418626195936 10.928474283884862 0.015767279888343921
		5.5840063416112686 10.928474283884862 -5.6241627784714883
		-0.055923716748562668 10.92847428388486 -7.9602982994798088
		-5.6958537751083984 10.928474283884864 -5.6241627784714874
		;
createNode transform -n "R_Hand_fk_ctrl_pos" -p "R_Forearm_fk_ctrl";
	rename -uid "5AD88367-4D9E-0200-EC7F-0CBDF0DE6074";
	setAttr ".t" -type "double3" 0.13360791114945414 0.00017280105042516425 -0.054853821999168773 ;
	setAttr ".r" -type "double3" -4.6623148918151864 0.31058338284492498 1.1482844352722168 ;
	setAttr ".s" -type "double3" 0.99999952085736976 1.0000001214487313 0.99999982125218334 ;
	setAttr ".rp" -type "double3" -0.091231166407368391 21.859655122293468 0.03908911798604997 ;
	setAttr ".sp" -type "double3" -0.091231166407368391 21.859655122293468 0.03908911798604997 ;
createNode transform -n "R_Hand_fk_ctrl" -p "R_Hand_fk_ctrl_pos";
	rename -uid "1CC4754B-4D07-44A0-0301-33A75D9590EB";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -0.09123116640733997 21.859655122293468 0.039089117986048194 ;
	setAttr ".sp" -type "double3" -0.09123116640733997 21.859655122293468 0.039089117986048194 ;
createNode nurbsCurve -n "R_Hand_fk_ctrlShape" -p "R_Hand_fk_ctrl";
	rename -uid "648DFDB1-4EF0-5AC2-3D49-DFACADFD958B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.5701151414999561 21.316330506579824 -5.5530105297567616
		-0.059594142478816878 21.231628804532697 -7.9121500413713344
		-5.7078359660018121 21.514816401902582 -5.6135614911064033
		-8.065946872412205 22.000005844846058 -0.0037268773916485642
		-5.7525774743146876 22.402979738007083 5.6311887657288606
		-0.12286819033591453 22.48768144005421 7.9903282773434308
		5.5253736331870824 22.204493842684325 5.6917397270784971
		7.88348453959747 21.719304399740853 0.08190511336374405
		5.5701151414999561 21.316330506579824 -5.5530105297567616
		-0.059594142478816878 21.231628804532697 -7.9121500413713344
		-5.7078359660018121 21.514816401902582 -5.6135614911064033
		;
createNode transform -n "Head_ctrl_pos" -p "body_ctrl";
	rename -uid "98CFE350-4727-C57A-7406-83B3173454EE";
	setAttr ".t" -type "double3" 1.7752252298528686e-05 55.979249404917937 -2.5447827499992788 ;
	setAttr ".r" -type "double3" 0.011173605921512004 1.0265820693555218e-05 -4.1773278247409537e-05 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1.0000000596046481 1.0000000596046479 ;
createNode transform -n "Head_CTrl_ik_const" -p "Head_ctrl_pos";
	rename -uid "65AEDFFA-4F39-2942-D3EC-7CAA79B814A1";
	setAttr ".t" -type "double3" 2.7105054312137611e-20 -2.8421709430404007e-14 0 ;
	setAttr ".r" -type "double3" -0.011165976534488285 -1.0257673420473926e-05 4.1775276964521724e-05 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 0.99999999999999989 ;
createNode transform -n "Head_ctrl" -p "Head_CTrl_ik_const";
	rename -uid "57935AE0-4B79-A095-5DD6-F1B56D547CFA";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -6.7762635780344027e-21 2.8421709430404007e-14 4.4408920985006262e-16 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 0 1.0265814519216429e-05 -4.177327712450441e-05 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode nurbsCurve -n "Head_ctrlShape" -p "Head_ctrl";
	rename -uid "7FDDC7A1-4F67-2EAC-111C-F5B9105AFABA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 32 0 no 3
		33 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32
		33
		1.1102230246251565e-16 8.6060954852224256 13.800432772950753
		1.1102230246251565e-16 15.50631187169779 11.951519792194675
		1.1102230246251565e-16 20.557615277417113 6.9002163864753765
		1.1102230246251565e-16 22.406528258173211 4.4408920985006262e-16
		1.1102230246251565e-16 20.557615277417113 -6.9002163864753765
		1.1102230246251565e-16 15.50631187169779 -11.951519792194675
		1.1102230246251565e-16 8.6060954852224256 -13.800432772950753
		1.1102230246251565e-16 1.7058790987470616 -11.951519792194675
		1.1102230246251565e-16 -3.3454243069722622 -6.9002163864753765
		1.1102230246251565e-16 -5.1943372877283309 4.4408920985006262e-16
		1.1102230246251565e-16 -3.3454243069722622 6.9002163864753765
		1.1102230246251565e-16 1.7058790987470616 11.951519792194675
		1.1102230246251565e-16 8.6060954852224256 13.800432772950753
		9.7583826167828889 8.6060954852224256 9.7583826167828889
		13.800432772950753 8.6060954852224256 4.4408920985006262e-16
		9.7583826167828889 8.6060954852224256 -9.7583826167828889
		1.1102230246251565e-16 8.6060954852224256 -13.800432772950753
		-9.7583826167828889 8.6060954852224256 -9.7583826167828889
		-13.800432772950753 8.6060954852224256 4.4408920985006262e-16
		-11.951519792194675 15.50631187169779 4.4408920985006262e-16
		-6.9002163864753765 20.557615277417113 4.4408920985006262e-16
		1.1102230246251565e-16 22.406528258173211 4.4408920985006262e-16
		6.9002163864753765 20.557615277417113 4.4408920985006262e-16
		11.951519792194675 15.50631187169779 4.4408920985006262e-16
		13.800432772950753 8.6060954852224256 4.4408920985006262e-16
		11.951519792194675 1.7058790987470616 4.4408920985006262e-16
		6.9002163864753765 -3.3454243069722622 4.4408920985006262e-16
		1.1102230246251565e-16 -5.1943372877283309 4.4408920985006262e-16
		-6.9002163864753765 -3.3454243069722622 4.4408920985006262e-16
		-11.951519792194675 1.7058790987470616 4.4408920985006262e-16
		-13.800432772950753 8.6060954852224256 4.4408920985006262e-16
		-9.7583826167828889 8.6060954852224256 9.7583826167828889
		1.1102230246251565e-16 8.6060954852224256 13.800432772950753
		;
createNode transform -n "aim_ik_ctrl_pos" -p "Head_ctrl";
	rename -uid "008D69C2-407C-77A1-8076-078FBAC4CFE8";
	setAttr ".t" -type "double3" 0.34822928904312928 7.7365992660209599 29.266086122305133 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000004 ;
	setAttr ".rp" -type "double3" 0 0 -22.164240434567727 ;
	setAttr ".sp" -type "double3" 0 0 -22.164240434567716 ;
	setAttr ".spt" -type "double3" 0 0 -1.0658141036401512e-14 ;
createNode transform -n "aim_ik_ctrl" -p "aim_ik_ctrl_pos";
	rename -uid "CD40F759-4B24-0A88-4CBD-F88F7BC583B6";
	setAttr -k off ".v";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 3.5519899199698557e-07 ;
	setAttr ".sp" -type "double3" 0 0 3.5519899199698557e-07 ;
createNode nurbsCurve -n "aim_ik_ctrlShape" -p "aim_ik_ctrl";
	rename -uid "454CA791-4E5C-FA22-28C1-D3B2549B0DE3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		8.1253313309246167 -3.760099612739026 3.5519899199698557e-07
		-8.1253313309246167 -3.760099612739026 3.5519899199698557e-07
		-8.1253313309246167 3.760099612739026 3.5519899199698557e-07
		8.1253313309246167 3.760099612739026 3.5519899199698557e-07
		8.1253313309246167 -3.760099612739026 3.5519899199698557e-07
		;
createNode transform -n "aim_l_ik_ctrl_pos" -p "aim_ik_ctrl";
	rename -uid "23541E8B-4D09-94B1-D534-D9A471194F04";
	setAttr ".rp" -type "double3" 4.1970685422420502 0 0 ;
	setAttr ".sp" -type "double3" 4.1970685422420502 0 0 ;
createNode transform -n "aim_l_ik_ctrl" -p "aim_l_ik_ctrl_pos";
	rename -uid "4391DD4F-4667-01C3-7923-ACB2640BA3DC";
	setAttr -l on ".r";
	setAttr ".rp" -type "double3" 4.1970686299246136 0 3.5519899199698557e-07 ;
	setAttr ".sp" -type "double3" 4.1970686299246136 0 3.5519899199698557e-07 ;
createNode nurbsCurve -n "aim_l_ik_ctrlShape" -p "aim_l_ik_ctrl";
	rename -uid "03F6C634-4737-EB01-DA01-2685521B9927";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		6.2595464259083045 -2.062477795983682 3.5519899199698557e-07
		4.1970686299246136 -2.9167840711735096 3.5519899199698557e-07
		2.1345908339409223 -2.062477795983682 3.5519899199698557e-07
		1.2802845587511078 0 3.5519899199698557e-07
		2.1345908339409223 2.062477795983682 3.5519899199698557e-07
		4.1970686299246136 2.9167840711735096 3.5519899199698557e-07
		6.2595464259083045 2.062477795983682 3.5519899199698557e-07
		7.1138527010981187 0 3.5519899199698557e-07
		6.2595464259083045 -2.062477795983682 3.5519899199698557e-07
		4.1970686299246136 -2.9167840711735096 3.5519899199698557e-07
		2.1345908339409223 -2.062477795983682 3.5519899199698557e-07
		;
createNode transform -n "aim_r_ik_ctrl_pos" -p "aim_ik_ctrl";
	rename -uid "2B63C85E-43E6-1CD2-E24A-10B7520BD7AC";
	setAttr ".rp" -type "double3" -4.1970686018466949 0 0 ;
	setAttr ".sp" -type "double3" -4.1970686018466949 0 0 ;
createNode transform -n "aim_r_ik_ctrl" -p "aim_r_ik_ctrl_pos";
	rename -uid "34B27679-4EB5-F21D-DC44-F483D653FC80";
	setAttr -l on ".r";
	setAttr ".rp" -type "double3" -4.1970686299246136 0 3.5519899199698557e-07 ;
	setAttr ".sp" -type "double3" -4.1970686299246136 0 3.5519899199698557e-07 ;
createNode nurbsCurve -n "aim_r_ik_ctrlShape" -p "aim_r_ik_ctrl";
	rename -uid "8E55E82E-43DF-5014-1289-1693421563AB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-6.2595464259083045 -2.062477795983682 3.5519899199698557e-07
		-4.1970686299246136 -2.9167840711735096 3.5519899199698557e-07
		-2.1345908339409223 -2.062477795983682 3.5519899199698557e-07
		-1.2802845587511078 0 3.5519899199698557e-07
		-2.1345908339409223 2.062477795983682 3.5519899199698557e-07
		-4.1970686299246136 2.9167840711735096 3.5519899199698557e-07
		-6.2595464259083045 2.062477795983682 3.5519899199698557e-07
		-7.1138527010981187 0 3.5519899199698557e-07
		-6.2595464259083045 -2.062477795983682 3.5519899199698557e-07
		-4.1970686299246136 -2.9167840711735096 3.5519899199698557e-07
		-2.1345908339409223 -2.062477795983682 3.5519899199698557e-07
		;
createNode transform -n "Waist_fk_ctrl_pos" -p "body_ctrl";
	rename -uid "DC94A4E4-4201-8677-DA72-B8BC804524C2";
	setAttr ".t" -type "double3" 1.8955592167912982e-05 7.2574920654296875 1.5390927791595426 ;
	setAttr ".r" -type "double3" 15.566789627075195 0 0 ;
	setAttr ".s" -type "double3" 1 1.0000001192092896 1.0000001192092896 ;
createNode transform -n "Waist_fk_ctrl" -p "Waist_fk_ctrl_pos";
	rename -uid "4E449C81-401C-3C3A-EF23-D0BDCBA218C2";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 0 3.5527136788005009e-15 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode nurbsCurve -n "Waist_fk_ctrlShape" -p "Waist_fk_ctrl";
	rename -uid "98EF40F8-4FAB-DFA8-2D69-009CCF180D03";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.072721840088402 -3.2500158208167367 -11.627037876974022
		1.045445987169967e-15 -4.5962164517261526 -16.443114655842329
		-12.072721840088402 -3.2500158208167358 -11.62703787697402
		-17.073406961010889 -3.4523310917100537e-15 -3.9744113475019769e-15
		-12.072721840088402 3.25001582081673 11.627037876974013
		-1.7102537808664541e-15 4.5962164517261481 16.443114655842333
		12.072721840088402 3.25001582081673 11.627037876974013
		17.073406961010889 -2.5096850157287924e-15 -6.0206418543162781e-16
		12.072721840088402 -3.2500158208167367 -11.627037876974022
		1.045445987169967e-15 -4.5962164517261526 -16.443114655842329
		-12.072721840088402 -3.2500158208167358 -11.62703787697402
		;
createNode transform -n "Spine01_fk_ctrl_pos" -p "Waist_fk_ctrl";
	rename -uid "853B5500-461C-240B-10A0-F6A8D4D7A932";
	setAttr ".t" -type "double3" -5.4569682106375694e-12 4.0851035118103027 6.67572021484375e-06 ;
	setAttr ".r" -type "double3" -22.023334503173835 0 0 ;
	setAttr ".s" -type "double3" 0.99999994039535522 0.99999988079071067 0.99999988079071067 ;
createNode transform -n "Spine01_fk_ctrl" -p "Spine01_fk_ctrl_pos";
	rename -uid "B6197C95-470E-11B0-C0D9-D4BD41003A16";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 1.4210854715202004e-14 0 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode nurbsCurve -n "Spine01_fk_ctrlShape" -p "Spine01_fk_ctrl";
	rename -uid "386289F9-472F-C67E-374C-11829D07E042";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.072721840088402 0 -12.072721840088404
		1.045445987169967e-15 0 -17.073406961010882
		-12.072721840088402 0 -12.072721840088402
		-17.073406961010889 0 -1.1672049713399767e-15
		-12.072721840088402 0 12.072721840088402
		-1.7102537808664541e-15 0 17.073406961010893
		12.072721840088402 0 12.072721840088402
		17.073406961010889 0 2.3344099426799534e-15
		12.072721840088402 0 -12.072721840088404
		1.045445987169967e-15 0 -17.073406961010882
		-12.072721840088402 0 -12.072721840088402
		;
createNode transform -n "Spine02_fk_ctrl_pos" -p "Spine01_fk_ctrl";
	rename -uid "91E8FFC3-4CD7-DA5D-E63D-17A2735FCF79";
	setAttr ".t" -type "double3" -3.637978807091713e-12 12.839757919311523 -3.5762786954052217e-06 ;
	setAttr ".r" -type "double3" -5.8041939735412633 0 0 ;
	setAttr ".s" -type "double3" 1.0000001192092896 1.0000002384185789 1.0000002384185789 ;
createNode transform -n "Spine02_fk_ctrl" -p "Spine02_fk_ctrl_pos";
	rename -uid "FD39D0AE-4889-F583-842A-D5B27E5C608B";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 0 -1.4210854715202004e-14 3.5527136788005009e-15 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode nurbsCurve -n "Spine02_fk_ctrlShape" -p "Spine02_fk_ctrl";
	rename -uid "01A4AD1D-4A79-BCC5-B591-69BCF4D8DADB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		12.072721840088402 0 -12.072721840088404
		1.045445987169967e-15 0 -17.073406961010882
		-12.072721840088402 0 -12.072721840088402
		-17.073406961010889 0 -1.1672049713399767e-15
		-12.072721840088402 0 12.072721840088402
		-1.7102537808664541e-15 0 17.073406961010893
		12.072721840088402 0 12.072721840088402
		17.073406961010889 0 2.3344099426799534e-15
		12.072721840088402 0 -12.072721840088404
		1.045445987169967e-15 0 -17.073406961010882
		-12.072721840088402 0 -12.072721840088402
		;
createNode transform -n "Waist_ik_ctrl_pos" -p "body_ctrl";
	rename -uid "E8EDABA2-4F00-53F0-3B8E-B0B30EDDD465";
	setAttr ".t" -type "double3" 1.8955592167912982e-05 7.2574920654296875 1.5390927791595426 ;
	setAttr ".s" -type "double3" 1 1.0000001192092896 1.0000001192092896 ;
	setAttr ".rp" -type "double3" 0 -1.4210856409267898e-14 0 ;
	setAttr ".sp" -type "double3" 0 -1.4210854715202004e-14 0 ;
	setAttr ".spt" -type "double3" 0 -1.6940658945085766e-21 0 ;
createNode transform -n "Waist_ik_ctrl" -p "Waist_ik_ctrl_pos";
	rename -uid "7E44F3A6-4CBC-3931-A556-83888EBDFC46";
	setAttr -k off ".v";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0 0.00011438800504492974 -1.4753033683589933e-08 ;
	setAttr ".sp" -type "double3" 0 0.00011438800504492974 -1.4753033683589933e-08 ;
createNode nurbsCurve -n "Waist_ik_ctrlShape" -p "Waist_ik_ctrl";
	rename -uid "9D2957AF-425E-014A-FCAC-F2824990AAE3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		18.530859835656454 0.033629564341651985 -18.53082954237264
		-18.530859835656454 0.033629564341651985 -18.53082954237264
		-18.530859835656454 -0.033400788331675813 18.530829512866688
		18.530859835656454 -0.033400788331675813 18.530829512866688
		18.530859835656454 0.033629564341651985 -18.53082954237264
		;
createNode transform -n "Spine_ik_ctrl_pos" -p "Waist_ik_ctrl";
	rename -uid "080F46F2-40D2-7B2F-E800-CCB7964DF977";
	setAttr ".rp" -type "double3" -9.0949467941125843e-12 16.693686150431404 -0.34753837568272239 ;
	setAttr ".sp" -type "double3" -9.0949467941125843e-12 16.693686150431404 -0.34753837568272239 ;
createNode transform -n "Spine_ik_ctrl" -p "Spine_ik_ctrl_pos";
	rename -uid "4BF7FAA5-425A-4B04-106C-76A1919B2F84";
	setAttr -k off ".v";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -9.0949470143411506e-12 16.693686437315293 -0.34753838814357207 ;
	setAttr ".sp" -type "double3" -9.0949470143411506e-12 16.693686437315293 -0.34753838814357207 ;
createNode nurbsCurve -n "Spine_ik_ctrlShape" -p "Spine_ik_ctrl";
	rename -uid "5FDC086D-4A20-8246-1048-9EB304EDD2DC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		15.873602027413307 16.693688551013068 -16.22113946942552
		-15.873602027431497 16.693688551013068 -16.22113946942552
		-15.873602027431497 16.69368432361739 15.526062693138527
		15.873602027413307 16.69368432361739 15.526062693138527
		15.873602027413307 16.693688551013068 -16.22113946942552
		;
createNode transform -n "Neck_ik_ctrl_pos" -p "Spine_ik_ctrl";
	rename -uid "C0853022-4BAA-5E1B-8111-A2AB8041B7F2";
	setAttr ".rp" -type "double3" 6.3846531870774906e-08 41.920623949749029 -5.8298289886454295 ;
	setAttr ".sp" -type "double3" 6.3846531870774906e-08 41.920623949749029 -5.8298289886454295 ;
createNode transform -n "Neck_ik_ctrl" -p "Neck_ik_ctrl_pos";
	rename -uid "0965D9AD-4C6D-D6B5-8EA8-67BD53B2AD15";
	setAttr -k off ".v";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 6.384652806446295e-08 41.920622004016366 -5.8298291424732849 ;
	setAttr ".sp" -type "double3" 6.384652806446295e-08 41.920622004016366 -5.8298291424732849 ;
createNode nurbsCurve -n "Neck_ik_ctrlShape" -p "Neck_ik_ctrl";
	rename -uid "5477FAA9-4A22-043A-5129-739766720930";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		11.292752559166534 41.920623399031101 -16.306211631458108
		-11.292752431473478 41.920623399031101 -16.306211631458108
		-11.292752431473478 41.920620609001674 4.6465533465117232
		11.292752559166534 41.920620609001674 4.6465533465117232
		11.292752559166534 41.920623399031101 -16.306211631458108
		;
createNode transform -n "ik" -p "root_ctrl";
	rename -uid "3B7C4367-4FFF-AE92-03C1-38ABCC6112B6";
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "L_Elbow_ik_ctrl_pos" -p "ik";
	rename -uid "E13E3CF2-4F88-EA28-5DB7-909F67FD09C1";
	setAttr ".t" -type "double3" 36.041455361862255 116.07464305091119 -30.621657141325962 ;
createNode transform -n "L_Elbow_ik_ctrl" -p "L_Elbow_ik_ctrl_pos";
	rename -uid "3CDD5274-4A94-0D2C-B836-A1B9A3638E49";
	setAttr -k off ".v";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode nurbsCurve -n "L_Elbow_ik_ctrlShape" -p "L_Elbow_ik_ctrl";
	rename -uid "ABF669A7-4CF9-5FC5-449D-C4B46078F74D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0 3 0
		3 0 0
		0 0 3
		-3 0 0
		0 0 -3
		0 3 0
		0 0 3
		0 -3 0
		0 0 -3
		3 0 0
		0 3 0
		-3 0 0
		0 -3 0
		3 0 0
		;
createNode transform -n "R_Elbow_ik_ctrl_pos" -p "ik";
	rename -uid "D20374BC-4018-C5F1-7E75-9A85954946C5";
	setAttr ".t" -type "double3" -36.041534260503781 116.07488350375748 -30.621542694301041 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode transform -n "R_Elbow_ik_ctrl" -p "R_Elbow_ik_ctrl_pos";
	rename -uid "82323A40-420C-7D85-41D4-459F2B7E619B";
	setAttr -k off ".v";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
createNode nurbsCurve -n "R_Elbow_ik_ctrlShape" -p "R_Elbow_ik_ctrl";
	rename -uid "B4B17283-411D-CA54-2378-9BA727623B0C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		0 3 -8.8817841970012523e-16
		3 0 -8.5385128734346626e-16
		0 0 -3.0000000000000009
		-3 0 -9.2250555205678431e-16
		0 0 2.9999999999999991
		0 3 -8.8817841970012523e-16
		0 0 -3.0000000000000009
		0 -3 -8.8817841970012523e-16
		0 0 2.9999999999999991
		3 0 -8.5385128734346626e-16
		0 3 -8.8817841970012523e-16
		-3 0 -9.2250555205678431e-16
		0 -3 -8.8817841970012523e-16
		3 0 -8.5385128734346626e-16
		;
createNode transform -n "L_Knee_ik_ctrl_pos" -p "ik";
	rename -uid "5B78B2FD-4DA8-2FBB-F472-9DA03BA1DA2B";
	setAttr ".t" -type "double3" 8.1277821221864563 46.332534266995296 47.500350524926262 ;
createNode transform -n "L_Knee_ik_ctrl" -p "L_Knee_ik_ctrl_pos";
	rename -uid "8DE40B31-4D07-29C7-D2C2-2C959FE2BC91";
	setAttr -k off ".v";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 3.814697265625e-06 0 -1.1920928955078125e-06 ;
	setAttr ".sp" -type "double3" 3.814697265625e-06 0 -1.1920928955078125e-06 ;
createNode nurbsCurve -n "L_Knee_ik_ctrlShape" -p "L_Knee_ik_ctrl";
	rename -uid "87FC4C55-4BF3-4826-6425-60BB96193319";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		3.814697265625e-06 3 -1.1920928955078125e-06
		3.0000038146972656 0 -1.1920928955078125e-06
		3.814697265625e-06 0 2.9999988079071045
		-2.9999961853027344 0 -1.1920928955078125e-06
		3.814697265625e-06 0 -3.0000011920928955
		3.814697265625e-06 3 -1.1920928955078125e-06
		3.814697265625e-06 0 2.9999988079071045
		3.814697265625e-06 -3 -1.1920928955078125e-06
		3.814697265625e-06 0 -3.0000011920928955
		3.0000038146972656 0 -1.1920928955078125e-06
		3.814697265625e-06 3 -1.1920928955078125e-06
		-2.9999961853027344 0 -1.1920928955078125e-06
		3.814697265625e-06 -3 -1.1920928955078125e-06
		3.0000038146972656 0 -1.1920928955078125e-06
		;
createNode transform -n "R_Knee_ik_ctrl_pos" -p "ik";
	rename -uid "E66EE080-4E41-7D9E-EDAF-4A82D3CDB118";
	setAttr ".t" -type "double3" -8.1278321003059233 46.332543946647014 47.500371350738362 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode transform -n "R_Knee_ik_ctrl" -p "R_Knee_ik_ctrl_pos";
	rename -uid "EAF85E35-46F1-96D5-DEB4-8699F640446F";
	setAttr -k off ".v";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 3.814697265625e-06 0 1.1920928955078125e-06 ;
	setAttr ".sp" -type "double3" 3.814697265625e-06 0 1.1920928955078125e-06 ;
createNode nurbsCurve -n "R_Knee_ik_ctrlShape" -p "R_Knee_ik_ctrl";
	rename -uid "72DFA88E-47A4-8456-86C3-3D8522FEDFD5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 13 0 no 3
		14 0 1 2 3 4 5 6 7 8 9 10 11 12 13
		14
		3.8146972637653764e-06 3 1.1920928955078125e-06
		3.0000038146972638 0 1.1920928955421398e-06
		3.8146972638486432e-06 0 -2.9999988079071045
		-2.9999961853027362 0 1.1920928954734854e-06
		3.8146972638486432e-06 0 3.0000011920928955
		3.8146972637653764e-06 3 1.1920928955078125e-06
		3.8146972638486432e-06 0 -2.9999988079071045
		3.8146972639319099e-06 -3 1.1920928955078125e-06
		3.8146972638486432e-06 0 3.0000011920928955
		3.0000038146972638 0 1.1920928955421398e-06
		3.8146972637653764e-06 3 1.1920928955078125e-06
		-2.9999961853027362 0 1.1920928954734854e-06
		3.8146972639319099e-06 -3 1.1920928955078125e-06
		3.0000038146972638 0 1.1920928955421398e-06
		;
createNode transform -n "L_Hand_ik_ctrl_pos" -p "ik";
	rename -uid "5E71FE5E-4695-35FD-0501-B88D0C5DD136";
	setAttr ".t" -type "double3" 54.937212783111896 105.08367963519098 -5.6905762151500561 ;
	setAttr ".r" -type "double3" -4.8060006462937528 -0.12560037930878207 -121.44325009226579 ;
	setAttr ".s" -type "double3" 0.999999925450755 0.99999989573604053 1.0000001192083356 ;
createNode transform -n "L_Hand_ik_ctrl" -p "L_Hand_ik_ctrl_pos";
	rename -uid "F72A8D11-49C3-7B8C-48B6-8DA6EECF96AB";
	setAttr -k off ".v";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0 5.3290705182007482e-15 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 0 5.3290705182007514e-15 -1.7763568394002505e-15 ;
	setAttr ".spt" -type "double3" 0 -3.1554436208840458e-30 0 ;
createNode nurbsCurve -n "L_Hand_ik_ctrlShape" -p "L_Hand_ik_ctrl";
	rename -uid "C82FEA8E-41BE-AB2A-C3DC-0387CD728FC2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		-8.7379063702905313 -1.3322676295501878e-14 -8.8817841970012523e-16
		-4.3689531851452728 -1.1546319456101628e-14 -7.567245221456349
		4.3689531851452443 -7.9936057773011271e-15 -7.567245221456349
		8.7379063702904887 -6.2172489379008766e-15 -8.8817841970012523e-16
		4.3689531851452443 -7.9936057773011271e-15 7.5672452214563464
		-4.3689531851452728 -1.1546319456101628e-14 7.5672452214563464
		-8.7379063702905313 -1.3322676295501878e-14 -8.8817841970012523e-16
		;
createNode transform -n "R_Hand_ik_ctrl_pos" -p "ik";
	rename -uid "ECE018BF-433C-1D96-8F38-EAA6C4422B87";
	setAttr ".t" -type "double3" -54.93755121982317 105.08441178816285 -5.6897140299584175 ;
	setAttr ".r" -type "double3" -4.8037813764721955 0.12534243054682784 121.4427129007331 ;
	setAttr ".s" -type "double3" 0.99999992457486964 1.0000001315076468 0.99999988431264186 ;
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-15 8.8817841970012523e-16 ;
	setAttr ".rpt" -type "double3" 3.8395314360244361e-15 6.7872140160576717e-15 -1.401165112235003e-15 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-15 8.8817841970012523e-16 ;
createNode transform -n "R_Hand_ik_ctrl" -p "R_Hand_ik_ctrl_pos";
	rename -uid "FE73780D-4B59-66A9-D135-C0AB39E41E7C";
	setAttr -k off ".v";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0 3.5527136788005009e-15 1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 0 3.5527136788005009e-15 1.7763568394002505e-15 ;
createNode nurbsCurve -n "R_Hand_ik_ctrlShape" -p "R_Hand_ik_ctrl";
	rename -uid "21B098CD-4130-426B-EADC-8A9CAEA7CF60";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		-8.7379057188862053 -5.2911757973171741e-15 1.0208097245534114e-15
		-4.3689528594431097 -3.3237332103200711e-15 7.5672461235350577
		4.3689528594430813 1.9108546978185683e-16 7.5672461235350577
		8.7379057188861626 1.7384615628866826e-15 7.5554732660338268e-16
		4.3689528594430813 -2.2898102411041954e-16 -7.567246123535055
		-4.3689528594431097 -3.7437997042123475e-15 -7.567246123535055
		-8.7379057188862053 -5.2911757973171741e-15 1.0208097245534114e-15
		;
createNode transform -n "L_Foot_ik_ctrl_pos" -p "ik";
	rename -uid "EFB7EF3C-4619-E598-A20F-36BC3A881452";
	setAttr ".t" -type "double3" 7.4998049156129536 7.7171642671767131 -2.8048378854706928 ;
	setAttr ".s" -type "double3" 0.99999988080680113 1.000000119127876 0.99999994046055063 ;
createNode transform -n "L_Foot_ik_ctrl" -p "L_Foot_ik_ctrl_pos";
	rename -uid "3DE74A92-4462-73B5-6B79-BCAACF79D8D1";
	setAttr -k off ".v";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 5.7989348434261956e-08 -2.2756486917074881e-07 -5.6652724289563139e-08 ;
	setAttr ".sp" -type "double3" 5.7989348434261956e-08 -2.2756486917074881e-07 -5.6652724289563139e-08 ;
createNode nurbsCurve -n "L_Foot_ik_ctrlShape" -p "L_Foot_ik_ctrl";
	rename -uid "42EEE46D-4191-A995-CE87-B69C9DEC9B1C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		6.5362806920025127 -7.7171633478474462 -9.1547099101837368
		-6.5362805760238034 -7.7171633478474462 -9.1547099101837368
		-6.5362805760238034 -7.7171633478474462 22.576149033766072
		6.5362806920025127 -7.7171633478474462 22.576149033766072
		6.5362806920025127 -7.7171633478474462 -9.1547099101837368
		;
createNode transform -n "Roll_In_L_Reverse_ctrl_pos" -p "L_Foot_ik_ctrl";
	rename -uid "5E8465C5-459B-10AF-D666-2C8948603F8A";
	setAttr ".t" -type "double3" -3.3685257708461696 -7.7171633478474355 5.8198904943555112 ;
	setAttr ".r" -type "double3" 0 -2.6821476265480348 0 ;
	setAttr ".s" -type "double3" 1.0000001191932131 0.99999988087213798 1.0000000595394527 ;
createNode transform -n "Roll_In_L_Reverse_ctrl" -p "Roll_In_L_Reverse_ctrl_pos";
	rename -uid "2324CC14-4402-E572-4930-80AEB3A78E5C";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0 1.1102230246251565e-16 0 ;
	setAttr ".mnrl" -type "double3" -45 -45 0 ;
	setAttr ".mxrl" -type "double3" 45 45 0 ;
	setAttr ".mrze" yes;
createNode nurbsCurve -n "Roll_In_L_Reverse_ctrlShape" -p "Roll_In_L_Reverse_ctrl";
	rename -uid "9C5A25A6-46BB-5FB9-92A5-03BBAA86E942";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		1.5 3 1.5
		1.5 3 -1.5
		-1.5 3 -1.5
		-1.5 1.1102230246251565e-16 -1.5
		1.5 1.1102230246251565e-16 -1.5
		1.5 3 -1.5
		-1.5 3 -1.5
		-1.5 3 1.5
		1.5 3 1.5
		1.5 1.1102230246251565e-16 1.5
		1.5 1.1102230246251565e-16 -1.5
		-1.5 1.1102230246251565e-16 -1.5
		-1.5 1.1102230246251565e-16 1.5
		1.5 1.1102230246251565e-16 1.5
		-1.5 1.1102230246251565e-16 1.5
		-1.5 3 1.5
		;
createNode transform -n "Roll_Out_L_Reverse_ctrl_pos" -p "Roll_In_L_Reverse_ctrl";
	rename -uid "ADC4D1FE-4F1D-F6B1-9A79-2E85805A4953";
	setAttr ".t" -type "double3" 7.5928441651924121 8.8817841970012523e-16 -0.085958652479171338 ;
	setAttr ".r" -type "double3" 0 17.075279082664981 0 ;
	setAttr ".s" -type "double3" 1.0000000014572477 1 0.99999999854275268 ;
	setAttr ".sh" -type "double3" 0 -4.7619149248782693e-09 0 ;
createNode transform -n "Roll_Out_L_Reverse_ctrl" -p "Roll_Out_L_Reverse_ctrl_pos";
	rename -uid "0B2D1244-4C43-7A60-1DED-F088C44CB0D5";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0 1.1102230246251565e-16 0 ;
	setAttr ".mnrl" -type "double3" -45 -45 0 ;
	setAttr ".mxrl" -type "double3" 45 45 0 ;
	setAttr ".xrze" yes;
createNode nurbsCurve -n "Roll_Out_L_Reverse_ctrlShape" -p "Roll_Out_L_Reverse_ctrl";
	rename -uid "F16E58DF-44A8-BAA5-50BD-DD8AFBE4E6FF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		1.5 3 1.5
		1.5 3 -1.5
		-1.5 3 -1.5
		-1.5 1.1102230246251565e-16 -1.5
		1.5 1.1102230246251565e-16 -1.5
		1.5 3 -1.5
		-1.5 3 -1.5
		-1.5 3 1.5
		1.5 3 1.5
		1.5 1.1102230246251565e-16 1.5
		1.5 1.1102230246251565e-16 -1.5
		-1.5 1.1102230246251565e-16 -1.5
		-1.5 1.1102230246251565e-16 1.5
		1.5 1.1102230246251565e-16 1.5
		-1.5 1.1102230246251565e-16 1.5
		-1.5 3 1.5
		;
createNode transform -n "Heel_L_Reverse_ctrl_pos" -p "Roll_Out_L_Reverse_ctrl";
	rename -uid "39CAB101-48AD-1E0E-75DA-388640C7DCAA";
	setAttr ".t" -type "double3" -2.2124472800610473 0 -10.84985105855934 ;
	setAttr ".r" -type "double3" 0 -7.8698121704973145 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "Heel_L_Reverse_ctrl" -p "Heel_L_Reverse_ctrl_pos";
	rename -uid "2F0290A0-492C-8C30-4EB9-59B166059A92";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0 1.1102230246251565e-16 0 ;
	setAttr ".mnrl" -type "double3" 0 -45 -45 ;
	setAttr ".mxrl" -type "double3" 0 45 45 ;
	setAttr ".xrxe" yes;
createNode nurbsCurve -n "Heel_L_Reverse_ctrlShape" -p "Heel_L_Reverse_ctrl";
	rename -uid "34DC2D42-402B-B815-ED2B-A68D42CDEBAA";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		1.5 3 1.5
		1.5 3 -1.5
		-1.5 3 -1.5
		-1.5 1.1102230246251565e-16 -1.5
		1.5 1.1102230246251565e-16 -1.5
		1.5 3 -1.5
		-1.5 3 -1.5
		-1.5 3 1.5
		1.5 3 1.5
		1.5 1.1102230246251565e-16 1.5
		1.5 1.1102230246251565e-16 -1.5
		-1.5 1.1102230246251565e-16 -1.5
		-1.5 1.1102230246251565e-16 1.5
		1.5 1.1102230246251565e-16 1.5
		-1.5 1.1102230246251565e-16 1.5
		-1.5 3 1.5
		;
createNode transform -n "Toe_L_Reverse_ctrl_pos" -p "Heel_L_Reverse_ctrl";
	rename -uid "D7F0D7D0-45A9-AABC-72DD-F4BC3DD24736";
	setAttr ".t" -type "double3" -1.6977496779385541 3.5527136788005009e-15 24.638607169645883 ;
	setAttr ".r" -type "double3" 0 -4.49692712981492 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "Toe_L_Reverse_ctrl" -p "Toe_L_Reverse_ctrl_pos";
	rename -uid "84FBB6F7-4F56-27F6-0412-EEA901924324";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0 1.1102230246251565e-16 0 ;
	setAttr ".mnrl" -type "double3" 0 -45 -45 ;
	setAttr ".mxrl" -type "double3" 0 45 45 ;
	setAttr ".mrxe" yes;
createNode nurbsCurve -n "Toe_L_Reverse_ctrlShape" -p "Toe_L_Reverse_ctrl";
	rename -uid "A6CDB59F-4575-1368-4518-F6A1D8D6EE16";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		1.5 3 1.5
		1.5 3 -1.5
		-1.5 3 -1.5
		-1.5 1.1102230246251565e-16 -1.5
		1.5 1.1102230246251565e-16 -1.5
		1.5 3 -1.5
		-1.5 3 -1.5
		-1.5 3 1.5
		1.5 3 1.5
		1.5 1.1102230246251565e-16 1.5
		1.5 1.1102230246251565e-16 -1.5
		-1.5 1.1102230246251565e-16 -1.5
		-1.5 1.1102230246251565e-16 1.5
		1.5 1.1102230246251565e-16 1.5
		-1.5 1.1102230246251565e-16 1.5
		-1.5 3 1.5
		;
createNode transform -n "Ball_L_Reverse_ctrl_pos" -p "Toe_L_Reverse_ctrl";
	rename -uid "F5409395-41A9-AB84-83F0-BDBBF6F8D07F";
	setAttr ".t" -type "double3" 1.1928188825815704 4.0056746780170434 -7.9940803989623035 ;
	setAttr ".r" -type "double3" 89.12130923086977 -2.130986483041903 -177.47234133505853 ;
	setAttr ".s" -type "double3" 0.99999976301687188 1.0000001121887059 0.99999970756181911 ;
createNode transform -n "Ball_L_Reverse_ctrl" -p "Ball_L_Reverse_ctrl_pos";
	rename -uid "0DE47247-40B8-98CD-9FFF-609E87FF7DC1";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rz";
	setAttr -k off ".rx";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -9.5197529503820988e-07 2.4075568667569769e-06 -1.9528053574191517e-06 ;
	setAttr ".sp" -type "double3" -9.5197529503820988e-07 2.4075568667569769e-06 -1.9528053574191517e-06 ;
createNode nurbsCurve -n "Ball_L_Reverse_ctrlShape" -p "Ball_L_Reverse_ctrl";
	rename -uid "38328115-432A-8AB4-41F6-E7977E02C0F9";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		-0.11354252055734088 7.2264776504809953 3.2500243112010172
		-0.32478729411537699 7.5039560364464739 5.0661953591563131
		-0.21029219384481551 7.1124726137226633 4.1422333769727402
		-0.2447519375302985 7.0241258427528583 4.4719771082704245
		-0.30878802247395043 6.7554851543887589 5.1109103655145454
		-0.38183855808450573 6.1096384480505614 5.9248231520561285
		-0.42681874598940517 5.2677588044750623 6.5372807635676748
		-0.44034978766242261 4.2919570796446713 6.9025598093412226
		-0.42144327783692581 3.2541162545523221 6.9938264880464649
		-0.37148352224277204 2.2306570857897001 6.8042902433434955
		-0.29421731333411649 1.2973187074373809 6.3484202477648823
		-0.22808233349177237 0.77971642013180598 5.8877489511439327
		-0.19279479621909951 0.5579729175787782 5.6283108401683135
		-0.30636416675976441 0.60267933019394226 6.6308962907121911
		-0.094440309103126563 0.070817028793291409 4.8724007666339331
		-0.20132859349652216 1.8453757420163002 5.3819219690794986
		-0.17443045219738346 0.83335771710010431 5.3953805922940363
		-0.20634977205746524 1.0339522614291394 5.6300510154457895
		-0.26621269539874148 1.5024356172119249 6.0470412966684384
		-0.33609372234770774 2.3466705907979226 6.4593122165781205
		-0.38131189323521653 3.2727981206850565 6.6309093213345411
		-0.39840647749589209 4.211737461290932 6.5482486953783523
		-0.38617520876736477 5.0945890440881572 6.2178614062485353
		-0.34546294666693 5.8563683908395729 5.6635714209323362
		-0.27939522365247427 6.4405915236940467 4.9274314801195462
		-0.22143197564462974 6.6837237842510548 4.3490992233190209
		-0.19026152502631249 6.7636545684658609 4.0508263304242824
		-0.21200479895832808 5.8446667767327307 4.4751775109252598
		-0.11354252055734088 7.2264776504809953 3.2500243112010172
		;
createNode transform -n "Ankle_L_Reverse_ctrl_pos" -p "Ball_L_Reverse_ctrl";
	rename -uid "82C67BEF-402F-4DED-252F-29BE549B9917";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.31902201665484853 -12.786925645285011 3.5220860383547143 ;
	setAttr ".r" -type "double3" 89.033378746796799 2.4620519332725368 175.80247882181953 ;
	setAttr ".s" -type "double3" 1.0000002352182766 1.0000002922548257 0.99999988975965426 ;
	setAttr ".sh" -type "double3" -4.0607129254232772e-09 -5.1006915108742947e-08 1.1394776601672037e-08 ;
createNode locator -n "Ankle_L_Reverse_ctrl_posShape" -p "Ankle_L_Reverse_ctrl_pos";
	rename -uid "156A10AC-4656-6C60-22DC-64A88794990E";
	setAttr -k off ".v";
createNode transform -n "R_Foot_ik_ctrl_pos" -p "ik";
	rename -uid "4285CE21-4C41-B9F1-1A52-13A706591B0F";
	setAttr ".t" -type "double3" -7.4982681274414062 7.7171642671767122 -2.8048378854706928 ;
	setAttr ".s" -type "double3" 0.99999988080680113 1.000000119127876 0.99999994046055063 ;
createNode transform -n "R_Foot_ik_ctrl" -p "R_Foot_ik_ctrl_pos";
	rename -uid "D12431A3-4658-B215-623C-44A752FF36FD";
	setAttr -k off ".v";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 5.7989348434261956e-08 -2.2756486917074881e-07 -5.6652724289563139e-08 ;
	setAttr ".sp" -type "double3" 5.7989348434261956e-08 -2.2756486917074881e-07 -5.6652724289563139e-08 ;
createNode nurbsCurve -n "R_Foot_ik_ctrlShape" -p "R_Foot_ik_ctrl";
	rename -uid "4B71BB08-4707-D458-410B-6496D1911BF8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		6.5362806920025127 -7.7171633478474462 -9.1547099101837368
		-6.5362805760238034 -7.7171633478474462 -9.1547099101837368
		-6.5362805760238034 -7.7171633478474462 22.576149033766072
		6.5362806920025127 -7.7171633478474462 22.576149033766072
		6.5362806920025127 -7.7171633478474462 -9.1547099101837368
		;
createNode transform -n "Roll_In_R_Reverse_ctrl_pos" -p "R_Foot_ik_ctrl";
	rename -uid "919F1CAD-411D-7812-50F2-71A8C1EE14EC";
	setAttr ".t" -type "double3" -3.3685257708461696 -7.7171633478474355 5.8198904943555112 ;
	setAttr ".r" -type "double3" 0 -2.6821476265480348 0 ;
	setAttr ".s" -type "double3" 1.0000001191932131 0.99999988087213798 1.0000000595394527 ;
createNode transform -n "Roll_In_R_Reverse_ctrl" -p "Roll_In_R_Reverse_ctrl_pos";
	rename -uid "E7D16C2D-411F-2F55-45D4-569BD9D0A203";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0 1.1102230246251565e-16 0 ;
	setAttr ".mnrl" -type "double3" -45 -45 0 ;
	setAttr ".mxrl" -type "double3" 45 45 0 ;
	setAttr ".mrze" yes;
createNode nurbsCurve -n "Roll_In_R_Reverse_ctrlShape" -p "Roll_In_R_Reverse_ctrl";
	rename -uid "901A59DD-45AA-721A-0719-0B9477DB8229";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		1.5 3 1.5
		1.5 3 -1.5
		-1.5 3 -1.5
		-1.5 1.1102230246251565e-16 -1.5
		1.5 1.1102230246251565e-16 -1.5
		1.5 3 -1.5
		-1.5 3 -1.5
		-1.5 3 1.5
		1.5 3 1.5
		1.5 1.1102230246251565e-16 1.5
		1.5 1.1102230246251565e-16 -1.5
		-1.5 1.1102230246251565e-16 -1.5
		-1.5 1.1102230246251565e-16 1.5
		1.5 1.1102230246251565e-16 1.5
		-1.5 1.1102230246251565e-16 1.5
		-1.5 3 1.5
		;
createNode transform -n "Roll_Out_R_Reverse_ctrl_pos" -p "Roll_In_R_Reverse_ctrl";
	rename -uid "48B08DDB-47DF-CB29-BF32-5D9ADB8F9D13";
	setAttr ".t" -type "double3" 7.5928441651924121 8.8817841970012523e-16 -0.085958652479171338 ;
	setAttr ".r" -type "double3" 0 17.075279082664981 0 ;
	setAttr ".s" -type "double3" 1.0000000014572477 1 0.99999999854275268 ;
	setAttr ".sh" -type "double3" 0 -4.7619149248782693e-09 0 ;
createNode transform -n "Roll_Out_R_Reverse_ctrl" -p "Roll_Out_R_Reverse_ctrl_pos";
	rename -uid "D25EEF54-436F-F134-328D-6CBDE1B4E850";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0 1.1102230246251565e-16 0 ;
	setAttr ".mnrl" -type "double3" -45 -45 0 ;
	setAttr ".mxrl" -type "double3" 45 45 0 ;
	setAttr ".xrze" yes;
createNode nurbsCurve -n "Roll_Out_R_Reverse_ctrlShape" -p "Roll_Out_R_Reverse_ctrl";
	rename -uid "75C4704B-42CE-358C-F301-48ABACB05B12";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		1.5 3 1.5
		1.5 3 -1.5
		-1.5 3 -1.5
		-1.5 1.1102230246251565e-16 -1.5
		1.5 1.1102230246251565e-16 -1.5
		1.5 3 -1.5
		-1.5 3 -1.5
		-1.5 3 1.5
		1.5 3 1.5
		1.5 1.1102230246251565e-16 1.5
		1.5 1.1102230246251565e-16 -1.5
		-1.5 1.1102230246251565e-16 -1.5
		-1.5 1.1102230246251565e-16 1.5
		1.5 1.1102230246251565e-16 1.5
		-1.5 1.1102230246251565e-16 1.5
		-1.5 3 1.5
		;
createNode transform -n "Heel_R_Reverse_ctrl_pos" -p "Roll_Out_R_Reverse_ctrl";
	rename -uid "A73B9CC5-4525-F59A-A830-BFBD24228C54";
	setAttr ".t" -type "double3" -2.2124472800610473 0 -10.84985105855934 ;
	setAttr ".r" -type "double3" 0 -7.8698121704973145 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "Heel_R_Reverse_ctrl" -p "Heel_R_Reverse_ctrl_pos";
	rename -uid "BBB5588F-4DA6-904E-6FAD-0F828132E406";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0 1.1102230246251565e-16 0 ;
	setAttr ".mnrl" -type "double3" 0 -45 -45 ;
	setAttr ".mxrl" -type "double3" 0 45 45 ;
	setAttr ".xrxe" yes;
createNode nurbsCurve -n "Heel_R_Reverse_ctrlShape" -p "Heel_R_Reverse_ctrl";
	rename -uid "A75EB340-417D-D1FC-9D38-97999651C5CB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		1.5 3 1.5
		1.5 3 -1.5
		-1.5 3 -1.5
		-1.5 1.1102230246251565e-16 -1.5
		1.5 1.1102230246251565e-16 -1.5
		1.5 3 -1.5
		-1.5 3 -1.5
		-1.5 3 1.5
		1.5 3 1.5
		1.5 1.1102230246251565e-16 1.5
		1.5 1.1102230246251565e-16 -1.5
		-1.5 1.1102230246251565e-16 -1.5
		-1.5 1.1102230246251565e-16 1.5
		1.5 1.1102230246251565e-16 1.5
		-1.5 1.1102230246251565e-16 1.5
		-1.5 3 1.5
		;
createNode transform -n "Toe_R_Reverse_ctrl_pos" -p "Heel_R_Reverse_ctrl";
	rename -uid "B44FA186-473B-B8F4-C227-0A8EAEE517F4";
	setAttr ".t" -type "double3" -1.6977496779385541 3.5527136788005009e-15 24.638607169645883 ;
	setAttr ".r" -type "double3" 0 -4.49692712981492 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "Toe_R_Reverse_ctrl" -p "Toe_R_Reverse_ctrl_pos";
	rename -uid "BA7B35C1-4713-9852-E5F8-26ADCB839F0C";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0 1.1102230246251565e-16 0 ;
	setAttr ".mnrl" -type "double3" 0 -45 -45 ;
	setAttr ".mxrl" -type "double3" 0 45 45 ;
	setAttr ".mrxe" yes;
createNode nurbsCurve -n "Toe_R_Reverse_ctrlShape" -p "Toe_R_Reverse_ctrl";
	rename -uid "407F0DCA-47C2-76C5-4473-6FB260E87157";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		1.5 3 1.5
		1.5 3 -1.5
		-1.5 3 -1.5
		-1.5 1.1102230246251565e-16 -1.5
		1.5 1.1102230246251565e-16 -1.5
		1.5 3 -1.5
		-1.5 3 -1.5
		-1.5 3 1.5
		1.5 3 1.5
		1.5 1.1102230246251565e-16 1.5
		1.5 1.1102230246251565e-16 -1.5
		-1.5 1.1102230246251565e-16 -1.5
		-1.5 1.1102230246251565e-16 1.5
		1.5 1.1102230246251565e-16 1.5
		-1.5 1.1102230246251565e-16 1.5
		-1.5 3 1.5
		;
createNode transform -n "Ball_R_Reverse_ctrl_pos" -p "Toe_R_Reverse_ctrl";
	rename -uid "941B5106-4589-92D1-433C-0B9E49A5562C";
	setAttr ".t" -type "double3" 16.18151281050903 4.0056746780170451 -7.4637509356056633 ;
	setAttr ".r" -type "double3" 89.12130923086977 -2.1309864830419021 -177.47234133505853 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 17.739081110011046 -1.3019055488908702 0.76478540802842399 ;
	setAttr ".rpt" -type "double3" -35.531173706360455 1.3019055488908733 -1.3943046285812397 ;
	setAttr ".sp" -type "double3" 17.739081110011043 -1.3019055488908702 0.76478540802842376 ;
	setAttr ".spt" -type "double3" 3.5527136788005025e-15 0 2.2204460492503141e-16 ;
createNode transform -n "Ball_R_Reverse_ctrl" -p "Ball_R_Reverse_ctrl_pos";
	rename -uid "F760D7DE-4C96-BC5A-E269-3E871A7881F2";
	setAttr ".rp" -type "double3" 17.739082566311094 -1.3019033180817114 0.76478355905165829 ;
	setAttr ".sp" -type "double3" 17.739082566311094 -1.3019033180817114 0.76478355905165829 ;
createNode nurbsCurve -n "Ball_R_Reverse_ctrlShape" -p "Ball_R_Reverse_ctrl";
	rename -uid "9463F404-415B-A450-36F9-97BA6EC71C8D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 9;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 28 0 no 3
		29 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28
		29
		18.62586995610954 5.8511566562082349 4.0579360766383958
		18.719037336698285 6.1062936788988145 5.8872307194544948
		18.628235763917235 5.7298773310551088 4.9544180485001359
		18.621097181997563 5.6395253977505879 5.2853395808857258
		18.590367147703837 5.3684402847426611 5.9257085751475564
		18.498573110286415 4.7239691291491477 6.7388130339031882
		18.367790779225132 3.8883865775155417 7.3475712760965308
		18.20765544708356 2.9233443165083512 7.7065296607953737
		18.02996542558887 1.8999319751782346 7.7893204422702471
		17.847803066464824 0.89350858268116395 7.5897767674852918
		17.674659933323767 -0.021451874707362428 7.1231110023412789
		17.573483333388978 -0.52677490006824779 6.6552265331632796
		17.528598602473888 -0.7426344299403308 6.3923320295929376
		17.561221991605919 -0.70865738035329273 7.4012199975605437
		17.425377058243697 -1.2149963194053741 5.6277316260886767
		17.745712684879585 0.52820780378179966 6.1556715926479431
		17.570569928941126 -0.4689821620458513 6.1604196183959772
		17.611173159007169 -0.27371016517724045 6.3982166389421948
		17.702749274328845 0.1836588396015908 6.8217357923333068
		17.859360936139204 1.0112711716450433 7.2437713754156974
		18.024201665816676 1.9219821763196698 7.4244247036942053
		18.184956377313565 2.8478689179945889 7.3494317224762504
		18.329840401437163 3.7209849567665847 7.0247635913547075
		18.448176910702813 4.477067394303182 6.4738203844864959
		18.5312152130737 5.0600450878362997 5.7384123125985678
		18.559025628023889 5.305390349529568 5.1587802457381322
		18.565485650729737 5.3871346883738616 4.8594420991467029
		18.416666875904824 4.4774731112582105 5.2783145463640047
		18.62586995610954 5.8511566562082349 4.0579360766383958
		;
createNode transform -n "Ankle_R_Reverse_ctrl_pos" -p "Ball_R_Reverse_ctrl";
	rename -uid "0BD39989-4ADA-EE0F-47A1-AAB5F20385D7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 15.263057100535715 -13.883698788373398 4.1663675366487603 ;
	setAttr ".r" -type "double3" 89.0333783576244 2.4620517923072169 175.80247736140163 ;
	setAttr ".s" -type "double3" 0.99999999999999933 0.99999999999999967 0.99999999999999978 ;
createNode locator -n "Ankle_R_Reverse_ctrl_posShape" -p "Ankle_R_Reverse_ctrl_pos";
	rename -uid "52518C19-4BA7-2829-5D66-DBB0F4EC9BFA";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -6.6613381477509392e-16 -8.8817841970012523e-16 1.1962653090336062e-14 ;
createNode transform -n "blend_ctrls" -p "root_ctrl";
	rename -uid "B0344EFF-411B-2922-DAFF-6BB411159F16";
	setAttr ".r" -type "double3" 89.999999999999986 0 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999978 ;
createNode transform -n "R_Hand_Blend_ctrl_pos" -p "blend_ctrls";
	rename -uid "2663324F-4ECB-FB98-7B37-C6B4EC4EAD08";
	setAttr ".t" -type "double3" -54.937212783111903 105.08367963519098 -5.6905762151500561 ;
	setAttr ".r" -type "double3" -175.193999353538 -0.12560037941166932 -58.556749878476232 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 -1 ;
createNode transform -n "R_Hand_Blend_ctrl" -p "R_Hand_Blend_ctrl_pos";
	rename -uid "AEA0F9F0-4CA1-6AE7-6C99-D88BFE1EF80A";
	addAttr -ci true -sn "IkFk" -ln "IkFk" -dv 1 -min 0 -max 1 -at "long";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -0.00079929646754806072 -0.00016524573725718028 0.00085309418572165896 ;
	setAttr ".sp" -type "double3" -0.00079929646754806072 -0.00016524573725718028 0.00085309418572165896 ;
	setAttr -k on ".IkFk";
createNode nurbsCurve -n "R_Hand_Blend_ctrlShape" -p "R_Hand_Blend_ctrl";
	rename -uid "BDA2D13D-4844-5CCF-66E6-05AA92130A9F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		-0.00079929646753629127 -0.00016524573723702296 0.00085309418572134335
		-0.00081020097029970567 -5.1064572645242624e-05 -2.9454474438901377
		-1.0424910853526523 -4.4468398769939089e-05 -3.3769145712395683
		-1.4739659232962716 -8.2929602167128313e-06 -4.4185922612316011
		-1.0424987960355974 3.6270244496218441e-05 -5.4602731447183883
		-0.00082110547306311985 6.3116591925602958e-05 -5.8917479819659961
		1.0408597789092837 5.6520418060766785e-05 -5.460280854616566
		1.4723346168529026 2.0344979486605749e-05 -4.4186031646245336
		1.0408674895922283 -2.4218225236792844e-05 -3.3769222811377455
		-0.00081020097029970567 -5.1064572645242624e-05 -2.9454474438901377
		-1.0424866659181979 -4.4468184562217379e-05 -3.3769189907067303
		1.04085535947483 5.6520203821643029e-05 -5.460276435149404
		-0.00082110547306311985 6.3116591925602958e-05 -5.8917479819659961
		-1.0424943765684329 3.6270116191848437e-05 -5.460268725283937
		1.0408630701250643 -2.4218096921955519e-05 -3.3769267005721977
		;
createNode transform -n "L_Hand_Blend_ctrl_pos" -p "blend_ctrls";
	rename -uid "C669262B-4220-D1B3-145E-5BBFE6359D86";
	setAttr ".t" -type "double3" 54.937212783111903 105.08367963519098 -5.6905762151500561 ;
	setAttr ".r" -type "double3" -4.80600064646202 -0.12560037941166935 -121.44325012152379 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "L_Hand_Blend_ctrl" -p "L_Hand_Blend_ctrl_pos";
	rename -uid "06083EFE-4E5D-B086-D996-37A50A0F399B";
	addAttr -ci true -sn "IkFk" -ln "IkFk" -dv 1 -min 0 -max 1 -at "long";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 1.4210854715202004e-14 -1.1546319456101628e-14 -8.8817841970012523e-16 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -2.7565842576160872e-17 1.6151254241806922e-16 -1.3733225121182558e-14 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0 2.2204460492503131e-14 1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 0 2.2204460492503131e-14 1.7763568394002505e-15 ;
	setAttr -k on ".IkFk";
createNode nurbsCurve -n "L_Hand_Blend_ctrlShape" -p "L_Hand_Blend_ctrl";
	rename -uid "E71ABF8F-4304-E86A-C490-5F9E93478CA1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		-1.1769575174325112e-14 9.1527346164722557e-15 5.7204591352951569e-16
		-1.0754547282260402e-14 -1.3146276149391696e-15 -2.9463005403085307
		1.0416792875287757 -1.3146276149391696e-15 -3.3777715229340135
		1.4731502701542578 9.1527346164722557e-15 -4.4194508104627968
		1.0416792875287724 1.9620096847883681e-14 -5.4611300979915791
		-9.7395193901956922e-15 9.1527346164722557e-15 -5.8926010806170614
		-1.0416792875287906 -1.3146276149391696e-15 -5.4611300979915791
		-1.473150270154272 9.1527346164722557e-15 -4.4194508104627959
		-1.0416792875287868 9.1527346164722557e-15 -3.3777715229340139
		-1.0754547282260402e-14 -1.3146276149391696e-15 -2.9463005403085307
		1.0416748680779644 1.9620096847883681e-14 -3.3777759423848237
		-1.0416748680779797 9.1527346164722557e-15 -5.4611256785407694
		-9.7395193901956922e-15 9.1527346164722557e-15 -5.8926010806170614
		1.0416748680779646 9.1527346164722557e-15 -5.4611256785407685
		-1.0416748680779793 9.1527346164722557e-15 -3.3777759423848241
		;
createNode transform -n "L_Foot_blend_ctrl_pos" -p "blend_ctrls";
	rename -uid "E8878016-4232-78AE-A54C-0BB344AC13E4";
	setAttr ".t" -type "double3" 7.4998049156129536 7.7171642671767131 -2.8048378854706928 ;
	setAttr ".r" -type "double3" 73.904094502160191 -6.3056661313161033 179.85150848852552 ;
createNode transform -n "L_Foot_blend_ctrl" -p "L_Foot_blend_ctrl_pos";
	rename -uid "180F859C-4470-BEC8-8E8E-959EE3EA8AF8";
	addAttr -ci true -sn "IkFk" -ln "IkFk" -dv 1 -min 0 -max 1 -at "long";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 8.8817841970012523e-16 -4.4408920985006262e-15 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 6.4403424466206558e-11 -7.0997931876962993e-12 -1.1310847585994534e-12 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" -1.7763568394002505e-15 0 2.6645352591003757e-15 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-15 0 2.6645352591003757e-15 ;
	setAttr -k on ".IkFk";
createNode nurbsCurve -n "L_Foot_blend_ctrlShape" -p "L_Foot_blend_ctrl";
	rename -uid "9290EE22-430A-46E3-F6F4-008C3A0D5421";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		6.6370133843662853e-16 2.1797952780628614e-15 -2.4191837387950167e-15
		-3.4720657281019025 0.27272402397920448 0.071013860990758779
		-3.981733058374096 0.6086707940145808 -1.1140883050326049
		-5.2097965807547837 0.82770223478333527 -1.5841663588810677
		-6.4368654553722333 0.80151667861051457 -1.0638736937874278
		-6.9441314562038059 0.54544804795840673 0.14202772198151997
		-6.434464125931612 0.2095012779230305 1.3271298880048839
		-5.206400603550926 -0.0095301628457239683 1.7972079418533464
		-3.9793317289334751 0.016655393327096729 1.2769152767597067
		-3.4720657281019025 0.27272402397920448 0.071013860990758779
		-3.9817382613787218 0.60866994725202028 -1.1140831264503626
		-6.4344589229269866 0.20950212468559098 1.3271247094226413
		-6.9441314562038059 0.54544804795840673 0.14202772198151997
		-6.4368602421796757 0.80151501367588218 -1.0638687282467683
		-3.9793369421260332 0.01665705826172912 1.276910311219047
		;
createNode transform -n "R_Foot_blend_ctrl_pos" -p "blend_ctrls";
	rename -uid "C9C6CA1C-4FF0-1368-2870-13ACB5FDB3B5";
	setAttr ".t" -type "double3" -7.4998049156129536 7.7171642671767131 -2.8048378854706928 ;
	setAttr ".r" -type "double3" 106.09590549783981 -6.3056661313161051 0.14849151147447454 ;
	setAttr ".rp" -type "double3" 8.8817841970012523e-16 0 -8.8817841970012523e-16 ;
	setAttr ".rpt" -type "double3" -3.4633499648839234e-17 8.5557588424093136e-16 1.2304835265887244e-15 ;
	setAttr ".sp" -type "double3" 8.8817841970012523e-16 0 -8.8817841970012523e-16 ;
createNode transform -n "R_Foot_blend_ctrl" -p "R_Foot_blend_ctrl_pos";
	rename -uid "5C032350-4889-011F-03E1-898677EA4105";
	addAttr -ci true -sn "IkFk" -ln "IkFk" -dv 1 -min 0 -max 1 -at "long";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 0.0014979152532150763 -0.00042183965431341619 0.0001166997495234412 ;
	setAttr ".sp" -type "double3" 0.0014979152532150763 -0.00042183965431341619 0.0001166997495234412 ;
	setAttr -k on ".IkFk";
createNode nurbsCurve -n "R_Foot_blend_ctrlShape" -p "R_Foot_blend_ctrl";
	rename -uid "3D7EF3D8-431B-9778-98D0-52854CE5E8EE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".ls" 2;
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0.001497915253213964 -0.00042183965431123646 0.00011669974952941313
		-3.4705676203654212 0.27234022733046626 -0.070760328627016686
		-3.9801858716908787 0.6082769523507936 1.114365790592307
		-5.2082290088444898 0.82731537506355524 1.5844938438104503
		-6.4353181325821724 0.80114973753639973 1.0642479350569674
		-6.9426331559840566 0.54510229431524371 -0.14163735700356278
		-6.4330149046585969 0.20916556929491634 -1.3267634762228866
		-5.2049717675049907 -0.0098728534178453894 -1.7968915294410297
		-3.9778826437673049 0.016292784109310333 -1.2766456206875474
		-3.4705676203654212 0.27234022733046626 -0.070760328627016686
		-3.9801910749033191 0.60827610571155133 1.1143606121987046
		-6.4330097014461574 0.20916641593415861 -1.3267582978292844
		-6.9426331559840566 0.54510229431524371 -0.14163735700356278
		-6.4353129195980072 0.80114807261095655 1.0642429692944502
		-3.9778878567514702 0.016294449034753512 -1.2766406549250298
		;
createNode transform -n "left";
	rename -uid "AA63DEE1-4224-AC74-F941-449606E9A62E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1004.2695637771388 88.175312506006065 5.3566088891835646 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "44227A13-4F41-007E-E7AB-AEA4D809F715";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1021.0005674539684;
	setAttr ".ow" 71.262941081235212;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".tp" -type "double3" 16.731003676829545 92.165611262698874 1.539091767906271 ;
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "6E41C2E8-4047-C4EC-803F-C2928D6A8794";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode RedshiftOptions -s -n "redshiftOptions";
	rename -uid "A28B84C3-4143-F3E0-4AB0-E9B44B509359";
	setAttr ".version" 4;
	setAttr ".unifiedFilterSize" 2.5;
	setAttr ".denoiseEngine" 3;
	setAttr ".GIEnabled" yes;
	setAttr ".primaryGIEngine" 4;
	setAttr ".secondaryGIEngine" 2;
	setAttr ".numGIBounces" 4;
	setAttr ".enableLegacyBlackBodyAndDispersionTechnique" no;
	setAttr ".enableLegacyMotionBlurSampling" no;
	setAttr ".enableOptiXRTOnSupportedGPUs" yes;
	setAttr ".enableAutomaticSampling" yes;
createNode RedshiftPostEffects -n "defaultRedshiftPostEffects";
	rename -uid "CFE5C29C-4260-44F8-791D-C9862326EC6A";
	setAttr ".v" 2;
	setAttr -s 2 ".cr[1]" -type "float2" 1 1;
	setAttr -s 2 ".cg[1]" -type "float2" 1 1;
	setAttr -s 2 ".cb[1]" -type "float2" 1 1;
	setAttr -s 2 ".cl[1]" -type "float2" 1 1;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "ED935991-43BA-B9AE-3D90-FD8FBDD878C8";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 2 1 0 ;
	setAttr -s 2 ".obsv";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "58D31878-4CFE-8910-FB0C-7F9E432557F8";
createNode displayLayerManager -n "layerManager";
	rename -uid "303B4C8C-4466-7587-FFBE-4EB67E0DCEDC";
	setAttr -s 2 ".dli[1]"  1;
createNode displayLayer -n "defaultLayer";
	rename -uid "8C07267B-425B-1C12-96EF-9B9894D77D9E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B7FFCC64-485B-C654-7060-FC950D715E73";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "8EBCE358-42CE-7C6A-7027-2C80F0A6F01A";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A7CD439B-4E8E-1815-76B6-4A946A755E2C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 736\n            -height 723\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 1\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 1\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 736\\n    -height 723\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 736\\n    -height 723\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "4A74AF46-4ED6-2CEE-D18A-E5A36123B2AD";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 1 -ast 0 -aet 60 ";
	setAttr ".st" 6;
createNode shapeEditorManager -n "shapeEditorManager1";
	rename -uid "E558D046-4AD2-9A93-5AA0-2E9F59980572";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 6 0 1 2 3 4
		 5 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager1";
	rename -uid "18FE2CB7-4976-CCF2-C1AB-CA93350631FA";
createNode renderLayerManager -n "renderLayerManager1";
	rename -uid "83F54E7C-4501-CBAF-39C8-1BAF2FA906D6";
createNode renderLayer -n "defaultRenderLayer1";
	rename -uid "C6106104-47FF-CC24-A57A-3386273464E3";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager2";
	rename -uid "7534C99A-44DD-34F9-1661-318EB01D5A62";
createNode poseInterpolatorManager -n "poseInterpolatorManager2";
	rename -uid "DB5679A5-4118-F096-4449-17948109390F";
createNode renderLayerManager -n "renderLayerManager2";
	rename -uid "C9F9593F-442A-F5CB-C889-D1B6602F320E";
createNode renderLayer -n "defaultRenderLayer2";
	rename -uid "5060EC56-4067-5B1F-0096-439F422ED5ED";
	setAttr ".g" yes;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "707CF16A-4C87-17BD-B3B0-42B60AB2AD6B";
	setAttr ".pee" yes;
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -451.19045826177825 ;
	setAttr ".tgi[0].vh" -type "double2" 102.38094831269902 44.047617297323995 ;
createNode objectSet -n "Rig_Set";
	rename -uid "2C210754-43F8-4C4B-3D9B-2D8FFEF00FAD";
	setAttr ".ihi" 0;
	setAttr -s 73 ".dsm";
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "defaultRedshiftPostEffects.msg" ":redshiftOptions.postEffects";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "shapeEditorManager.obsv[0]" "shapeEditorManager1.bsdt[0].bdpv";
connectAttr "renderLayerManager1.rlmi[0]" "defaultRenderLayer1.rlid";
connectAttr "shapeEditorManager.obsv[1]" "shapeEditorManager2.bsdt[0].bdpv";
connectAttr "renderLayerManager2.rlmi[0]" "defaultRenderLayer2.rlid";
connectAttr "R_Forearm_fk_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "L_Forearm_fk_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "L_Clavicle_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "RightHandPinky1_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "LeftHandPinky1_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "RightHandIndex3_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "L_Hand_fk_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "L_Foot_ik_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "LeftHandMiddle1_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "LeftHandMiddle3_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "R_Hand_ik_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "R_Calf_fk_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "R_Elbow_ik_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "R_Hand_Blend_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "L_Foot_fk_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "RightHandIndex2_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "RightHandThumb2_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "RightHandMiddle2_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "RightHandRing3_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "RightHandRing2_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "L_Hand_ik_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "RightHandThumb3_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "Spine01_fk_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "aim_l_ik_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "L_Upperarm_fk_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "L_Knee_ik_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "R_Hand_fk_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "aim_ik_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "LeftHandThumb3_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "RightHandMiddle3_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "LeftHandThumb1_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "Heel_L_Reverse_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "L_Foot_blend_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "L_Hand_Blend_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "L_Elbow_ik_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "R_Upperarm_fk_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "body_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "RightHandPinky3_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "RightHandPinky2_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "L_Calf_fk_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "RightHandRing1_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "LeftHandRing1_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "LeftHandRing3_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "Roll_Out_L_Reverse_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "R_Foot_blend_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "R_Knee_ik_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "LeftHandIndex1_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "L_Thigh_fk_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "LeftHandRing2_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "LeftHandPinky3_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "LeftHandPinky2_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "LeftHandIndex3_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "LeftHandIndex2_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "LeftHandMiddle2_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "aim_r_ik_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "R_Clavicle_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "Head_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "Roll_In_L_Reverse_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "root_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "RightHandIndex1_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "RightHandMiddle1_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "Toe_L_Reverse_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "LeftHandThumb2_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "R_Foot_fk_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "Spine02_fk_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "RightHandThumb1_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "R_Thigh_fk_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "R_Foot_ik_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "Roll_In_R_Reverse_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "Roll_Out_R_Reverse_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "Heel_R_Reverse_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "Toe_R_Reverse_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "Waist_fk_ctrl.iog" "Rig_Set.dsm" -na;
connectAttr "defaultRedshiftPostEffects.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer1.msg" ":defaultRenderingList1.r" -na;
connectAttr "defaultRenderLayer2.msg" ":defaultRenderingList1.r" -na;
// End of Rig.ma
