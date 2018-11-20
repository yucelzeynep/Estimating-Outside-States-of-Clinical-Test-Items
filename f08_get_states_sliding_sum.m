%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% This function gets a sliding window sum of the outside states.
%
% When outside state cannot be defined (ie time is smaller than window size)
% I set it to -1.
%
% ONLY OUTSIDE STATES ARE 1.
%
% 2012 10
% Zeynep
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;

window_size = 3;

load ../data/mat/record;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load( '../data/mat/auto_immune_states');
load( '../data/mat/blood_general_states');
load( '../data/mat/cell_mediated_immunity_states');
load( '../data/mat/enzyme_states');
load( '../data/mat/infection_states');
load( '../data/mat/inflamation_states');
load( '../data/mat/inorganic_ion_metabolism_states');
load( '../data/mat/iron_metabolism_states');
load( '../data/mat/lipid_metabolism_states');
load( '../data/mat/lipoprotein_states');
load( '../data/mat/liver_bile_system_states');
load( '../data/mat/muscle_metabolism_states');
load( '../data/mat/pancreas_function_states');
load( '../data/mat/protein_fraction_states');
load( '../data/mat/renal_function_states');
load( '../data/mat/serum_proteins_states');
load( '../data/mat/serum_tumor_marker_states');
load( '../data/mat/sugar_metabolism_states');
load( '../data/mat/tumor_marker_urine_states');
load( '../data/mat/urine_general_states');

% by default outside state is -1, i.e. when there is not enough history
% (history<window_size-1), outside is -1.
auto_immune_states_sliding = -ones(size(auto_immune_states));
blood_general_states_sliding = -ones(size(blood_general_states));
cell_mediated_immunity_states_sliding = -ones(size(cell_mediated_immunity_states));
enzyme_states_sliding = -ones(size(enzyme_states));
infection_states_sliding = -ones(size(infection_states));
inflamation_states_sliding = -ones(size(inflamation_states));
inorganic_ion_metabolism_states_sliding = -ones(size(inorganic_ion_metabolism_states));
iron_metabolism_states_sliding = -ones(size(iron_metabolism_states));
lipid_metabolism_states_sliding = -ones(size(lipid_metabolism_states));
lipoprotein_states_sliding = -ones(size(lipoprotein_states));
liver_bile_system_states_sliding = -ones(size(liver_bile_system_states));
muscle_metabolism_states_sliding = -ones(size(muscle_metabolism_states));
pancreas_function_states_sliding = -ones(size(pancreas_function_states));
protein_fraction_states_sliding = -ones(size(protein_fraction_states));
renal_function_states_sliding = -ones(size(renal_function_states));
serum_proteins_states_sliding = -ones(size(serum_proteins_states));
serum_tumor_marker_states_sliding = -ones(size(serum_tumor_marker_states));
sugar_metabolism_states_sliding = -ones(size(sugar_metabolism_states));
tumor_marker_urine_states_sliding = -ones(size(tumor_marker_urine_states));
urine_general_states_sliding =  -ones(size(urine_general_states));


