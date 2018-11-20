clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load all test values
load(		'../data/mat/auto_immune');
load(		'../data/mat/blood_general');
load(		'../data/mat/cell_mediated_immunity');
load(		'../data/mat/enzyme');
load(		'../data/mat/infection');
load(		'../data/mat/inflamation');
load(		'../data/mat/inorganic_ion_metabolism');
load(		'../data/mat/iron_metabolism');
load(		'../data/mat/lipid_metabolism');
load(		'../data/mat/lipoprotein');
load(		'../data/mat/liver_bile_system');
load(		'../data/mat/muscle_metabolism');
load(		'../data/mat/pancreas_function');
load(		'../data/mat/protein_fraction');
load(		'../data/mat/renal_function');
load(		'../data/mat/serum_proteins');
load(		'../data/mat/serum_tumor_marker');
load(		'../data/mat/sugar_metabolism');
load(		'../data/mat/tumor_marker_urine');
load(       '../data/mat/urine_general');

% eliminate the "not estimated" columns
all_test_values = [...
    auto_immune, blood_general, cell_mediated_immunity, enzyme,...
    infection, inflamation, inorganic_ion_metabolism, iron_metabolism,...
    lipid_metabolism, lipoprotein, liver_bile_system, muscle_metabolism,...
    pancreas_function, protein_fraction, renal_function, serum_proteins,...
    serum_tumor_marker, sugar_metabolism, tumor_marker_urine, urine_general];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load all test values running average 
load(		'../data/mat/auto_immune_running_avg');
load(		'../data/mat/blood_general_running_avg');
load(		'../data/mat/cell_mediated_immunity_running_avg');
load(		'../data/mat/enzyme_running_avg');
load(		'../data/mat/infection_running_avg');
load(		'../data/mat/inflamation_running_avg');
load(		'../data/mat/inorganic_ion_metabolism_running_avg');
load(		'../data/mat/iron_metabolism_running_avg');
load(		'../data/mat/lipid_metabolism_running_avg');
load(		'../data/mat/lipoprotein_running_avg');
load(		'../data/mat/liver_bile_system_running_avg');
load(		'../data/mat/muscle_metabolism_running_avg');
load(		'../data/mat/pancreas_function_running_avg');
load(		'../data/mat/protein_fraction_running_avg');
load(		'../data/mat/renal_function_running_avg');
load(		'../data/mat/serum_proteins_running_avg');
load(		'../data/mat/serum_tumor_marker_running_avg');
load(		'../data/mat/sugar_metabolism_running_avg');
load(		'../data/mat/tumor_marker_urine_running_avg');
load(       '../data/mat/urine_general_running_avg');

% eliminate the "not estimated" columns
all_test_values_running_avg = [...
    auto_immune_running_avg, blood_general_running_avg, cell_mediated_immunity_running_avg, enzyme_running_avg,...
    infection_running_avg, inflamation_running_avg, inorganic_ion_metabolism_running_avg, iron_metabolism_running_avg,...
    lipid_metabolism_running_avg, lipoprotein_running_avg, liver_bile_system_running_avg, muscle_metabolism_running_avg,...
    pancreas_function_running_avg, protein_fraction_running_avg, renal_function_running_avg, serum_proteins_running_avg,...
    serum_tumor_marker_running_avg, sugar_metabolism_running_avg, tumor_marker_urine_running_avg, urine_general_running_avg];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load all test states individual
load(		'../data/mat/auto_immune_states');
load(		'../data/mat/blood_general_states');
load(		'../data/mat/cell_mediated_immunity_states');
load(		'../data/mat/enzyme_states');
load(		'../data/mat/infection_states');
load(		'../data/mat/inflamation_states');
load(		'../data/mat/inorganic_ion_metabolism_states');
load(		'../data/mat/iron_metabolism_states');
load(		'../data/mat/lipid_metabolism_states');
load(		'../data/mat/lipoprotein_states');
load(		'../data/mat/liver_bile_system_states');
load(		'../data/mat/muscle_metabolism_states');
load(		'../data/mat/pancreas_function_states');
load(		'../data/mat/protein_fraction_states');
load(		'../data/mat/renal_function_states');
load(		'../data/mat/serum_proteins_states');
load(		'../data/mat/serum_tumor_marker_states');
load(		'../data/mat/sugar_metabolism_states');
load(		'../data/mat/tumor_marker_urine_states');
load(       '../data/mat/urine_general_states');

