%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% This function checks if the person is male/female 
% then puts the proper upper and lower bounds for that test
%
% 2012 10
% Zeynep
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;

load ../data/mat/gender;
load ../data/mat/blood_general; % only to know size
load ../data/mat/limits;

% min-max values, i.e. limits
auto_immune_min = [];
auto_immune_max = [];

blood_general_min = [];
blood_general_max = [];

body_measures_min = [];
body_measures_max = [];

cell_mediated_immunity_min = [];
cell_mediated_immunity_max = [];

enzyme_min = [];
enzyme_max = [];

infection_min = [];
infection_max = [];

inflamation_min = [];
inflamation_max = [];

inorganic_ion_metabolism_min = [];
inorganic_ion_metabolism_max = [];

iron_methabolism_min = [];
iron_methabolism_max = [];

lipid_metabolism_min = [];
lipid_metabolism_max = [];

lipoprotein_min = [];
lipoprotein_max = [];

liver_bile_system_min = [];
liver_bile_system_max = [];

muscle_metabolism_min = [];
muscle_metabolism_max = [];

pancreas_function_min = [];
pancreas_function_max = [];

protein_fraction_min = [];
protein_fraction_max = [];

renal_function_min = [];
renal_function_max = [];

serum_proteins_min = [];
serum_proteins_max = [];

serum_tumor_marker_min = [];
serum_tumor_marker_max = [];

sugar_metabolism_min = [];
sugar_metabolism_max = [];

tumor_marker_urine_min = [];
tumor_marker_urine_max = [];

urine_general_min = [];
urine_general_max = [];

for i = 1:size(blood_general,1) % only to know the size
    if(gender(i) == 'M')

        auto_immune_max(i, :) = auto_immune_limits(1, :);
        auto_immune_min(i, :) = auto_immune_limits(2, :);

        blood_general_max(i,:) = blood_general_limits(1, :); % male maximum
        blood_general_min(i,:) = blood_general_limits(2, :); % male minimum

        cell_mediated_immunity_max(i, :) = cell_mediated_immunity_limits(1, :);
        cell_mediated_immunity_min(i, :) = cell_mediated_immunity_limits(2, :);

        enzyme_max(i, :) = enzyme_limits(1, :);
        enzyme_min(i, :) = enzyme_limits(2, :);

        infection_max(i, :) = infection_limits(1, :);
        infection_min(i, :) = infection_limits(2, :);

        inflamation_max(i, :) = inflamation_limits(1, :);
        inflamation_min(i, :) = inflamation_limits(2, :);

        inorganic_ion_metabolism_max(i, :) = inorganic_ion_metabolism_limits(1, :);
        inorganic_ion_metabolism_min(i, :) = inorganic_ion_metabolism_limits(2, :);

        iron_metabolism_max(i, :) = iron_metabolism_limits(1, :);
        iron_metabolism_min(i, :) = iron_metabolism_limits(2, :);

        lipid_metabolism_max(i, :) = lipid_metabolism_limits(1, :);
        lipid_metabolism_min(i, :) = lipid_metabolism_limits(2, :);

        lipoprotein_max(i, :) = lipoprotein_limits(1, :);
        lipoprotein_min(i, :) = lipoprotein_limits(2, :);

        liver_bile_system_max(i, :) = liver_bile_system_limits(1, :);
        liver_bile_system_min(i, :) = liver_bile_system_limits(2, :);

        muscle_metabolism_max(i, :) = muscle_metabolism_limits(1, :);
        muscle_metabolism_min(i, :) = muscle_metabolism_limits(2, :);

        pancreas_function_max(i, :) = pancreas_function_limits(1, :);
        pancreas_function_min(i, :) = pancreas_function_limits(2, :);

        protein_fraction_max(i, :) = protein_fraction_limits(1, :);
        protein_fraction_min(i, :) = protein_fraction_limits(2, :);

        renal_function_max(i, :) = renal_function_limits(1, :);
        renal_function_min(i, :) = renal_function_limits(2, :);

        serum_proteins_max(i, :) = serum_proteins_limits(1, :);
        serum_proteins_min(i, :) = serum_proteins_limits(2, :);

        serum_tumor_marker_max(i, :) = serum_tumor_marker_limits(1, :);
        serum_tumor_marker_min(i, :) = serum_tumor_marker_limits(2, :);

        sugar_metabolism_max(i, :) = sugar_metabolism_limits(1, :);
        sugar_metabolism_min(i, :) = sugar_metabolism_limits(2, :);

        tumor_marker_urine_max(i, :) = tumor_marker_urine_limits(1, :);
        tumor_marker_urine_min(i, :) = tumor_marker_urine_limits(2, :);

        urine_general_max(i, :) = urine_general_limits(1, :);
        urine_general_min(i, :) = urine_general_limits(2, :);

    else

        auto_immune_max(i, :) = auto_immune_limits(3, :);
        auto_immune_min(i, :) = auto_immune_limits(4, :);

        blood_general_max(i,:) = blood_general_limits(3, :); % female maximum
        blood_general_min(i,:) = blood_general_limits(4, :); % female minimum

        cell_mediated_immunity_max(i, :) = cell_mediated_immunity_limits(3, :);
        cell_mediated_immunity_min(i, :) = cell_mediated_immunity_limits(4, :);

        enzyme_max(i, :) = enzyme_limits(3, :);
        enzyme_min(i, :) = enzyme_limits(4, :);

        infection_max(i, :) = infection_limits(3, :);
        infection_min(i, :) = infection_limits(4, :);

        inflamation_max(i, :) = inflamation_limits(3, :);
        inflamation_min(i, :) = inflamation_limits(4, :);

        inorganic_ion_metabolism_max(i, :) = inorganic_ion_metabolism_limits(3, :);
        inorganic_ion_metabolism_min(i, :) = inorganic_ion_metabolism_limits(4, :);

        iron_metabolism_max(i, :) = iron_metabolism_limits(3, :);
        iron_metabolism_min(i, :) = iron_metabolism_limits(4, :);

        lipid_metabolism_max(i, :) = lipid_metabolism_limits(3, :);
        lipid_metabolism_min(i, :) = lipid_metabolism_limits(4, :);
        
        lipoprotein_max(i, :) = lipoprotein_limits(3, :);
        lipoprotein_min(i, :) = lipoprotein_limits(4, :);

        liver_bile_system_max(i, :) = liver_bile_system_limits(3, :);
        liver_bile_system_min(i, :) = liver_bile_system_limits(4, :);

        muscle_metabolism_max(i, :) = muscle_metabolism_limits(3, :);
        muscle_metabolism_min(i, :) = muscle_metabolism_limits(4, :);

        pancreas_function_max(i, :) = pancreas_function_limits(3, :);
        pancreas_function_min(i, :) = pancreas_function_limits(4, :);

        protein_fraction_max(i, :) = protein_fraction_limits(3, :);
        protein_fraction_min(i, :) = protein_fraction_limits(4, :);

        renal_function_max(i, :) = renal_function_limits(3, :);
        renal_function_min(i, :) = renal_function_limits(4, :);

        serum_proteins_max(i, :) = serum_proteins_limits(3, :);
        serum_proteins_min(i, :) = serum_proteins_limits(4, :);

        serum_tumor_marker_max(i, :) = serum_tumor_marker_limits(3, :);
        serum_tumor_marker_min(i, :) = serum_tumor_marker_limits(4, :);

        sugar_metabolism_max(i, :) = sugar_metabolism_limits(3, :);
        sugar_metabolism_min(i, :) = sugar_metabolism_limits(4, :);

        tumor_marker_urine_max(i, :) = tumor_marker_urine_limits(3, :);
        tumor_marker_urine_min(i, :) = tumor_marker_urine_limits(4, :);
        
        urine_general_max(i, :) = urine_general_limits(3, :);
        urine_general_min(i, :) = urine_general_limits(4, :);
    end
