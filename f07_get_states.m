%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% This function return the normal/abnormal states. It puts 0 for normal, 1
% for abnormal state. It is denoted with variable b in Sakata's papper.
%
% ONLY OUTSIDE STATES ARE 1.
%
% 2012 10
% Zeynep
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load      ../data/mat/auto_immune;
load      ../data/mat/auto_immune_reference;

auto_immune_states = ones(size(auto_immune)); % abnormal states are 1
auto_immune_states(...
    auto_immune >= auto_immune_min &...
    auto_immune <= auto_immune_max) = 0; % normal states are 0

save( '../data/mat/auto_immune_states', 'auto_immune_states');
clear auto_immune auto_immune_reference auto_immune_states;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load      ../data/mat/blood_general;
load      ../data/mat/blood_general_reference;

blood_general_states = ones(size(blood_general));% abnormal states are 1
blood_general_states(...
    blood_general >= blood_general_min &...
    blood_general <= blood_general_max) = 0;% normal states are 0

save( '../data/mat/blood_general_states', 'blood_general_states');
clear blood_general blood_general_reference blood_general_states;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load      ../data/mat/cell_mediated_immunity;
load      ../data/mat/cell_mediated_immunity_reference;

cell_mediated_immunity_states = ones(size(cell_mediated_immunity));% abnormal states are 1
cell_mediated_immunity_states(...
    cell_mediated_immunity >= cell_mediated_immunity_min &...
    cell_mediated_immunity <= cell_mediated_immunity_max) = 0;% normal states are 0

save( '../data/mat/cell_mediated_immunity_states', 'cell_mediated_immunity_states');
clear cell_mediated_immunity cell_mediated_immunity_reference cell_mediated_immunity_states;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load      ../data/mat/enzyme;
load      ../data/mat/enzyme_reference;

enzyme_states = ones(size(enzyme));% abnormal states are 1
enzyme_states(...
    enzyme >= enzyme_min &...
    enzyme <= enzyme_max) = 0;% normal states are 0

save( '../data/mat/enzyme_states', 'enzyme_states');
clear enzyme enzyme_reference enzyme_states;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load      ../data/mat/infection;
load      ../data/mat/infection_reference;

infection_states = ones(size(infection));% abnormal states are 1
infection_states(...
    infection >= infection_min &...
    infection <= infection_max) = 0;% normal states are 0

save( '../data/mat/infection_states', 'infection_states');
clear infection infection_reference infection_states;

 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load      ../data/mat/inflamation;
load      ../data/mat/inflamation_reference;

inflamation_states = ones(size(inflamation));% abnormal states are 1
inflamation_states(...
    inflamation >= inflamation_min &...
    inflamation <= inflamation_max) = 0;% normal states are 0

save( '../data/mat/inflamation_states', 'inflamation_states');
clear inflamation inflamation_reference inflamation_states;
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load      ../data/mat/inorganic_ion_metabolism;
load      ../data/mat/inorganic_ion_metabolism_reference;

inorganic_ion_metabolism_states = ones(size(inorganic_ion_metabolism));% abnormal states are 1
inorganic_ion_metabolism_states(...
    inorganic_ion_metabolism >= inorganic_ion_metabolism_min &...
    inorganic_ion_metabolism <= inorganic_ion_metabolism_max) = 0;% normal states are 0

save( '../data/mat/inorganic_ion_metabolism_states', 'inorganic_ion_metabolism_states');
clear inorganic_ion_metabolism inorganic_ion_metabolism_reference inorganic_ion_metabolism_states;
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load      ../data/mat/iron_metabolism;
load      ../data/mat/iron_metabolism_reference;

iron_metabolism_states = ones(size(iron_metabolism));% abnormal states are 1
iron_metabolism_states(...
    iron_metabolism >= iron_metabolism_min &...
    iron_metabolism <= iron_metabolism_max) = 0;% normal states are 0

save( '../data/mat/iron_metabolism_states', 'iron_metabolism_states');
clear iron_metabolism iron_metabolism_reference iron_metabolism_states;
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load      ../data/mat/lipid_metabolism;
load      ../data/mat/lipid_metabolism_reference;

lipid_metabolism_states = ones(size(lipid_metabolism));% abnormal states are 1
lipid_metabolism_states(...
    lipid_metabolism >= lipid_metabolism_min &...
    lipid_metabolism <= lipid_metabolism_max) = 0;% normal states are 0

save( '../data/mat/lipid_metabolism_states', 'lipid_metabolism_states');
clear lipid_metabolism lipid_metabolism_reference lipid_metabolism_states;
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load      ../data/mat/lipoprotein;
load      ../data/mat/lipoprotein_reference;

lipoprotein_states = ones(size(lipoprotein));% abnormal states are 1
lipoprotein_states(...
    lipoprotein >= lipoprotein_min &...
    lipoprotein <= lipoprotein_max) = 0;% normal states are 0