% eliminate the "not estimated" columns
all_test_states = [...
    auto_immune_states, blood_general_states, cell_mediated_immunity_states, enzyme_states,...
    infection_states, inflamation_states, inorganic_ion_metabolism_states, iron_metabolism_states,...
    lipid_metabolism_states, lipoprotein_states, liver_bile_system_states, muscle_metabolism_states,...
    pancreas_function_states, protein_fraction_states, renal_function_states, serum_proteins_states,...
    serum_tumor_marker_states, sugar_metabolism_states, tumor_marker_urine_states, urine_general_states];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load all test states sliding
load(		'../data/mat/auto_immune_states_sliding');
load(		'../data/mat/blood_general_states_sliding');
load(		'../data/mat/cell_mediated_immunity_states_sliding');
load(		'../data/mat/enzyme_states_sliding');
load(		'../data/mat/infection_states_sliding');
load(		'../data/mat/inflamation_states_sliding');
load(		'../data/mat/inorganic_ion_metabolism_states_sliding');
load(		'../data/mat/iron_metabolism_states_sliding');
load(		'../data/mat/lipid_metabolism_states_sliding');
load(		'../data/mat/lipoprotein_states_sliding');
load(		'../data/mat/liver_bile_system_states_sliding');
load(		'../data/mat/muscle_metabolism_states_sliding');
load(		'../data/mat/pancreas_function_states_sliding');
load(		'../data/mat/protein_fraction_states_sliding');
load(		'../data/mat/renal_function_states_sliding');
load(		'../data/mat/serum_proteins_states_sliding');
load(		'../data/mat/serum_tumor_marker_states_sliding');
load(		'../data/mat/sugar_metabolism_states_sliding');
load(		'../data/mat/tumor_marker_urine_states_sliding');
load(       '../data/mat/urine_general_states_sliding');

% eliminate the "not estimated" columns
all_test_states_sliding = [...
    auto_immune_states_sliding, blood_general_states_sliding, cell_mediated_immunity_states_sliding, enzyme_states_sliding,...
    infection_states_sliding, inflamation_states_sliding, inorganic_ion_metabolism_states_sliding, iron_metabolism_states_sliding,...
    lipid_metabolism_states_sliding, lipoprotein_states_sliding, liver_bile_system_states_sliding, muscle_metabolism_states_sliding,...
    pancreas_function_states_sliding, protein_fraction_states_sliding, renal_function_states_sliding, serum_proteins_states_sliding,...
    serum_tumor_marker_states_sliding, sugar_metabolism_states_sliding, tumor_marker_urine_states_sliding, urine_general_states_sliding];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

