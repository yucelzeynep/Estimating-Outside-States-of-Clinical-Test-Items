%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% The reference range for some liver tests and pancreas test chenge at
% 2006/03. Liver tests are at column 14 and 15, pancreas test is at column
% 1.
%
% This function takes the old test results and scales them to the new
% range. 
%
% 2012 10
% Zeynep
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% old and new references
pancreas_1_male_new_max = 122; 
pancreas_1_male_new_min = 40; 
pancreas_1_female_new_max = 122; 
pancreas_1_female_new_min = 40; 

pancreas_1_male_old_max = 175; 
pancreas_1_male_old_min = 55; 
pancreas_1_female_old_max = 175; 
pancreas_1_female_old_min = 55; 

liver_14_male_new_max = 81;
liver_14_male_new_min = 45;
liver_14_female_new_max = 61; 
liver_14_female_new_min = 37;

liver_14_male_old_max = 200;
liver_14_male_old_min = 100;
liver_14_female_old_max = 180;
liver_14_female_old_min = 80;

liver_15_male_new_max = 493;
liver_15_male_new_min = 234;
liver_15_female_new_max = 452; 
liver_15_female_new_min = 200;

liver_15_male_old_max = 7000;
liver_15_male_old_min = 3000;
liver_15_female_old_max = 7000;
liver_15_female_old_min = 3000;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% time info
load ../data/mat/record;
load ../data/mat/gender;
y_0 = min(record(:,2));
m_0 = min(record(record(:,2)==y_0, 3));
y_1 = max(record(:,2));
m_1 = max(record(record(:,2)==y_1, 3));

% fprintf ('-----------------------------------------\n');
% fprintf('The data is recorded between  %4.0d/%2.0d and %4.0d/%2.0d.\n', y_0, m_0, y_1, m_1);
% fprintf ('-----------------------------------------\n');

% I plot the data and decide the range changes after 2006/3. 
y_old_ends = 2006;
m_old_ends = 3;
y_new_starts= 2006;
m_new_starts = 4;

months_passed_since_2005 = (record(:,2) - y_0)*12 + record(:,3);

[old_value_indices, old_values] = find( (record(:,2) <= y_old_ends & record(:,3) <= m_old_ends)| (record(:,2) < y_old_ends));

[ old_value_indices_male, temp] = find(gender(old_value_indices) == 'M');
[ old_value_indices_female, temp] = find(gender(old_value_indices) == 'F');

old_value_indices_male = old_value_indices(old_value_indices_male);
old_value_indices_female = old_value_indices(old_value_indices_female);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% pancreas 1st column
%
load ../data/mat/pancreas_function_old;

pancreas_function = pancreas_function_old;

pancreas_function(old_value_indices_male, 1) = ...
    pancreas_1_male_new_min +...
    (pancreas_function(old_value_indices_male, 1) - pancreas_1_male_old_min)*...
    (pancreas_1_male_new_max - pancreas_1_male_new_min)/...
    (pancreas_1_male_old_max - pancreas_1_male_old_min);% only first column changes range.

pancreas_function(old_value_indices_female, 1) = ...
    pancreas_1_female_new_min +...
    (pancreas_function(old_value_indices_female, 1) - pancreas_1_female_old_min)*...
    (pancreas_1_female_new_max - pancreas_1_female_new_min)/...
    (pancreas_1_female_old_max - pancreas_1_female_old_min);% only first column changes range.

save('../data/mat/pancreas_function', 'pancreas_function');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% liver 14th column
%
load ../data/mat/liver_bile_system_old;

liver_bile_system = liver_bile_system_old;

liver_bile_system(old_value_indices_male, 14) = ...
    liver_14_male_new_min +...
    (liver_bile_system(old_value_indices_male, 14) - liver_14_male_old_min)*...
    (liver_14_male_new_max - liver_14_male_new_min)/...
    (liver_14_male_old_max - liver_14_male_old_min);% only first column changes range.

liver_bile_system(old_value_indices_female, 14) = ...
    liver_14_female_new_min +...
    (liver_bile_system(old_value_indices_female, 14) - liver_14_female_old_min)*...
    (liver_14_female_new_max - liver_14_female_new_min)/...
    (liver_14_female_old_max - liver_14_female_old_min);% only first column changes range.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% liver 15th column
%
load ../data/mat/liver_bile_system_old;

liver_bile_system(:, 15) = liver_bile_system_old(:,15);

liver_bile_system(old_value_indices_male, 15) = ...
    liver_15_male_new_min +...
    (liver_bile_system(old_value_indices_male, 15) - liver_15_male_old_min)*...
    (liver_15_male_new_max - liver_15_male_new_min)/...
    (liver_15_male_old_max - liver_15_male_old_min);% only first column changes range.

liver_bile_system(old_value_indices_female, 15) = ...
    liver_15_female_new_min +...
    (liver_bile_system(old_value_indices_female, 15) - liver_15_female_old_min)*...
    (liver_15_female_new_max - liver_15_female_new_min)/...
    (liver_15_female_old_max - liver_15_female_old_min);% only first column changes range.

save('../data/mat/liver_bile_system', 'liver_bile_system');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% draw
%


figure; hold on;
plot(months_passed_since_2005, pancreas_function_old(:,1), 'b.');
plot(months_passed_since_2005, pancreas_function(:,1), 'r.');
xlabel('Months passed since 2005-01');
ylabel('Test value');
grid on;
legend('Old values', 'Scaled values');
title('Pancreas col 1'); hold off;

figure; hold on;
plot(months_passed_since_2005, liver_bile_system_old(:,14), 'b.');
plot(months_passed_since_2005, liver_bile_system(:,14), 'r.');
xlabel('Months passed since 2005-01');
ylabel('Test value');
grid on;
legend('Old values', 'Scaled values');
title('Liver col 14'); hold off;

figure; hold on;
plot(months_passed_since_2005, liver_bile_system_old(:,15), 'b.');
plot(months_passed_since_2005, liver_bile_system(:,15), 'r.');
xlabel('Months passed since 2005-01');
ylabel('Test value');
grid on;
legend('Old values', 'Scaled values');
title('Liver col 15'); hold off;