save( '../data/mat/lipoprotein_states', 'lipoprotein_states');
clear lipoprotein lipoprotein_reference lipoprotein_states;
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load      ../data/mat/liver_bile_system;
load      ../data/mat/liver_bile_system_reference;

liver_bile_system_states = ones(size(liver_bile_system));% abnormal states are 1
liver_bile_system_states(...
    liver_bile_system >= liver_bile_system_min &...
    liver_bile_system <= liver_bile_system_max) = 0;% normal states are 0

save( '../data/mat/liver_bile_system_states', 'liver_bile_system_states');
clear liver_bile_system liver_bile_system_reference liver_bile_system_states;
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load      ../data/mat/muscle_metabolism;
load      ../data/mat/muscle_metabolism_reference;

muscle_metabolism_states = ones(size(muscle_metabolism));% abnormal states are 1
muscle_metabolism_states(...
    muscle_metabolism >= muscle_metabolism_min &...
    muscle_metabolism <= muscle_metabolism_max) = 0;% normal states are 0

save( '../data/mat/muscle_metabolism_states', 'muscle_metabolism_states');
clear muscle_metabolism muscle_metabolism_reference muscle_metabolism_states;
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load      ../data/mat/pancreas_function;
load      ../data/mat/pancreas_function_reference;

pancreas_function_states = ones(size(pancreas_function));% abnormal states are 1
pancreas_function_states(...
    pancreas_function >= pancreas_function &...
    pancreas_function <= pancreas_function) = 0;% normal states are 0

save( '../data/mat/pancreas_function_states', 'pancreas_function_states');
clear pancreas_function pancreas_function_reference pancreas_function_states;
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load      ../data/mat/protein_fraction;
load      ../data/mat/protein_fraction_reference;

protein_fraction_states = ones(size(protein_fraction));% abnormal states are 1
protein_fraction_states(...
    protein_fraction >= protein_fraction_min &...
    protein_fraction <= protein_fraction_max) = 0;% normal states are 0

save( '../data/mat/protein_fraction_states', 'protein_fraction_states');
clear protein_fraction protein_fraction_reference protein_fraction_states;
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load      ../data/mat/renal_function;
load      ../data/mat/renal_function_reference;

renal_function_states = ones(size(renal_function));% abnormal states are 1
renal_function_states(...
    renal_function >= renal_function_min &...
    renal_function <= renal_function_max) = 0;% normal states are 0

save( '../data/mat/renal_function_states', 'renal_function_states');
clear renal_function renal_function_reference renal_function_states;
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load      ../data/mat/serum_proteins;
load      ../data/mat/serum_proteins_reference;

serum_proteins_states = ones(size(serum_proteins));% abnormal states are 1
serum_proteins_states(...
    serum_proteins >= serum_proteins_min &...
    serum_proteins <= serum_proteins_max) = 0;% normal states are 0

save( '../data/mat/serum_proteins_states', 'serum_proteins_states');
clear serum_proteins serum_proteins_reference serum_proteins_states;

 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load      ../data/mat/serum_tumor_marker;
load      ../data/mat/serum_tumor_marker_reference;

serum_tumor_marker_states = ones(size(serum_tumor_marker));% abnormal states are 1
serum_tumor_marker_states(...
    serum_tumor_marker >= serum_tumor_marker_min &...
    serum_tumor_marker <= serum_tumor_marker_max) = 0;% normal states are 0

save( '../data/mat/serum_tumor_marker_states', 'serum_tumor_marker_states');
clear serum_tumor_marker serum_tumor_marker_reference serum_tumor_marker_states;

 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load      ../data/mat/sugar_metabolism;
load      ../data/mat/sugar_metabolism_reference;

sugar_metabolism_states = ones(size(sugar_metabolism));% abnormal states are 1
sugar_metabolism_states(...
    sugar_metabolism >= sugar_metabolism_min &...
    sugar_metabolism <= sugar_metabolism_max) = 0;% normal states are 0

save( '../data/mat/sugar_metabolism_states', 'sugar_metabolism_states');
clear sugar_metabolism sugar_metabolism_reference sugar_metabolism_states;

 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load      ../data/mat/tumor_marker_urine;
load      ../data/mat/tumor_marker_urine_reference;

tumor_marker_urine_states = ones(size(tumor_marker_urine));% abnormal states are 1
tumor_marker_urine_states(...
    tumor_marker_urine >= tumor_marker_urine_min &...
    tumor_marker_urine <= tumor_marker_urine_max) = 0;% normal states are 0

save( '../data/mat/tumor_marker_urine_states', 'tumor_marker_urine_states');
clear tumor_marker_urine tumor_marker_urine_reference tumor_marker_urine_states;

 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load      ../data/mat/urine_general;
load      ../data/mat/urine_general_reference;

urine_general_states = ones(size(urine_general));% abnormal states are 1
urine_general_states(...
    urine_general >= urine_general_min &...
    urine_general <= urine_general_max) = 0;% normal states are 0

save( '../data/mat/urine_general_states', 'urine_general_states');
clear urine_general urine_general_reference urine_general_states;
