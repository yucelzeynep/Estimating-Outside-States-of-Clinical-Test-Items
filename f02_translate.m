%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% The values of some test are not given as numeric values.
%
% Serum tumor marker column-28 is given as (-), (+), (+-) and (+2). I put
% them in the matrix as +1, -1, 0, +2.  Now I draw a random varible from
% Gausian distrubution with (mu, sigma), where mu = -1,0,1,2 and sigma is
% 1/6. In this manner 99.73% of the variable of a Gaussian distribution are
% within 3*sigma interval. 

% The following are translated
% serum_tumor_marker col 28 (+,- etc)
% urine_general col 3-9 (+,- etc)
% urine_general col 10-12, (intervals, <1, 1~4, etc)
% urine_general col 13-14 (+,- etc)
%
% 2012 11
% Zeynep
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function f02_translate

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% serum_tumor_marker col 28
%
load      ../data/mat/serum_tumor_marker_old;
serum_tumor_marker = serum_tumor_marker_old;

serum_tumor_marker(serum_tumor_marker_old(:,28) == -1, 28) = normrnd(-1, 1/6, sum(serum_tumor_marker_old(:,28) == -1), 1);
serum_tumor_marker(serum_tumor_marker_old(:,28) == 0, 28) = normrnd(0, 1/6, sum(serum_tumor_marker_old(:,28) == 0), 1);
serum_tumor_marker(serum_tumor_marker_old(:,28) == 1, 28) = normrnd(1, 1/6, sum(serum_tumor_marker_old(:,28) == 1), 1);
serum_tumor_marker(serum_tumor_marker_old(:,28) == 2, 28) = normrnd(2, 1/6, sum(serum_tumor_marker_old(:,28) == 2), 1);

save('../data/mat/serum_tumor_marker', 'serum_tumor_marker');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% urine_general col 3-9
%
load      ../data/mat/urine_general_old;
urine_general = urine_general_old;

urine_general(urine_general_old(:,3)==-1, 3) = normrnd(-1, 1/6, sum(urine_general_old(:,3)==-1), 1);
urine_general(urine_general_old(:,3)==0, 3) = normrnd(0, 1/6, sum(urine_general_old(:,3)==0), 1);
urine_general(urine_general_old(:,3)==1, 3) = normrnd(1, 1/6, sum(urine_general_old(:,3)==1), 1);
urine_general(urine_general_old(:,3)==2, 3) = normrnd(2, 1/6, sum(urine_general_old(:,3)==2), 1);
urine_general(urine_general_old(:,3)==3, 3) = normrnd(3, 1/6, sum(urine_general_old(:,3)==3), 1);

urine_general(urine_general_old(:,4)==-1, 4) = normrnd(-1, 1/6, sum(urine_general_old(:,4)==-1), 1);
urine_general(urine_general_old(:,4)==0, 4) = normrnd(0, 1/6, sum(urine_general_old(:,4)==0), 1);
urine_general(urine_general_old(:,4)==1, 4) = normrnd(1, 1/6, sum(urine_general_old(:,4)==1), 1);
urine_general(urine_general_old(:,4)==2, 4) = normrnd(2, 1/6, sum(urine_general_old(:,4)==2), 1);
urine_general(urine_general_old(:,4)==3, 4) = normrnd(3, 1/6, sum(urine_general_old(:,4)==3), 1);

urine_general(urine_general_old(:,5)==-1, 5) = normrnd(-1, 1/6, sum(urine_general_old(:,5)==-1), 1);
urine_general(urine_general_old(:,5)==0, 5) = normrnd(0, 1/6, sum(urine_general_old(:,5)==0), 1);
urine_general(urine_general_old(:,5)==1, 5) = normrnd(1, 1/6, sum(urine_general_old(:,5)==1), 1);
urine_general(urine_general_old(:,5)==2, 5) = normrnd(2, 1/6, sum(urine_general_old(:,5)==2), 1);
urine_general(urine_general_old(:,5)==3, 5) = normrnd(3, 1/6, sum(urine_general_old(:,5)==3), 1);

urine_general(urine_general_old(:,6)==-1, 6) = normrnd(-1, 1/6, sum(urine_general_old(:,6)==-1), 1);
urine_general(urine_general_old(:,6)==0, 6) = normrnd(0, 1/6, sum(urine_general_old(:,6)==0), 1);
urine_general(urine_general_old(:,6)==1, 6) = normrnd(1, 1/6, sum(urine_general_old(:,6)==1), 1);
urine_general(urine_general_old(:,6)==2, 6) = normrnd(2, 1/6, sum(urine_general_old(:,6)==2), 1);

urine_general(urine_general_old(:,7)==-1, 7) = normrnd(-1, 1/6, sum(urine_general_old(:,7)==-1), 1);
urine_general(urine_general_old(:,7)==0, 7) = normrnd(0, 1/6, sum(urine_general_old(:,7)==0), 1);
urine_general(urine_general_old(:,7)==1, 7) = normrnd(1, 1/6, sum(urine_general_old(:,7)==1), 1);