is_source_low_cost = [...
...% 	01. auto_immune:
0,...% 		1. RF (U/ml)	
0,...% 		2. serum complement value	
0,...% 		3. C3 (mg/dl)	
0,...% 		4. C4 (mg/dl)
...% 	02. blood_general   
1,...% 		1*. WBC (10^3/microl)	
1,...% 		2*. RBC (10^6/microl)	
1,...% 		3*. Hb (g/dl)	
1,...% 		4*. Ht (,...%)	
1,...% 		5*. MCV (fl)	
1,...% 		6*. MCH (pg)	
1,...% 		7*. MCHC (g/dl)	
0,...% 		8!. Thrombocites number 
0,...% 		9. Neutrophil (,...%)	
0,...% 		10. Eosinophils(,...%)	
0,...% 		11. Basophil (,...%)	
0,...% 		12. Monocytes (,...%)	
0,...% 		13. Lymphocytes(,...%)
...% 	04. cell_mediated_immunity  
0,...% 		1. T cell number 	
0,...% 		2#. T cell CD2 (,...%)	
0,...% 		3. B cell number 	 
0,...% 		4. B cell CD20 (,...%)	
0,...% 		5. S.I.
...% 	05. enzyme    
1,...% 		1@. acid phosphatase	
...% 	07. infection   
0,...% 		1!. EBV-EADR (IgG)	
0,...% 		2!. EBV-EBNA	
0,...% 		3. H pylori IgG antibody
...% 	08. inflamation      
0,...% 		1. CRP (mg/dl)	
...% 	09. inorganic_ion_metabolism   
1,...% 		1@. Na (mEq/l)	
1,...% 		2@. K (mEq/l)	
1,...% 		3@. Cl (mEq/l)	
1,...% 		4@. Mg (mEq/l)	
1,...% 		5@. Ca (mg/dl)	
1,...% 		6@. P (mg/dl)
...% 	10. iron_methabolism       
1,...% 		1@. Fe (microg/dl)	
1,...% 		2@. TIBC (microg/dl)	
0,...% 		3. ferritin (ng/ml)	
0,...% 		4. ferritin/Fe rate
...% 	11. lipid_metabolism   
1,...% 		1@. neutral fat (mg/dl)	
1,...% 		2@. total cholesterol (mg/dl)	
1,...% 		3@. HDL cholesterol (mg/dl)
1,...% 		4@. Phospholipid (mg/dl)	
1,...% 		5@. free fatty acids (mEq/l),
...% 	12. liporotein                 
0,...% 		1. VLDL lipoproteins ratio (,...%)	
0,...% 		2. LDL lipoproteins ratio (,...%)	
0,...% 		3. HDL lipoproteins ratio(,...%)	
0,...% 		4#. IDL lipoproteins ratio	
0,...% 		5. apolipoprotein A1 (mg/dl)	
0,...% 		6#. apolipoprotein B (mg/dl)	
0,...% 		7. apolipoprotein E (mg/dl)	
0,...% 		8. lipoprotein(a) (mg/dl)	
0,...% 		9. RLP cholesterol (mg/dl)	
0,...% 		10. Apolipoprotein ratio B/A1
...% 	13. liver_bile_system      
1,...% 		1@. total bilirubin (mg/dl)	
0,...% 		2!. direct bilirubin(mg/dl)	
0,...% 		3!. indirect bilirubin (mg/dl)	
1,...% 		4@. AST (U/l)	
1,...% 		5@. ALT (U/l)	
0,...% 		6@$. LDH (U/l)	now i dont use this in estimation
1,...% 		7@. ALP (U/l)	
0,...% 		8. ALP1-kind fraction(%)	
0,...% 		9. ALP2-kind fraction(%)	
0,...% 		10. ALP3-kind fraction(%)	
0,...% 		11. ALP4-kind fraction(%)	
0,...% 		12. ALP5-kind fraction(%)	
0,...% 		13. ALP6-kind fraction (%)	
1,...% 		14@. LAP (U/l)	
1,...% 		15@. Cholinesterase (U/I)	
1,...% 		16@. gamma-GTP (U/I)	
1,...% 		17@. TTT (U)	
1,...% 		18@. ZTT (U)
...% 	14. muscle_metabolism     
1,...% 		1@. CK (U/l)	
1,...% 		2@. CK-MB (U/l)
...% 	15. pancreas_function  
1,...% 		1@. serum amylase (U/l)	
0,...% 		2. lipase (U/l)
...% 	16. protein_fraction 
0,...% 		1. albumin fraction (%)	
0,...% 		2. alpha-1 globulin fraction (%)	
0,...% 		3. alpha-2 globulin fraction (%)	
0,...% 		4. beta globulin fraction (%)	
0,...% 		5. gamma globulin fraction (%)
...% 	18. renal_function   
1,...% 		1@. blood urea nitrogen (mg/dl)
1,...% 		2@. creatin in blood (mg/dl)	
1,...% 		3@. uric acid level blood (mg/dl)
...% 	19. serum_proteins     
1,...% 		1@. total protein (g/dl)	
1,...% 		2@. albumin(g/dl)
...% 	20. serum_tumor_marker  	
0,...% 		1. CEA (ng/ml)	
0,...% 		2. CA19-9 (U/ml)	
0,...% 		3!. IAP (É g/ml)	
0,...% 		4. PIVKA-II (mAU/ml)	
0,...% 		5. SLX (U/ml)	
0,...% 		6. NCC-ST-439 (U/ml)	
0,...% 		7. BCA225 (U/ml)	
0,...% 		8. CA15-3 (U/ml)	
0,...% 		9#. NSE (ng/ml)	
0,...% 		10. ProGRP (pg/ml)	
0,...% 		11. SCC (ng/ml)	
0,...% 		12. CYFRA (ng/ml)	
0,...% 		13. Gamma-seminoprotein(ng/ml)	
0,...% 		14. PSA (ng/ml)	
0,...% 		15. TPA (U/l)	
0,...% 		16. CA125 (U/ml)	
0,...% 		17. sialyl Tn antigen(U/ml)	
0,...% 		18. CA72-4 (U/ml)	
0,...% 		19. ICTP (ng/ml)	
0,...% 		20. ADA (IU/l)	
0,...% 		21. Beta 2 microglobulin (mg/l)	
0,...% 		22. Hyaluronic acid (ng/ml)	
0,...% 		23. BFP (ng/ml)	
0,...% 		24#. TK (U/l)	
1,...% 		25. Pepsinogen I (ug/l)	
0,...% 		26. Pepsinogen II (ug/l)	
0,...% 		27. Pepsinogen I/II ratio	
0,...% 		28#$. Pepsinogen total factor	
0,...% 		29!. Sialic acid (mg/dl)	 
0,...% 		30. Vitamin A	
0,...% 		31. KL-6 (U/ml)
...% 	21. sugar_metabolism        
1,...% 		1@. blood glucose (mg/dl)	
0,...% 		2. HbA1c (,...%)
...% 	22. tumor_marker_urine      
0,...% 		1. uric beta 2 microglobulin (É g/l)	
0,...% 		2!. urine polyamin (É  mol/g ?ECRE)	
0,...% 		3!. Urine Diacetylspermin(nmol/g?Ecre)
...% 	23. urine_general
1,...% 		1+. Urine specific gravity	
1,...% 		2+. Urine pH	
1,...% 		3+. Urine proteins	not use(+- conversion) now i do not use it in estimation
1,...% 		4+. Urine glucose	(+- conversion) now i do not use it in estimation
1,...% 		5+. Urine occult blood reaction	(+- conversion) now i do not use it in estimation
1,...% 		6+. Urinary urobilinogen	(+- conversion) now i do not use it in estimation
0,...% 		7. Urine urobilinuria	
1,...% 		8+. Urine acetone body	( i converted (-) to -1,  (+-) to 0,  (+) to 1,  (+2) to 2,  (+3) to 3,  (+4) to 4,  (+5) to 5) now i do not use it in estimation
1,...% 		9+. Urine bilirubin	(i converted (-) to -1, (+) to 1) now i do not use it in estimation
0,...% 		10. Red blood cells in urinary sediment	
0,...% 		11. White blood cells in urinary sediment	
0,...% 		12. Urinary sediment squamous cell	
0,...% 		13!. Mucus cord (system) urinary sediment	
0,...% 		14. Urinary sediment bacteria
        ];


