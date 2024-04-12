 X = linspace(-7, 7, 8)';
Y1 = [1.00000000e-11  6.50116091e-02  1.00000000e-11  1.00000000e-11  1.00000000e-11  1.00000000e-11  1.00000000e-11  6.46716562e-02];
Y3 = [0.7343553  0.83016555 0.66743497 0.49287247 0.57452601 0.06433394 0.61555956 0.52371658 ];
Y2 = [];
Y4 = [];
Y1 = Y1 /sum(Y1);
% Y2 = Y2 /sum(Y2);
Y3 = Y3 /sum(Y3);
% Y4 = Y4 /sum(Y4);
% Create figure
figure1 = figure;
% Change default axes fonts.
set(0,'DefaultAxesFontName', 'Times New Roman')
set(0,'DefaultAxesFontSize', 14)
% Create subplot 1
subplot1 = subplot(2,2,1,'Parent',figure1);
hold(subplot1,'on');

stem(X,Y1,'filled')
xlabel('Constelation point') 
ylabel('Probability') 
% title({'a, Q-learning'});
% legend('Baseline1','Baseline2', 'Baseline3','Baseline4','Proposed Scheme')

% Create subplot 2
subplot1 = subplot(2,2,2,'Parent',figure1);
hold(subplot1,'on');

stem(X,Y2,'filled')
xlabel('Constelation point') 
ylabel('Probability') 
% title({'a, Q-learning'});
% legend('Baseline1','Baseline2', 'Baseline3','Baseline4','Proposed Scheme')

% Create subplot 3
subplot1 = subplot(2,2,3,'Parent',figure1);
hold(subplot1,'on');
stem(X,Y3,'filled')
xlabel('Constelation point') 
ylabel('Probability') 
% title({'a, Q-learning'});
% legend('Baseline1','Baseline2', 'Baseline3','Baseline4','Proposed Scheme')

% Create subplot 4
subplot1 = subplot(2,2,4,'Parent',figure1);
hold(subplot1,'on');
stem(X,Y4,'filled')
xlabel('Constelation point') 
ylabel('Probability') 
% title({'a, Q-learning'});
% legend('Baseline1','Baseline2', 'Baseline3','Baseline4','Proposed Scheme')