urine_general(urine_general_old(:,8)==-1, 8) = normrnd(-1, 1/6, sum(urine_general_old(:,8)==-1), 1);
urine_general(urine_general_old(:,8)==0, 8) = normrnd(0, 1/6, sum(urine_general_old(:,8)==0), 1);
urine_general(urine_general_old(:,8)==1, 8) = normrnd(1, 1/6, sum(urine_general_old(:,8)==1), 1);
urine_general(urine_general_old(:,8)==2, 8) = normrnd(2, 1/6, sum(urine_general_old(:,8)==2), 1);
urine_general(urine_general_old(:,8)==3, 8) = normrnd(3, 1/6, sum(urine_general_old(:,8)==3), 1);

urine_general(urine_general_old(:,9)==-1, 9) = normrnd(-1, 2/6, sum(urine_general_old(:,9)==-1), 1);
urine_general(urine_general_old(:,9)==1, 9) = normrnd(1, 2/6, sum(urine_general_old(:,9)==1), 1);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% urine_general col 10-12
%

urine_general(urine_general_old(:,10)==0.9, 10) = normrnd(0.5, 1/6, sum(urine_general_old(:,10)==0.9), 1);
urine_general(urine_general_old(:,10)==1.4, 10) = normrnd(2.5, 3/6, sum(urine_general_old(:,10)==1.4), 1);
urine_general(urine_general_old(:,10)==5.9, 10) = normrnd(7, 4/6,  sum(urine_general_old(:,10)==5.9), 1);
urine_general(urine_general_old(:,10)==10.19, 10) = normrnd(14.5, 9/6,  sum(urine_general_old(:,10)==10.19), 1);
urine_general(urine_general_old(:,10)==20.29, 10) = normrnd(24.5, 9/6,  sum(urine_general_old(:,10)==20.29), 1);
urine_general(urine_general_old(:,10)==30.49, 10) = normrnd(39.5, 19/6,  sum(urine_general_old(:,10)==30.49), 1);
urine_general(urine_general_old(:,10)==50.99, 10) = normrnd(74.5, 49/6,  sum(urine_general_old(:,10)==50.99), 1);
urine_general(urine_general_old(:,10)==100.10, 10) = normrnd(125, 50/6,  sum(urine_general_old(:,10)==100.10), 1);

urine_general(urine_general_old(:,11)==0.9, 11) = normrnd(0.5, 1/6, sum(urine_general_old(:,11)==0.9, 1), 1);
urine_general(urine_general_old(:,11)==1.4, 11) = normrnd(2.5, 3/6, sum(urine_general_old(:,11)==1.4, 1), 1);
urine_general(urine_general_old(:,11)==5.9, 11) = normrnd(7, 4/6, sum(urine_general_old(:,11)==5.9, 1), 1);
urine_general(urine_general_old(:,11)==10.19, 11) = normrnd(14.5, 9/6, sum(urine_general_old(:,11)==10.19, 1), 1);
urine_general(urine_general_old(:,11)==20.29, 11) = normrnd(24.5, 9/6, sum(urine_general_old(:,11)==20.29, 1), 1);
urine_general(urine_general_old(:,11)==30.49, 11) = normrnd(39.5, 19/6, sum(urine_general_old(:,11)==30.49, 1), 1);
urine_general(urine_general_old(:,11)==50.99, 11) = normrnd(74.5, 49/6, sum(urine_general_old(:,11)==50.99, 1), 1);
urine_general(urine_general_old(:,11)==100.10, 11) = normrnd(125, 50/6, sum(urine_general_old(:,11)==100.10, 1), 1);