is_source_medium_cost = [...
...% 	01. auto_immune:
0,...% 		1. RF (U/ml)	
0,...% 		2. serum complement value	
0,...% 		3. C3 (mg/dl)	
0,...% 		4. C4 (mg/dl)
...% 	02. blood_general   
0,...% 		1*. WBC (10^3/microl)	
0,...% 		2*. RBC (10^6/microl)	
0,...% 		3*. Hb (g/dl)	
0,...% 		4*. Ht (,...%)	
0,...% 		5*. MCV (fl)	
0,...% 		6*. MCH (pg)	
0,...% 		7*. MCHC (g/dl)	
0,...% 		8!. Thrombocites number 
0,...% 		9. Neutrophil (,...%)	
0,...% 		10. Eosinophils(,...%)	
0,...% 		11. Basophil (,...%)	
0,...% 		12. Monocytes (,...%)	
0,...% 		13. Lymphocytes(,...%)
...% 	04. cell_mediated_immunity  
0,...% 		1. T cell number 	
1,...% 		2#. T cell CD2 (,...%)	
0,...% 		3. B cell number 	 
0,...% 		4. B cell CD20 (,...%)	
0,...% 		5. S.I.
...% 	05. enzyme    
0,...% 		1@. acid phosphatase	
...% 	07. infection   
0,...% 		1!. EBV-EADR (IgG)	
0,...% 		2!. EBV-EBNA	
0,...% 		3. H pylori IgG antibody
...% 	08. inflamation      
0,...% 		1. CRP (mg/dl)	
...% 	09. inorganic_ion_metabolism   
0,...% 		1@. Na (mEq/l)	
0,...% 		2@. K (mEq/l)	
0,...% 		3@. Cl (mEq/l)	
0,...% 		4@. Mg (mEq/l)	
0,...% 		5@. Ca (mg/dl)	
0,...% 		6@. P (mg/dl)
...% 	10. iron_methabolism       
0,...% 		1@. Fe (microg/dl)	
0,...% 		2@. TIBC (microg/dl)	
0,...% 		3. ferritin (ng/ml)	
0,...% 		4. ferritin/Fe rate
...% 	11. lipid_metabolism   
0,...% 		1@. neutral fat (mg/dl)	
0,...% 		2@. total cholesterol (mg/dl)	
0,...% 		3@. HDL cholesterol (mg/dl)
0,...% 		4@. Phospholipid (mg/dl)	
0,...% 		5@. free fatty acids (mEq/l),
...% 	12. liporotein                 
0,...% 		1. VLDL lipoproteins ratio (,...%)	
0,...% 		2. LDL lipoproteins ratio (,...%)	
0,...% 		3. HDL lipoproteins ratio(,...%)	
1,...% 		4#. IDL lipoproteins ratio	
0,...% 		5. apolipoprotein A1 (mg/dl)	
1,...% 		6#. apolipoprotein B (mg/dl)	
0,...% 		7. apolipoprotein E (mg/dl)	
0,...% 		8. lipoprotein(a) (mg/dl)	
0,...% 		9. RLP cholesterol (mg/dl)	
0,...% 		10. Apolipoprotein ratio B/A1
...% 	13. liver_bile_system      
0,...% 		1@. total bilirubin (mg/dl)	
0,...% 		2!. direct bilirubin(mg/dl)	
0,...% 		3!. indirect bilirubin (mg/dl)	
0,...% 		4@. AST (U/l)	
0,...% 		5@. ALT (U/l)	
0,...% 		6@$. LDH (U/l)	now i dont use this in estimation
0,...% 		7@. ALP (U/l)	
0,...% 		8. ALP1-kind fraction(%)	
0,...% 		9. ALP2-kind fraction(%)	
0,...% 		10. ALP3-kind fraction(%)	
0,...% 		11. ALP4-kind fraction(%)	
0,...% 		12. ALP5-kind fraction(%)	
0,...% 		13. ALP6-kind fraction (%)	
0,...% 		14@. LAP (U/l)	
0,...% 		15@. Cholinesterase (U/I)	
0,...% 		16@. gamma-GTP (U/I)	
0,...% 		17@. TTT (U)	
0,...% 		18@. ZTT (U)
...% 	14. muscle_metabolism     
0,...% 		1@. CK (U/l)	
0,...% 		2@. CK-MB (U/l)
...% 	15. pancreas_function  
0,...% 		1@. serum amylase (U/l)	
0,...% 		2. lipase (U/l)
...% 	16. protein_fraction 
0,...% 		1. albumin fraction (%)	
0,...% 		2. alpha-1 globulin fraction (%)	
0,...% 		3. alpha-2 globulin fraction (%)	
0,...% 		4. beta globulin fraction (%)	
0,...% 		5. gamma globulin fraction (%)
...% 	18. renal_function   
0,...% 		1@. blood urea nitrogen (mg/dl)
0,...% 		2@. creatin in blood (mg/dl)	
0,...% 		3@. uric acid level blood (mg/dl)
...% 	19. serum_proteins     
0,...% 		1@. total protein (g/dl)	
0,...% 		2@. albumin(g/dl)
...% 	20. serum_tumor_marker  	
0,...% 		1. CEA (ng/ml)	
0,...% 		2. CA19-9 (U/ml)	
0,...% 		3!. IAP (É g/ml)	
0,...% 		4. PIVKA-II (mAU/ml)	
0,...% 		5. SLX (U/ml)	
0,...% 		6. NCC-ST-439 (U/ml)	
0,...% 		7. BCA225 (U/ml)	
0,...% 		8. CA15-3 (U/ml)	
1,...% 		9#. NSE (ng/ml)	
0,...% 		10. ProGRP (pg/ml)	
0,...% 		11. SCC (ng/ml)	
0,...% 		12. CYFRA (ng/ml)	
0,...% 		13. Gamma-seminoprotein(ng/ml)	
0,...% 		14. PSA (ng/ml)	
0,...% 		15. TPA (U/l)	
0,...% 		16. CA125 (U/ml)	
0,...% 		17. sialyl Tn antigen(U/ml)	
0,...% 		18. CA72-4 (U/ml)	
0,...% 		19. ICTP (ng/ml)	
0,...% 		20. ADA (IU/l)	
0,...% 		21. Beta 2 microglobulin (mg/l)	
0,...% 		22. Hyaluronic acid (ng/ml)	
0,...% 		23. BFP (ng/ml)	
1,...% 		24#. TK (U/l)	
0,...% 		25. Pepsinogen I (ug/l)	
0,...% 		26. Pepsinogen II (ug/l)	
1,...% 		27. Pepsinogen I/II ratio	
0,...% 		28#$. Pepsinogen total factor	
0,...% 		29!. Sialic acid (mg/dl)	 
0,...% 		30. Vitamin A	
0,...% 		31. KL-6 (U/ml)
...% 	21. sugar_metabolism        
0,...% 		1@. blood glucose (mg/dl)	
0,...% 		2. HbA1c (,...%)
...% 	22. tumor_marker_urine      
0,...% 		1. uric beta 2 microglobulin (É g/l)	
0,...% 		2!. urine polyamin (É  mol/g ?ECRE)	
0,...% 		3!. Urine Diacetylspermin(nmol/g?Ecre)
...% 	23. urine_general
0,...% 		1+. Urine specific gravity	
0,...% 		2+. Urine pH	
0,...% 		3+. Urine proteins	not use(+- conversion) now i do not use it in estimation
0,...% 		4+. Urine glucose	(+- conversion) now i do not use it in estimation
0,...% 		5+. Urine occult blood reaction	(+- conversion) now i do not use it in estimation
0,...% 		6+. Urinary urobilinogen	(+- conversion) now i do not use it in estimation
0,...% 		7. Urine urobilinuria	
0,...% 		8+. Urine acetone body	( i converted (-) to -1,  (+-) to 0,  (+) to 1,  (+2) to 2,  (+3) to 3,  (+4) to 4,  (+5) to 5) now i do not use it in estimation
0,...% 		9+. Urine bilirubin	(i converted (-) to -1, (+) to 1) now i do not use it in estimation
0,...% 		10. Red blood cells in urinary sediment	
0,...% 		11. White blood cells in urinary sediment	
0,...% 		12. Urinary sediment squamous cell	
0,...% 		13!. Mucus cord (system) urinary sediment	
0,...% 		14. Urinary sediment bacteria
        ];

