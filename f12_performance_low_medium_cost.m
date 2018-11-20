clear all;

tic
load ../../../data/mat/all_test_states_sliding ;
load ../../../data/mat/all_test_states ;
load ../../../data/mat/record;
load estimates/02_estimated_states;
load ../../../data/mat/is_estimated_low_medium;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% from sliding to individual states
%

estimated_states = estimated_states_low_medium_cost;
% reconstrict ground truhm matrices for low cost

all_test_states_gt = all_test_states(all_test_states_sliding(:,1)~=-1, find(is_estimated_low_medium));
all_test_states_sliding_gt = all_test_states_sliding(all_test_states_sliding(:,1)~=-1, find(is_estimated_low_medium));

estimated_state_individual = -ones(size(all_test_states_gt));
estimated_states_sliding = -ones(size(all_test_states_sliding_gt));

for i = 1:size(estimated_states,1)
    for j = 1:size(estimated_states,2)
        est = estimated_states(i,j);
        hist_sum = all_test_states_sliding_gt(i,j)-all_test_states_gt(i,j);

        if(est<0.5)
            estimated_state_individual(i,j) = 0;
            estimated_states_sliding(i,j) = 0;
        elseif(est>=0.5 && est<1.5)
            estimated_states_sliding(i,j) = 1;
            if((hist_sum==0))
                estimated_state_individual(i,j) = 1;
            else
                estimated_state_individual(i,j) = 0;
            end
        elseif(est>=1.5 && est<=2)
            estimated_states_sliding(i,j) = 2;
            if(hist_sum==0 || hist_sum==1)
                estimated_state_individual(i,j) = 1;
            else
                estimated_state_individual(i,j) = 0;
            end
        elseif(est>2)
            estimated_states_sliding(i,j) = 3;
            estimated_state_individual(i,j) = 1;
        elseif(isnan(est))
            fprintf('Estimate is NaN. 5d!\n', counter);
            counter = counter + 1;
        end

        % estimated_state_individual(i,j) = round(est)-hist_sum;
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

perf_state_individual_0 = sum(sum(all_test_states_gt==0 & estimated_state_individual==0))/sum(sum(all_test_states_gt==0));
perf_state_individual_1 = sum(sum(all_test_states_gt==1 & estimated_state_individual==1))/sum(sum(all_test_states_gt==1));
perf_state_individual_tot =  mean(mean(all_test_states_gt == estimated_state_individual));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
perf_state_sliding_0 = sum(sum(all_test_states_sliding_gt==0 & estimated_states_sliding==0 ))/sum(sum(all_test_states_sliding_gt == 0));
perf_state_sliding_1 = sum(sum(all_test_states_sliding_gt==1 & estimated_states_sliding==1 ))/sum(sum(all_test_states_sliding_gt == 1));
perf_state_sliding_2 = sum(sum(all_test_states_sliding_gt==2 & estimated_states_sliding==2 ))/sum(sum(all_test_states_sliding_gt == 2));
perf_state_sliding_3 = sum(sum(all_test_states_sliding_gt==3 & estimated_states_sliding==3 ))/sum(sum(all_test_states_sliding_gt == 3));
perf_state_sliding_tot = sum(sum(all_test_states_sliding_gt==estimated_states_sliding))/...
   sum(sum(all_test_states_sliding_gt ~= -1));


for i = 0:3
    for j = 0:3
        conf(i+1,j+1) = sum(sum(estimated_states_sliding == j & all_test_states_sliding_gt == i))/sum(sum(all_test_states_sliding_gt == i));
    end
end

% failures
[a,b] = sort(mean(all_test_states_gt == estimated_state_individual));

fprintf ('-----------------------------------------\n\n');
fprintf ('Performance low cost\n\n');
fprintf ('Performance in detection of states sliding\n');
fprintf ('State 0 %f\n', perf_state_sliding_0);
fprintf ('State 1 %f\n', perf_state_sliding_1);
fprintf ('State 2 %f\n', perf_state_sliding_2);
fprintf ('State 3 %f\n', perf_state_sliding_3);
fprintf ('State tot %f\n', perf_state_sliding_tot);
fprintf ('\nPerformance in detection of individual states \n');
fprintf ('Normal state 0 %f\n', perf_state_individual_0);
fprintf ('Abnormal State 1 %f\n', perf_state_individual_1);
fprintf ('Overall individual state tot %f\n', perf_state_individual_tot);
fprintf ('\nConfusion table \n');
fprintf ('%2.2f\t %2.2f\t %2.2f\t %2.2f\n' , conf'*100);
fprintf ('\n-----------------------------------------\n');
toc