urine_general(urine_general_old(:,12)==0.9, 12) = normrnd(0.5, 1/6, sum(urine_general_old(:,12)==0.9, 1), 1);
urine_general(urine_general_old(:,12)==1.4, 12) = normrnd(2.5, 3/6, sum(urine_general_old(:,12)==1.4, 1), 1);
urine_general(urine_general_old(:,12)==5.9, 12) = normrnd(7, 4/6, sum(urine_general_old(:,12)==5.9, 1), 1);
urine_general(urine_general_old(:,12)==10.19, 12) = normrnd(14.5, 9/6, sum(urine_general_old(:,12)==10.19, 1), 1);
urine_general(urine_general_old(:,12)==20.29, 12) = normrnd(24.5, 9/6, sum(urine_general_old(:,12)==20.29, 1), 1);
urine_general(urine_general_old(:,12)==30.49, 12) = normrnd(39.5, 19/6, sum(urine_general_old(:,12)==30.49, 1), 1);
urine_general(urine_general_old(:,12)==50.99, 12) = normrnd(74.5, 49/6, sum(urine_general_old(:,12)==50.99, 1), 1);
urine_general(urine_general_old(:,12)==100.10, 12) = normrnd(125, 50/6, sum(urine_general_old(:,12)==100.10, 1), 1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% urine_general col 13-14
%
urine_general(urine_general_old(:,13)==-1, 13) = normrnd(-1, 2/6, sum(urine_general_old(:,13)==-1),1);
urine_general(urine_general_old(:,13)==1, 13) = normrnd(1, 2/6, sum(urine_general_old(:,13)==1),1);


urine_general(urine_general_old(:,14)==-1, 14) = normrnd(-1, 1/6, sum(urine_general_old(:,14)==-1, 1), 1);
urine_general(urine_general_old(:,14)==0, 14) = normrnd(0, 1/6, sum(urine_general_old(:,14)==0, 1), 1);
urine_general(urine_general_old(:,14)==1, 14) = normrnd(1, 1/6, sum(urine_general_old(:,14)==1, 1), 1);
urine_general(urine_general_old(:,14)==2, 14) = normrnd(2, 1/6, sum(urine_general_old(:,14)==2, 1), 1);
urine_general(urine_general_old(:,14)==3, 14) = normrnd(3, 1/6, sum(urine_general_old(:,14)==3, 1), 1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

save('../data/mat/serum_tumor_marker', 'serum_tumor_marker');
save('../data/mat/urine_general', 'urine_general');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% drawings
%
figure; hold on;
[a,b] = sort(serum_tumor_marker_old(:, 28));
plot(serum_tumor_marker(b,28), 'r.');
plot(serum_tumor_marker_old(b,28), '.');
legend('Translated', 'Old', 'location', 'best');
title('serum tumor marker 28');

figure; hold on;
temp = serum_tumor_marker(b,28);
plot([1:400], [temp(1:100, :); temp(2501:2600,:); temp(3801:3900,:); temp(4101:4200,:)], 'r.', 'Markersize', 15);
temp = serum_tumor_marker_old(b,28);
plot([1:400], [temp(1:100, :); temp(2501:2600,:); temp(3801:3900,:); temp(4101:4200,:)], 'b.', 'Markersize', 15);
grid on;
set(gca,'XTick',[0:100:400]);
set(gca,'YTick',[-1.5:1:2.5]);
xlabel('Test index', 'fontsize',15);
ylabel('Test value', 'fontsize',15);
legend('Translated', 'Semi-quantitative', 'location', 'best');
set(gca, 'Fontsize', 15)
% saveas(gcf, '../report/figures/translation_example');
% saveas(gcf, '../report/figures/translation_example.eps', 'psc2');

figure; hold on;
[a,b] = sort(urine_general_old(:, 3));
plot(urine_general(b,3), 'r.');
plot(urine_general_old(b,3), '.');
legend('Translated', 'Old', 'location', 'best');
title('urine_general_old 3');

figure; hold on;
[a,b] = sort(urine_general_old(:, 4));
plot(urine_general(b,4), 'r.');
plot(urine_general_old(b,4), '.');
title('urine_general_old 4');

figure; hold on;
[a,b] = sort(urine_general_old(:, 5));
plot(urine_general(b,5), 'r.');
plot(urine_general_old(b,5), '.');
legend('Translated', 'Old', 'location', 'best');
title('urine_general_old 5');

figure; hold on;
[a,b] = sort(urine_general_old(:, 6));
plot(urine_general(b,6), 'r.');
plot(urine_general_old(b,6), '.');
legend('Translated', 'Old', 'location', 'best');
title('urine_general_old 6');

figure; hold on;
[a,b] = sort(urine_general_old(:, 7));
plot(urine_general(b,7), 'r.');
plot(urine_general_old(b,7), '.');
legend('Translated', 'Old', 'location', 'best');
title('urine_general_old 7');

figure; hold on;
[a,b] = sort(urine_general_old(:, 8));
plot(urine_general(b,8), 'r.');
plot(urine_general_old(b,8), '.');
legend('Translated', 'Old', 'location', 'best');
title('urine_general_old 8');

figure; hold on;
[a,b] = sort(urine_general_old(:, 9));
plot(urine_general(b,9), 'r.');
plot(urine_general_old(b,9), '.');
title('urine_general_old 9');

figure; hold on;
[a,b] = sort(urine_general_old(:, 10));
plot(urine_general(b,10), 'r.');
plot(urine_general_old(b,10), '.');
legend('Translated', 'Old', 'location', 'best');
title('urine_general_old 10');

figure; hold on;
[a,b] = sort(urine_general_old(:, 11));
plot(urine_general(b,11), 'r.');
plot(urine_general_old(b,11), '.');
legend('Translated', 'Old', 'location', 'best');
title('urine_general_old 11');

figure; hold on;
[a,b] = sort(urine_general_old(:, 12));
plot(urine_general(b,12), 'r.');
plot(urine_general_old(b,12), '.');
legend('Translated', 'Old', 'location', 'best');
title('urine_general_old 12');

figure; hold on;
[a,b] = sort(urine_general_old(:, 13));
plot(urine_general(b,13), 'r.');
plot(urine_general_old(b,13), '.');
legend('Translated', 'Old', 'location', 'best');
title('urine_general_old 13');

figure; hold on;
[a,b] = sort(urine_general_old(:, 14));
plot(urine_general(b,14), 'r.');
plot(urine_general_old(b,14), '.');
legend('Translated', 'Old', 'location', 'best');
title('urine_general_old 14');