is_estimated = [
...% 	11. auto_immune:
1,...% 		1. RF (U/ml)	
1,...% 		2. serum complement value	
1,...% 		3. C3 (mg/dl)	
1,...% 		4. C4 (mg/dl)
...% 	12. blood_general   
1,...% 		1*. WBC (10^3/microl)	
1,...% 		2*. RBC (10^6/microl)	
1,...% 		3*. Hb (g/dl)	
1,...% 		4*. Ht (,...%)	
1,...% 		5*. MCV (fl)	
1,...% 		6*. MCH (pg)	10
1,...% 		7*. MCHC (g/dl)	
0,...% 		8!. Thrombocites number 
1,...% 		9. Neutrophil (,...%)	
1,...% 		10. Eosinophils(,...%)	
1,...% 		11. Basophil (,...%)	
1,...% 		12. Monocytes (,...%)	
1,...% 		13. Lymphocytes(,...%)
...% 	04. cell_mediated_immunity  
1,...% 		1. T cell number 	
1,...% 		2#. T cell CD2 (,...%)	
1,...% 		3. B cell number 	 20
1,...% 		4. B cell CD20 (,...%)	
1,...% 		5. S.I.
...% 	05. enzyme    
1,...% 		1@. acid phosphatase	
...% 	07. infection   
0,...% 		1!. EBV-EADR (IgG)	
0,...% 		2!. EBV-EBNA	
1,...% 		3. H pylori IgG antibody
...% 	08. inflamation      
1,...% 		1. CRP (mg/dl)	
...% 	09. inorganic_ion_metabolism   
1,...% 		1@. Na (mEq/l)	
1,...% 		2@. K (mEq/l)	
1,...% 		3@. Cl (mEq/l)	30
1,...% 		4@. Mg (mEq/l)	
1,...% 		5@. Ca (mg/dl)	
1,...% 		6@. P (mg/dl)      
...% 	10. iron_methabolism       
1,...% 		1@. Fe (microg/dl)	
1,...% 		2@. TIBC (microg/dl)	
1,...% 		3. ferritin (ng/ml)	
1,...% 		4. ferritin/Fe rate
...% 	11. lipid_metabolism   
1,...% 		1@. neutral fat (mg/dl)	
1,...% 		2@. total cholesterol (mg/dl)	
1,...% 		3@. HDL cholesterol (mg/dl)     40
1,...% 		4@. Phospholipid (mg/dl)	
1,...% 		5@. free fatty acids (mEq/l),
...% 	12. liporotein                 
1,...% 		1. VLDL lipoproteins ratio (,...%)         
1,...% 		2. LDL lipoproteins ratio (,...%)	
1,...% 		3. HDL lipoproteins ratio(,...%)	
1,...% 		4#. IDL lipoproteins ratio	
1,...% 		5. apolipoprotein A1 (mg/dl)	
1,...% 		6#. apolipoprotein B (mg/dl)	
1,...% 		7. apolipoprotein E (mg/dl)	
1,...% 		8. lipoprotein(a) (mg/dl)           50
1,...% 		9. RLP cholesterol (mg/dl)	
1,...% 		10. Apolipoprotein ratio B/A1
...% 	13. liver_bile_system      
1,...% 		1@. total bilirubin (mg/dl)       
0,...% 		2!. direct bilirubin(mg/dl)	
0,...% 		3!. indirect bilirubin (mg/dl)	
1,...% 		4@. AST (U/l)	
1,...% 		5@. ALT (U/l)	
0,...% 		6@$. LDH (U/l)	now i dont use this in estimation
1,...% 		7@. ALP (U/l)	
1,...% 		8. ALP1-kind fraction(%)            60
1,...% 		9. ALP2-kind fraction(%)	
1,...% 		10. ALP3-kind fraction(%)	
1,...% 		11. ALP4-kind fraction(%)	
1,...% 		12. ALP5-kind fraction(%)	
1,...% 		13. ALP6-kind fraction (%)	
1,...% 		14@. LAP (U/l)          
1,...% 		15@. Cholinesterase (U/I)	
1,...% 		16@. gamma-GTP (U/I)	
1,...% 		17@. TTT (U)	
1,...% 		18@. ZTT (U)            70
...% 	14. muscle_metabolism     
1,...% 		1@. CK (U/l)	
1,...% 		2@. CK-MB (U/l)
...% 	15. pancreas_function  
1,...% 		1@. serum amylase (U/l)	
1,...% 		2. lipase (U/l)
...% 	16. protein_fraction 
1,...% 		1. albumin fraction (%)	
1,...% 		2. alpha-1 globulin fraction (%)           
1,...% 		3. alpha-2 globulin fraction (%)	
1,...% 		4. beta globulin fraction (%)	
1,...% 		5. gamma globulin fraction (%)
...% 	18. renal_function   
1,...% 		1@. blood urea nitrogen (mg/dl)     80
1,...% 		2@. creatin in blood (mg/dl)	
1,...% 		3@. uric acid level blood (mg/dl)
...% 	19. serum_proteins     
1,...% 		1@. total protein (g/dl)	
1,...% 		2@. albumin(g/dl)
...% 	20. serum_tumor_marker  	
1,...% 		1. CEA (ng/ml)	
1,...% 		2. CA19-9 (U/ml)           
0,...% 		3!. IAP (É g/ml)	
1,...% 		4. PIVKA-II (mAU/ml)	
1,...% 		5. SLX (U/ml)	
1,...% 		6. NCC-ST-439 (U/ml)        90
1,...% 		7. BCA225 (U/ml)	
1,...% 		8. CA15-3 (U/ml)	
1,...% 		9#. NSE (ng/ml)	
1,...% 		10. ProGRP (pg/ml)	
1,...% 		11. SCC (ng/ml)	
1,...% 		12. CYFRA (ng/ml)	
1,...% 		13. Gamma-seminoprotein(ng/ml)          
1,...% 		14. PSA (ng/ml)	
1,...% 		15. TPA (U/l)	
1,...% 		16. CA125 (U/ml)            100	
1,...% 		17. sialyl Tn antigen(U/ml)	
1,...% 		18. CA72-4 (U/ml)	
1,...% 		19. ICTP (ng/ml)	
1,...% 		20. ADA (IU/l)	
1,...% 		21. Beta 2 microglobulin (mg/l)	
1,...% 		22. Hyaluronic acid (ng/ml)	
1,...% 		23. BFP (ng/ml)               
1,...% 		24#. TK (U/l)	
1,...% 		25. Pepsinogen I (ug/l)	
1,...% 		26. Pepsinogen II (ug/l)      110                  	
1,...% 		27. Pepsinogen I/II ratio	
0,...% 		28#$. Pepsinogen total factor	
0,...% 		29!. Sialic acid (mg/dl)	 
1,...% 		30. Vitamin A	
1,...% 		31. KL-6 (U/ml)
...% 	21. sugar_metabolism        
1,...% 		1@. blood glucose (mg/dl)	
1,...% 		2. HbA1c (,...%)
...% 	22. tumor_marker_urine      
1,...% 		1. uric beta 2 microglobulin (É g/l)	
0,...% 		2!. urine polyamin (É  mol/g ?ECRE)	
0,...% 		3!. Urine Diacetylspermin(nmol/g?Ecre)       120             
...% 	23. urine_general
1,...% 		1+. Urine specific gravity	
1,...% 		2+. Urine pH	
1,...% 		3+. Urine proteins	not use(+- conversion) now i do not use it in estimation
1,...% 		4+. Urine glucose	(+- conversion) now i do not use it in estimation
1,...% 		5+. Urine occult blood reaction	(+- conversion) now i do not use it in estimation
1,...% 		6+. Urinary urobilinogen	(+- conversion) now i do not use it in estimation
1,...% 		7. Urine urobilinuria	
1,...% 		8+. Urine acetone body	( i converted (-) to -1,  (+-) to 0,  (+) to 1,  (+2) to 2,  (+3) to 3,  (+4) to 4,  (+5) to 5) now i do not use it in estimation
1,...% 		9+. Urine bilirubin	(i converted (-) to -1, (+) to 1) now i do not use it in estimation
1,...% 		10. Red blood cells in urinary sediment         130                     
1,...% 		11. White blood cells in urinary sediment	
1,...% 		12. Urinary sediment squamous cell	
0,...% 		13!. Mucus cord (system) urinary sediment	
1,...% 		14. Urinary sediment bacteria
        ];

is_estimated_low = is_estimated - is_source_low_cost;
is_estimated_low_medium = is_estimated - is_source_low_cost - is_source_medium_cost;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf ('-----------------------------------------\n');
fprintf ('Number of low cost tests: %d\n', sum(is_source_low_cost));
fprintf ('Number of medium cost tests: %d\n', sum(is_source_medium_cost));
fprintf ('Number of estimated tests with low: %d\n', sum(is_estimated_low));
fprintf ('Number of estimated tests with low+medium: %d\n',sum(is_estimated_low_medium));
fprintf ('-----------------------------------------\n');


save ../data/mat/all_test_values all_test_values;
save ../data/mat/all_test_values_running_avg all_test_values_running_avg;
save ../data/mat/all_test_states all_test_states;
save ../data/mat/all_test_states_sliding all_test_states_sliding;
save ../data/mat/is_source_low_cost is_source_low_cost;
save ../data/mat/is_source_medium_cost is_source_medium_cost;
save ../data/mat/is_estimated_low;
save ../data/mat/is_estimated_low_medium;