end

save(      '../data/mat/auto_immune_reference',             	'auto_immune_max',        			'auto_immune_min');
save(      '../data/mat/blood_general_reference',              'blood_general_max',        		'blood_general_min');
save(      '../data/mat/cell_mediated_immunity_reference',     'cell_mediated_immunity_max',       'cell_mediated_immunity_min');
save(      '../data/mat/enzyme_reference',               		'enzyme_max',        				'enzyme_min');
save(      '../data/mat/infection_reference',                	'infection_max',                    'infection_min');
save(      '../data/mat/inflamation_reference',                'inflamation_max',       			'inflamation_min');
save(      '../data/mat/inorganic_ion_metabolism_reference',    'inorganic_ion_metabolism_max',     'inorganic_ion_metabolism_min');
save(      '../data/mat/iron_metabolism_reference',             'iron_metabolism_max',              'iron_metabolism_min');
save(      '../data/mat/lipid_metabolism_reference',            'lipid_metabolism_max',             'lipid_metabolism_min');
save(      '../data/mat/lipoprotein_reference',              	'lipoprotein_max',        			'lipoprotein_min');
save(      '../data/mat/liver_bile_system_reference',           'liver_bile_system_max',        	'liver_bile_system_min');        
save(      '../data/mat/muscle_metabolism_reference',           'muscle_metabolism_max',        	'muscle_metabolism_min');
save(      '../data/mat/pancreas_function_reference',           'pancreas_function_max',        	'pancreas_function_min');
save(      '../data/mat/protein_fraction_reference',            'protein_fraction_max',             'protein_fraction_min');
save(      '../data/mat/renal_function_reference',              'renal_function_max',        		'renal_function_min');
save(      '../data/mat/serum_proteins_reference',              'serum_proteins_max',       		'serum_proteins_min');
save(      '../data/mat/serum_tumor_marker_reference',          'serum_tumor_marker_max',        	'serum_tumor_marker_min');
save(      '../data/mat/sugar_metabolism_reference',          	 'sugar_metabolism_max',             'sugar_metabolism_min');
save(      '../data/mat/tumor_marker_urine_reference',          'tumor_marker_urine_max',       	'tumor_marker_urine_min');
save(      '../data/mat/urine_general_reference',               'urine_general_max',              	'urine_general_min');
