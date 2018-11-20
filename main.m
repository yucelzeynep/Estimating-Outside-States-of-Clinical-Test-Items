close all; clear all; clc;

tic

f00_arrange_dataset;% save dataset
f01_metadata; % get info about dataset stats
f02_translate; % preproces step-1, translate non-numeric to numeric
f03_align;% preproces step-2, rescale liver bile and pancreas
f04_get_running_average; % A in paper
f05_save_limits; 
f06_arrange_reference; 
f07_get_states; 
f08_get_states_sliding_sum; 
f09_collect_source;
f10_estimate;
% f11_performance_low_cost;
% f12_performance_low_medium_cost;

toc
