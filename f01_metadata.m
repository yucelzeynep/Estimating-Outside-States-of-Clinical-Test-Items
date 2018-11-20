%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% This function gives information about the dataset statistics
% gender, age, test frequency, # of records...
%
% 2012 10
% Zeynep
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;

load ../data/mat/record;
load ../data/mat/gender;
load ../data/mat/body_measures

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% number of clients
[ids, i, j] = unique(record(:,1));
number_clients_male = sum(gender(i) == 'M');
number_clients_female = sum(gender(i) == 'F');
number_clients = size(ids,1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% average age
avg_age_male = mean(body_measures(gender=='M',1));
avg_age_female = mean(body_measures(gender=='F',1));
avg_age = mean(body_measures(:,1));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Number of tests
%
% Number of tests is how many times the patient had the test
% for instance if ID had the test 1,2,3,4,5,6 times
% His test number of tests is 6, ie the maximum number of tests.
test_number_male = [];
test_number_female = [];
test_number = [];
for i = 1:size(ids,1)
    id = ids(i,1);
    times = record(record(:,1)==id, 4);
    if(unique(gender(record(:,1)==id))=='M')
         test_number_male = [ test_number_male; max(times)];
    else
        test_number_female = [ test_number_female; max(times)];
    end
    test_number = [ test_number; max(times)];
end
test_number_male = mean(test_number_male);
test_number_female = mean(test_number_female);
test_number = mean(test_number);

number_records_male = sum(gender=='M');
number_records_female =  sum(gender=='F');
number_records  = size(record,1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Test frequency 
% i.e. how many months between consecutive tests
test_freq_male = [];
test_freq_female = [];
test_freq = [];

y_0 = min(record(:,2));
months_passed_since_y0 = (record(:,2) - y_0)*12 + record(:,3);

for i = 1:size(ids,1)
    id = ids(i,1);
    months = months_passed_since_y0(record(:,1)==id, 1);
    if(unique(gender(record(:,1)==id))=='M')
         test_freq_male = [ test_freq_male; diff(months)];
    else
        test_freq_female = [ test_freq_female; diff(months)];
    end
    test_freq = [ test_freq; diff(months)];
end
test_freq_male_mean = mean(test_freq_male);
test_freq_female_mean = mean(test_freq_female);
test_freq_mean = mean(test_freq);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% time span
year_start = min(record(:,2));
month_start = min(record(record(:,2)==year_start, 3));
year_end = max(record(:,2));
month_end = max(record(record(:,2)==year_end, 3));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% print info
fprintf ('-----------------------------------------\n');
fprintf ('Metadata\n');
fprintf ('Data is recorded between %4.0d-%02d and %4.0d-%02d\n', year_start, month_start, year_end, month_end);
fprintf ('\t\t Male\t Female\t \tTotal\n', number_clients_male, number_clients_female, number_clients);
fprintf ('Clients\t %3.0d\t %3.0d\t %3.0d\n', number_clients_male, number_clients_female, number_clients);
fprintf ('Avg age\t %3.2f\t %3.2f\t %3.2f\n', avg_age_male, avg_age_female, avg_age);
fprintf ('Number of tests\t %3.2f\t %3.2f\t %3.2f\n', test_number_male, test_number_female, test_number);
fprintf ('Test freq\t %3.2f\t %3.2f\t %3.2f\n', test_freq_male_mean, test_freq_female_mean, test_freq_mean);
fprintf ('Number of records\t %3.0d\t %3.0d\t %3.0d\n', number_records_male, number_records_female, number_records);
fprintf ('-----------------------------------------\n');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure;

subplot(1,2,1);
edges = min([test_freq]) : 1: max([test_freq]) ;
[n, bin] = hist(test_freq_male,edges);
bar(edges,n,'histc');
h = findobj(gca,'Type','patch');
set(h,'FaceColor',[0.5 0.5 0.5],'EdgeColor','w');
grid on;
xlabel('Months between consecutive tests');
ylabel('Numberof observations');
title('Test frequency for males');

subplot(1,2,2);
edges = min([test_freq]) : 1: max([test_freq]) ;
[n, bin] = hist(test_freq_female,edges);
bar(edges,n,'histc');
h = findobj(gca,'Type','patch');
set(h,'FaceColor',[0.5 0.5 0.5],'EdgeColor','w');
grid on
xlabel('Months between consecutive tests');
ylabel('Number of observations');
title('Test frequency for females');

set(gcf, 'Position', [  268         536        1120         418]);

