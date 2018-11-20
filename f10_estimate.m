clear all;

load ../data/mat/all_test_values_running_avg ;
load ../data/mat/all_test_states_sliding ;

load ../data/mat/is_source_low_cost ;
load ../data/mat/is_source_medium_cost ;
load ../data/mat/is_estimated_low ;
load ../data/mat/is_estimated_low_medium ;

load ../data/mat/record;
load ../data/mat/gender;

estimated_states_low_cost = [];
estimated_states_low_medium_cost = [];

tic

counter1_low = 0;
counter2_low = 0;
counter1_low_medium = 0;
counter2_low_medium = 0;

for i = 1:size(all_test_values_running_avg,1)
    counter2_low = 0;
    counter2_low_medium = 0;
    for j= 1:size(all_test_values_running_avg,2)
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %
        % low
        %

        if(is_estimated_low(1,j)) % is this test estimated?
            id = record(i, 1);
            counter2_low = counter2_low + 1;
            if(all_test_states_sliding(i,1)~=-1) % does this instant have enough history(>3) for estimation?

                if(counter2_low==1)
                    counter1_low = counter1_low +1;
                end
                % the first row this id is observed
                [u,v] = find(record==id);
                u = min(u);

                % exclude this id from source
                [u,v] = find(record(:,1)~=id);
                all_test_states_sliding_excluded = all_test_states_sliding(u, :);
                all_test_values_running_avg_excluded = all_test_values_running_avg(u,:);

                indices0 = all_test_states_sliding_excluded(:,j) == 0;
                indices1 = all_test_states_sliding_excluded(:,j) == 1;
                indices2 = all_test_states_sliding_excluded(:,j) == 2;
                indices3 = all_test_states_sliding_excluded(:,j) == 3;

                source0 = all_test_values_running_avg_excluded(indices0, find(is_source_low_cost));
                source1 = all_test_values_running_avg_excluded(indices1, find(is_source_low_cost));
                source2 = all_test_values_running_avg_excluded(indices2, find(is_source_low_cost));
                source3 = all_test_values_running_avg_excluded(indices3, find(is_source_low_cost));

                labels0 = 0*ones(size(source0,1),1);
                labels1 = 1*ones(size(source1,1),1);
                labels2 = 2*ones(size(source2,1),1);
                labels3 = 3*ones(size(source3,1),1);

                source = [source0; source1;source2; source3];
                labels = [labels0; labels1; labels2; labels3];

                target =  all_test_values_running_avg(i, find(is_source_low_cost));

                if(size(unique(labels),1)~=1)
                    A = dataset(source, labels);
                    w = knnc(A, 5);
                    y = target*w*labeld;
                    close all force;
                    estimated_states_low_cost(counter1_low,counter2_low) = y;
                else
                    estimated_states_low_cost(counter1_low,counter2_low) = unique(labels);
                end
            end
        end
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %
        % low + medium
        %
        if(is_estimated_low_medium(1,j)) % is this test estimated?
            id = record(i, 1);
            counter2_low_medium = counter2_low_medium + 1;
            if(all_test_states_sliding(i,1)~=-1) % does this instant have enough history(>3) for estimation?
                if(counter2_low==1)
                    counter1_low_medium = counter1_low_medium +1;
                end
                % the first row this id is observed
                [u,v] = find(record==id);
                u = min(u);

                % exclude this id from source
                [u,v] = find(record(:,1)~=id);
                all_test_states_sliding_excluded = all_test_states_sliding(u, :);
                all_test_values_running_avg_excluded = all_test_values_running_avg(u,:);

                indices0 = all_test_states_sliding_excluded(:,j) == 0;
                indices1 = all_test_states_sliding_excluded(:,j) == 1;
                indices2 = all_test_states_sliding_excluded(:,j) == 2;
                indices3 = all_test_states_sliding_excluded(:,j) == 3;

                source0 = all_test_values_running_avg_excluded(indices0, find(is_source_low_cost + is_source_medium_cost));
                source1 = all_test_values_running_avg_excluded(indices1, find(is_source_low_cost + is_source_medium_cost));
                source2 = all_test_values_running_avg_excluded(indices2, find(is_source_low_cost + is_source_medium_cost));
                source3 = all_test_values_running_avg_excluded(indices3, find(is_source_low_cost + is_source_medium_cost));

                labels0 = 0*ones(size(source0,1),1);
                labels1 = 1*ones(size(source1,1),1);
                labels2 = 2*ones(size(source2,1),1);
                labels3 = 3*ones(size(source3,1),1);

                source = [source0; source1;source2; source3];
                labels = [labels0; labels1; labels2; labels3];

                target =  all_test_values_running_avg(i, find(is_source_low_cost + is_source_medium_cost));

                if(size(unique(labels),1)~=1)
                    A = dataset(source, labels);
                    w = knnc(A,5);
                    y = target*w*labeld;
                    close all force;
                    estimated_states_low_medium_cost(counter1_low_medium,counter2_low_medium) = y;
                else
                    estimated_states_low_medium_cost(counter1_low_medium,counter2_low_medium) = unique(labels);
                end
            end
        end
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    end
    i
end

% save with a new index
filenames = dir('estimates/*_estimated_states.mat');
numbers = [];
for i = 1:size(filenames,1)
    numbers = [numbers str2num(filenames(i).name(1,1:2))];
end
new_number = max(numbers)+1;
new_filename = sprintf('%02d_estimated_states', new_number);
save(['estimates/',new_filename],...
    'estimated_states_low_cost',...
    'estimated_states_low_medium_cost');