for i = 1:size(record,1)
    id = record(i, 1);
    if(sum(record(1:i,1)==id)>=3) % does this instant have enough history(>3) for estimation?
        temp = auto_immune_states(i-window_size+1: i, :);
        auto_immune_states_sliding(i, :) = sum(temp, 1);

        temp = blood_general_states(i-window_size+1: i, :);
        blood_general_states_sliding(i, :) = sum(temp, 1);

        temp = cell_mediated_immunity_states(i-window_size+1: i, :);
        cell_mediated_immunity_states_sliding(i, :) = sum(temp, 1);

        temp = enzyme_states(i-window_size+1: i, :);
        enzyme_states_sliding(i, :) = sum(temp, 1);

        temp = infection_states(i-window_size+1: i, :);
        infection_states_sliding(i, :) = sum(temp, 1);

        temp = inflamation_states(i-window_size+1: i, :);
        inflamation_states_sliding(i, :) = sum(temp, 1);

        temp = inorganic_ion_metabolism_states(i-window_size+1: i, :);
        inorganic_ion_metabolism_states_sliding(i, :) = sum(temp, 1);

        temp = iron_metabolism_states(i-window_size+1: i, :);
        iron_metabolism_states_sliding(i, :) = sum(temp, 1);

        temp = lipid_metabolism_states(i-window_size+1: i, :);
        lipid_metabolism_states_sliding(i, :) = sum(temp, 1);

        temp = lipoprotein_states(i-window_size+1: i, :);
        lipoprotein_states_sliding(i, :) = sum(temp, 1);

        temp = liver_bile_system_states(i-window_size+1: i, :);
        liver_bile_system_states_sliding(i, :) = sum(temp, 1);

        temp = muscle_metabolism_states(i-window_size+1: i, :);
        muscle_metabolism_states_sliding(i, :) = sum(temp, 1);

        temp = pancreas_function_states(i-window_size+1: i, :);
        pancreas_function_states_sliding(i, :) = sum(temp, 1);

        temp = protein_fraction_states(i-window_size+1: i, :);
        protein_fraction_states_sliding(i, :) = sum(temp, 1);

        temp = renal_function_states(i-window_size+1: i, :);
        renal_function_states_sliding(i, :) = sum(temp, 1);

        temp = serum_proteins_states(i-window_size+1: i, :);
        serum_proteins_states_sliding(i, :) = sum(temp, 1);

        temp = serum_tumor_marker_states(i-window_size+1: i, :);
        serum_tumor_marker_states_sliding(i, :) = sum(temp, 1);

        temp = sugar_metabolism_states(i-window_size+1: i, :);
        sugar_metabolism_states_sliding(i, :) = sum(temp, 1);

        temp = tumor_marker_urine_states(i-window_size+1: i, :);
        tumor_marker_urine_states_sliding(i, :) = sum(temp, 1);

        temp = urine_general_states(i-window_size+1: i, :);
        urine_general_states_sliding(i, :) = sum(temp, 1);
    end
end
save('../data/mat/auto_immune_states_sliding', 'auto_immune_states_sliding');
save('../data/mat/blood_general_states_sliding', 'blood_general_states_sliding');
save('../data/mat/cell_mediated_immunity_states_sliding', 'cell_mediated_immunity_states_sliding');
save('../data/mat/enzyme_states_sliding', 'enzyme_states_sliding');
save('../data/mat/infection_states_sliding', 'infection_states_sliding');
save('../data/mat/inflamation_states_sliding', 'inflamation_states_sliding');
save('../data/mat/inorganic_ion_metabolism_states_sliding', 'inorganic_ion_metabolism_states_sliding');
save('../data/mat/iron_metabolism_states_sliding', 'iron_metabolism_states_sliding');
save('../data/mat/lipid_metabolism_states_sliding', 'lipid_metabolism_states_sliding');
save('../data/mat/lipoprotein_states_sliding', 'lipoprotein_states_sliding');
save('../data/mat/liver_bile_system_states_sliding', 'liver_bile_system_states_sliding');
save('../data/mat/muscle_metabolism_states_sliding', 'muscle_metabolism_states_sliding');
save('../data/mat/pancreas_function_states_sliding', 'pancreas_function_states_sliding');
save('../data/mat/protein_fraction_states_sliding', 'protein_fraction_states_sliding');
save('../data/mat/renal_function_states_sliding', 'renal_function_states_sliding');
save('../data/mat/serum_proteins_states_sliding', 'serum_proteins_states_sliding');
save('../data/mat/serum_tumor_marker_states_sliding', 'serum_tumor_marker_states_sliding');
save('../data/mat/sugar_metabolism_states_sliding', 'sugar_metabolism_states_sliding');
save('../data/mat/tumor_marker_urine_states_sliding', 'tumor_marker_urine_states_sliding');
save('../data/mat/urine_general_states_sliding', 'urine_general_states_sliding');
