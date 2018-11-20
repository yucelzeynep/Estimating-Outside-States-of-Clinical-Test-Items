%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% This function takes the running average of the test results at each
% column. The resulting variable is denoted with A in Sakata's paper.
%
% 2012 10
% Zeynep
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;

load ../data/mat/record;
window_size = 3; % take running average over this window

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load( '../data/mat/auto_immune');

auto_immune_running_avg = -ones(size(auto_immune)); % first window_size-1 rows are zeros

for i = 1:size(record,1)
    id = record(i, 1);
    if(sum(record(1:i,1)==id)>=3) % does this instant have enough history(>3) for estimation?
        temp = auto_immune(i-window_size+1: i, :);
        auto_immune_running_avg(i, :) = mean(temp, 1);
    end
end
save('../data/mat/auto_immune_running_avg', 'auto_immune_running_avg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load( '../data/mat/blood_general');

blood_general_running_avg = -ones(size(blood_general)); % first window_size-1 rows are zeros

for i = 1:size(record,1)
    id = record(i, 1);
    if(sum(record(1:i,1)==id)>=3) % does this instant have enough history(>3) for estimation?
        temp = blood_general(i-window_size+1: i, :);
        blood_general_running_avg(i, :) = mean(temp, 1);
    end
end
save('../data/mat/blood_general_running_avg', 'blood_general_running_avg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load( '../data/mat/cell_mediated_immunity');

cell_mediated_immunity_running_avg = -ones(size(cell_mediated_immunity,2)); % first window_size-1 rows are zeros

for i = 1:size(record,1)
    id = record(i, 1);
    if(sum(record(1:i,1)==id)>=3) % does this instant have enough history(>3) for estimation?
        temp = cell_mediated_immunity(i-window_size+1: i, :);
        cell_mediated_immunity_running_avg(i, :) = mean(temp, 1);
    end
end
save('../data/mat/cell_mediated_immunity_running_avg', 'cell_mediated_immunity_running_avg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load( '../data/mat/enzyme');

enzyme_running_avg = -ones(size(enzyme,2)); % first window_size-1 rows are zeros

for i = 1:size(record,1)
    id = record(i, 1);
    if(sum(record(1:i,1)==id)>=3) % does this instant have enough history(>3) for estimation?
        temp = enzyme(i-window_size+1: i, :);
        enzyme_running_avg(i, :) = mean(temp, 1);
    end
end
save('../data/mat/enzyme_running_avg', 'enzyme_running_avg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load( '../data/mat/infection');

infection_running_avg = -ones(size(infection,2)); % first window_size-1 rows are zeros

for i = window_size:size(infection,1)
    temp = infection(i-window_size+1: i, :);
    infection_running_avg(i, :) = mean(temp, 1);
end
save('../data/mat/infection_running_avg', 'infection_running_avg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load( '../data/mat/inflamation');

inflamation_running_avg = -ones(size(inflamation,2)); % first window_size-1 rows are zeros

for i = 1:size(record,1)
    id = record(i, 1);
    if(sum(record(1:i,1)==id)>=3) % does this instant have enough history(>3) for estimation?
        temp = inflamation(i-window_size+1: i, :);
        inflamation_running_avg(i, :) = mean(temp, 1);
    end
end
save('../data/mat/inflamation_running_avg', 'inflamation_running_avg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load( '../data/mat/inorganic_ion_metabolism');

inorganic_ion_metabolism_running_avg = -ones(size(inorganic_ion_metabolism,2)); % first window_size-1 rows are zeros

for i = 1:size(record,1)
    id = record(i, 1);
    if(sum(record(1:i,1)==id)>=3) % does this instant have enough history(>3) for estimation?
        temp = inorganic_ion_metabolism(i-window_size+1: i, :);
        inorganic_ion_metabolism_running_avg(i, :) = mean(temp, 1);
    end
end
save('../data/mat/inorganic_ion_metabolism_running_avg', 'inorganic_ion_metabolism_running_avg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load( '../data/mat/iron_metabolism');

iron_metabolism_running_avg = -ones(size(iron_metabolism,2)); % first window_size-1 rows are zeros

for i = window_size:size(iron_metabolism,1)
    temp = iron_metabolism(i-window_size+1: i, :);
    iron_metabolism_running_avg(i, :) = mean(temp, 1);
end
save('../data/mat/iron_metabolism_running_avg', 'iron_metabolism_running_avg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load( '../data/mat/lipid_metabolism');

lipid_metabolism_running_avg = -ones(size(lipid_metabolism,2)); % first window_size-1 rows are zeros

for i = 1:size(record,1)
    id = record(i, 1);
    if(sum(record(1:i,1)==id)>=3) % does this instant have enough history(>3) for estimation?
        temp = lipid_metabolism(i-window_size+1: i, :);
        lipid_metabolism_running_avg(i, :) = mean(temp, 1);
    end
end
save('../data/mat/lipid_metabolism_running_avg', 'lipid_metabolism_running_avg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load( '../data/mat/lipoprotein');

lipoprotein_running_avg = -ones(size(lipoprotein,2)); % first window_size-1 rows are zeros

for i = 1:size(record,1)
    id = record(i, 1);
    if(sum(record(1:i,1)==id)>=3) % does this instant have enough history(>3) for estimation?
        temp = lipoprotein(i-window_size+1: i, :);
        lipoprotein_running_avg(i, :) = mean(temp, 1);
    end
end
save('../data/mat/lipoprotein_running_avg', 'lipoprotein_running_avg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load( '../data/mat/liver_bile_system');

liver_bile_system_running_avg = -ones(size(liver_bile_system,2)); % first window_size-1 rows are zeros

for i = 1:size(record,1)
    id = record(i, 1);
    if(sum(record(1:i,1)==id)>=3) % does this instant have enough history(>3) for estimation?
        temp = liver_bile_system(i-window_size+1: i, :);
        liver_bile_system_running_avg(i, :) = mean(temp, 1);
    end
end
save('../data/mat/liver_bile_system_running_avg', 'liver_bile_system_running_avg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load( '../data/mat/muscle_metabolism');

muscle_metabolism_running_avg = -ones(size(muscle_metabolism,2)); % first window_size-1 rows are zeros

for i = 1:size(record,1)
    id = record(i, 1);
    if(sum(record(1:i,1)==id)>=3) % does this instant have enough history(>3) for estimation?
        temp = muscle_metabolism(i-window_size+1: i, :);
        muscle_metabolism_running_avg(i, :) = mean(temp, 1);
    end
end
save('../data/mat/muscle_metabolism_running_avg', 'muscle_metabolism_running_avg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load( '../data/mat/pancreas_function');

pancreas_function_running_avg = -ones(size(pancreas_function,2)); % first window_size-1 rows are zeros

for i = 1:size(record,1)
    id = record(i, 1);
    if(sum(record(1:i,1)==id)>=3) % does this instant have enough history(>3) for estimation?
        temp = pancreas_function(i-window_size+1: i, :);
        pancreas_function_running_avg(i, :) = mean(temp, 1);
    end
end
save('../data/mat/pancreas_function_running_avg', 'pancreas_function_running_avg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load( '../data/mat/protein_fraction');

protein_fraction_running_avg = -ones(size(protein_fraction,2)); % first window_size-1 rows are zeros

for i = 1:size(record,1)
    id = record(i, 1);
    if(sum(record(1:i,1)==id)>=3) % does this instant have enough history(>3) for estimation?
        temp = protein_fraction(i-window_size+1: i, :);
        protein_fraction_running_avg(i, :) = mean(temp, 1);
    end
end
save('../data/mat/protein_fraction_running_avg', 'protein_fraction_running_avg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load( '../data/mat/renal_function');

renal_function_running_avg = -ones(size(renal_function,2)); % first window_size-1 rows are zeros

for i = 1:size(record,1)
    id = record(i, 1);
    if(sum(record(1:i,1)==id)>=3) % does this instant have enough history(>3) for estimation?
        temp = renal_function(i-window_size+1: i, :);
        renal_function_running_avg(i, :) = mean(temp, 1);
    end
end
save('../data/mat/renal_function_running_avg', 'renal_function_running_avg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load( '../data/mat/serum_proteins');

serum_proteins_running_avg = -ones(size(serum_proteins,2)); % first window_size-1 rows are zeros

for i = 1:size(record,1)
    id = record(i, 1);
    if(sum(record(1:i,1)==id)>=3) % does this instant have enough history(>3) for estimation?
        temp = serum_proteins(i-window_size+1: i, :);
        serum_proteins_running_avg(i, :) = mean(temp, 1);
    end
end
save('../data/mat/serum_proteins_running_avg', 'serum_proteins_running_avg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load( '../data/mat/serum_tumor_marker');

serum_tumor_marker_running_avg = -ones(size(serum_tumor_marker,2)); % first window_size-1 rows are zeros

for i = 1:size(record,1)
    id = record(i, 1);
    if(sum(record(1:i,1)==id)>=3) % does this instant have enough history(>3) for estimation?
        temp = serum_tumor_marker(i-window_size+1: i, :);
        serum_tumor_marker_running_avg(i, :) = mean(temp, 1);
    end
end
save('../data/mat/serum_tumor_marker_running_avg', 'serum_tumor_marker_running_avg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load( '../data/mat/sugar_metabolism');

sugar_metabolism_running_avg = -ones(size(sugar_metabolism,2)); % first window_size-1 rows are zeros

for i = 1:size(record,1)
    id = record(i, 1);
    if(sum(record(1:i,1)==id)>=3) % does this instant have enough history(>3) for estimation?
        temp = sugar_metabolism(i-window_size+1: i, :);
        sugar_metabolism_running_avg(i, :) = mean(temp, 1);
    end
end
save('../data/mat/sugar_metabolism_running_avg', 'sugar_metabolism_running_avg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load( '../data/mat/tumor_marker_urine');

tumor_marker_urine_running_avg = -ones(size(tumor_marker_urine,2)); % first window_size-1 rows are zeros

for i = 1:size(record,1)
    id = record(i, 1);
    if(sum(record(1:i,1)==id)>=3) % does this instant have enough history(>3) for estimation?
        temp = tumor_marker_urine(i-window_size+1: i, :);
        tumor_marker_urine_running_avg(i, :) = mean(temp, 1);
    end
end
save('../data/mat/tumor_marker_urine_running_avg', 'tumor_marker_urine_running_avg');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load( '../data/mat/urine_general');

urine_general_running_avg =  -ones(size(urine_general, 2)); % first window_size-1 rows are zeros

for i = 1:size(record,1)
    id = record(i, 1);
    if(sum(record(1:i,1)==id)>=3) % does this instant have enough history(>3) for estimation?
        temp = urine_general(i-window_size+1: i, :);
        urine_general_running_avg(i, :) = mean(temp, 1);
    end
end
save('../data/mat/urine_general_running_avg', 'urine_general_running_avg');
