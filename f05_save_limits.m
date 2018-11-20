%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% This function saves the reference range (max, min values) for male and
% female for all tests.
%
% 2012 10
% Zeynep
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all ; 

body_measures_limits = [
    25		85	140	90	0;
    18.5	0	110	60	170;
    25		90	140	90	0;
    18.5	0	110	60	170];

serum_proteins_limits = [
    8.3	5.3;
    6.7	3.8;
    8.3	5.3;
    6.7	3.8];

protein_fraction_limits = [
    72	3	9	11	20;
    62	2	5	7	11;
    72	3	9	11	20;
    62	2	5	7	11];

% with the new limits for columns 14 and 15 (after 2006/04)
liver_bile_system_limits = [
   1.2		0.2		1		40		45		240		325		2	65		62.4	0	18.4	0		81 		493 		80		4		12;
   0.2		0		0.2		10		5		120		100		0	26.3	34.6	0	0		0		45 		234 		0		0		2;
   1.2		0.2		1		40		45		240		325		2	65		62.4	0	18.4	0		61 		452 		30		4		12;
   0.2		0		0.2		10		5		120		100		0	26.3	34.6	0	0		0		37 		200 		0		0		2];

renal_function_limits= [
    20	1.04	7;
    8	0.61	3.8;
    20	0.79	7;
    8	0.47	2.5];

% with the new limits for column 1 (after 2006/04)
pancreas_function_limits = [
   122      35;
   40 		5;
   122 		35;
   40 		5];

inorganic_ion_metabolism_limits = [
    147		5		108		2.5		10.4	4.5;
    137		3.5		98		1.9		8.4		2.5;
    147		5		108		2.5		10.4	4.5;
    137		3.5		98		1.9		8.4		2.5];

iron_metabolism_limits = [
    200		425		261		2;
    50		270		18.6	0;
    180		440		64.2	2;
    40		270		4		0];

lipid_metabolism_limits = [
    149	219	85	280	0.9;
    30	120	40	150	0.1;
    149	219	85	280	0.9;
    30	120	40	150	0.1];


lipoprotein_limits = [
    20	69	50	0	155	109	4.3	30	7.5	0.86;
    5	44	22	0	119	73	2.7	0	0	0.5;
    17	65	50	0	165	101	4.6	30	7.5	0.86;
    4	42	22	0	126	66	2.8	0	0	0.5];

sugar_metabolism_limits = [
    109	5.8;
    70	4.3;
    109	5.8;
    70	4.3];

muscle_metabolism_limits = [
    270	5.2;
    60	0;
    150	5.2;
    40	0];

auto_immune_limits = [
    20	48	135	35;
    0	29	65	13;
    20	48	135	35;
    0	29	65	13];


inflamation_limits = [
    0.3;
    0;
    0.3;
    0];


enzyme_limits = [
    14.3;
    0;
    14.3;
    0];

infection_limits = [
    10	10	10;
    0	0	0;
    10	10	10;
    0	0	0];

blood_general_limits = [
    9	5.7	17.5	52.4	102	34	35.1	34	75	8	2	10	49;
    3.3	4.3	13.5	39.7	85	28	30.2	14	40	0	0	2	18;
    9	5	15	45	102	34	35.1	34	75	8	2	10	49;
    3.3	3.8	11.3	34.8	85	28	30.2	14	40	0	0	2	18];


cell_mediated_immunity_limits = [
    2564	90	663	30	225;
    605	70	70	7	105;
    2564	90	663	30	225;
    605	70	70	7	105];

serum_tumor_marker_limits_old = [
    5	37	500	40	38	7	160	27	12	46	1.5	3.5	4	4	70	35	45	8	5.5	20.5	1.9	50	75	5	10000	10000	10000	-1	75	1041	500;
    0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	8.6		0.9	0	0	0	70.1	20		3.1		-1	45	431		0;
    5	37	500	40	38	7	160	27	12	46	1.5	3.5	4	4	70	35	45	8	5.5	20.5	1.9	50	75	5	10000	10000	10000	-1	75	1041	500;
    0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	8.6		0.9	0	0	0	70.1	20		3.1		-1	45	431		0];

% after I position a Gaussian around each of -1, 0 , +1, +2 at the 28th
% column, i change the limits from (-1,-1) to (-1.5, -0.5).
serum_tumor_marker_limits = [
    5	37	500	40	38	7	160	27	12	46	1.5	3.5	4	4	70	35	45	8	5.5	20.5	1.9	50	75	5	10000	10000	10000	-0.5	75	1041	500;
    0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	8.6		0.9	0	0	0	70.1	20		3.1		-1.5	45	431		0;
    5	37	500	40	38	7	160	27	12	46	1.5	3.5	4	4	70	35	45	8	5.5	20.5	1.9	50	75	5	10000	10000	10000	-0.5	75	1041	500;
    0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	8.6		0.9	0	0	0	70.1	20		3.1		-1.5	45	431		0];


tumor_marker_urine_limits = [
    200	45	316;
    0	9	0;
    200	45	316;
    0	0	0];

urine_general_limits_old = [
   1.03	    8	-1	-1	-1	 0	-1	-1	-1	 1	1	1  -1	 -1;
   1.006	4.5	-1	-1	-1	 0	-1	-1	-1	 0	0 	0  -1	 -1;
   1.03	    8	-1	-1	-1	 0	-1	-1	-1	 1	1	1  -1	 -1;
   1.006	4.5	-1	-1	-1	 0	-1	-1	-1	 0	0 	0  -1	 -1];

% after I position a Gaussian around each of -1, 0 , +1, +2 at columns 3-9
% I change the limits from (-1,-1) to (-1.5, -0.5). the liits for columns
% 10-12 are the same, i.e "less than 1"
urine_general_limits = [
   1.03	    8	-0.5	-0.5	-0.5	 -0.5	-0.5	-0.5	-0.5	 1	1	1  -0.5	 -0.5;
   1.006	4.5	-1.5	-1.5	-1.5	 0.5	-1.5	-1.5	-1.5	 0	0 	0  -1.5	 -1.5;
   1.03	    8	-0.5	-0.5	-0.5	 -0.5	-0.5	-0.5	-0.5	 1	1	1  -0.5	 -0.5;
   1.006	4.5	-1.5	-1.5	-1.5	 0.5	-1.5	-1.5	-1.5	 0	0 	0  -1.5	 -1.5];

save( '../data/mat/limits', ...
    'auto_immune_limits'  ,                 ...
    'blood_general_limits' ,                ...
    'body_measures_limits'  ,               ...
    'cell_mediated_immunity_limits' ,       ...
    'enzyme_limits'   ,                     ...
    'infection_limits'  ,                   ...
    'inflamation_limits'   ,                ...
    'inorganic_ion_metabolism_limits'  ,    ...
    'iron_metabolism_limits'   ,            ...
    'lipid_metabolism_limits',              ...
    'lipoprotein_limits'   ,                ...
    'muscle_metabolism_limits' ,            ...
    'protein_fraction_limits' ,             ...   
    'liver_bile_system_limits',             ...
    'renal_function_limits'  ,              ...   
    'pancreas_function_limits',             ...
    'serum_proteins_limits'   ,             ...
    'serum_tumor_marker_limits'  ,          ...
    'sugar_metabolism_limits'    ,          ...
    'tumor_marker_urine_limits',            ...
    'urine_general_limits');