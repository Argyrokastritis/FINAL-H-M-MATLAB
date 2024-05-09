datasetxlsx = 'all meas SRM1 v1.xlsx';
data = readcell(datasetxlsx, 'Sheet', 1, 'Range', 'P3:P994');
data = cell2mat(data);
average = mean(data);

data1 = readcell(datasetxlsx, 'Sheet', 1, 'Range', 'G2:G994');
data1 = cell2mat(data1);
subradio = mean(data1);

data2 = readcell(datasetxlsx, 'Sheet', 1, 'Range', 'H2:H994');
data2 = cell2mat(data2);
radio_fm = mean(data2);

data3 = readcell(datasetxlsx, 'Sheet', 1, 'Range', 'I2:I994');
data3 = cell2mat(data3);
TV = mean(data3);

data4 = readcell(datasetxlsx, 'Sheet', 1, 'Range', 'J2:J994');
data4 = cell2mat(data4);
Tetra = mean(data4);

data5 = readcell(datasetxlsx, 'Sheet', 1, 'Range', 'K2:K994');
data5 = cell2mat(data5);
LTE800 = mean(data5);

data6 = readcell(datasetxlsx, 'Sheet', 1, 'Range', 'L2:L994');
data6 = cell2mat(data6);
GSM900 = mean(data6);

data7 = readcell(datasetxlsx, 'Sheet', 1, 'Range', 'M2:M994');
data7 = cell2mat(data7);
GPS = mean(data7);

data8 = readcell(datasetxlsx, 'Sheet', 1, 'Range', 'N2:N994');
data8 = cell2mat(data8);
GSM1800 = mean(data8);

data9 = readcell(datasetxlsx, 'Sheet', 1, 'Range', 'O2:O994');
data9 = cell2mat(data9);
LTE2600 = mean(data9);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                          PLOTTING THE  GRAPHS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Plot the first graph in a separate window
figure;
plot(data, 'g'); % 'g' makes the plot green
hold on;
avg_plot = plot([1, length(data)], [average, average], 'r--');
hold off;
ylabel('Electric Field measurements in (V/m)');
xlabel('Places of antennas in Greece territory');
title('Electric Field measurements in (V/m) in Greece''s Locations TOTAL');
text(0.05, 0.5, ['Average Radiation: ', num2str(average)], 'Units', 'normalized', 'HorizontalAlignment', 'left');

% Add a legend
legend(avg_plot, 'Average Radiation');

% Change the figure title
set(gcf, 'Name', 'Electric Field measurements in (V/m) in locations of Greece in TOTAL'); 

% Print the figures in PNG format
print('-dpng', 'Electric Field measurements in locations of Greece in TOTAL.png');



% Plot the second graph in another separate window
figure;
plot(data1);
hold on;
plot([2, length(data1)], [subradio, subradio], 'r--');
hold off;
ylabel('Electric Field measurements in (V/m)');
xlabel('Places of antennas in Greece territory');
title('Electric Field measurements in (V/m) in locations of Greece at 75-87 Hz');
text(0.05, 0.5, ['Average Radiation: ', num2str(subradio)], 'Units', 'normalized', 'HorizontalAlignment', 'left');

% Change the figure title
set(gcf, 'Name', 'Electric Field measurements in (V/m) in locations of Greece at 75-87 Hz'); 

% Print the figures in PNG format
print('-dpng', 'Electric Field measurements in locations of Greece at 75-87 Hz.png');


% Plot the third graph in another separate window
figure;
plot(data2);
hold on;
plot([2, length(data2)], [radio_fm, radio_fm], 'r--');
hold off;
ylabel('Electric Field measurements in (V/m)');
xlabel('Places of antennas in Greece territory');
title('Electric Field measurements in (V/m) in locations of Greece at 87-109 Hz');
text(0.05, 0.5, ['Average Radiation: ', num2str(radio_fm)], 'Units', 'normalized', 'HorizontalAlignment', 'left');

% Change the figure title
set(gcf, 'Name', 'Electric Field measurements in (V/m) in locations of Greece at 87-109 Hz'); 

% Print the figures in PNG format
print('-dpng', 'Electric Field measurements in locations of Greece at 87-109 Hz.png');


% Plot the fourth graph in another separate window
figure;
plot(data3);
hold on;
plot([2, length(data3)], [TV, TV], 'r--');
hold off;
ylabel('Electric Field measurements in (V/m)');
xlabel('Places of antennas in Greece territory');
title('Electric Field measurements in (V/m) in locations of Greece at 109 - 300 Hz');
text(0.05, 0.5, ['Average Radiation: ', num2str(TV)], 'Units', 'normalized', 'HorizontalAlignment', 'left');

% Change the figure title
set(gcf, 'Name', 'Electric Field measurements in (V/m) in locations of Greece at 109 - 300 Hz'); 

% Print the figures in PNG format
print('-dpng', 'Electric Field measurements in locations of Greece at 109 - 300 Hz.png');

% Plot the fifth graph in another separate window
figure;
plot(data4);
hold on;
plot([2, length(data4)], [Tetra, Tetra], 'r--');
hold off;
ylabel('Electric Field measurements in (V/m)');
xlabel('Places of antennas in Greece territory');
title('Electric Field measurements in (V/m) in locations of Greece at 300 - 450 Hz');
text(0.05, 0.5, ['Average Radiation: ', num2str(Tetra)], 'Units', 'normalized', 'HorizontalAlignment', 'left');

% Change the figure title
set(gcf, 'Name', 'Electric Field measurements in (V/m) in locations of Greece at 300 - 450 Hz'); 

% Print the figures in PNG format
print('-dpng', 'Electric Field measurements in locations of Greece at 300 - 450 Hz.png');



% Plot the sixth graph in another separate window
figure;
plot(data5);
hold on;
plot([2, length(data5)], [LTE800, LTE800], 'r--');
hold off;
ylabel('Electric Field measurements in (V/m)');
xlabel('Places of antennas in Greece territory');
title('Electric Field measurements in (V/m) in locations of Greece at 450 - 860  Hz');
text(0.05, 0.5, ['Average Radiation: ', num2str(LTE800)], 'Units', 'normalized', 'HorizontalAlignment', 'left');

% Change the figure title
set(gcf, 'Name', 'Electric Field measurements in (V/m) in locations of Greece at 450 - 860  Hz'); 

% Print the figures in PNG format
print('-dpng', 'Electric Field measurements in locations of Greece at 450 - 860  Hz.png');



% Plot the seventh graph in another separate window
figure;
plot(data6);
hold on;
plot([2, length(data6)], [GSM900, GSM900], 'r--');
hold off;
ylabel('Electric Field measurements in (V/m)');
xlabel('Places of antennas in Greece territory');
title('Electric Field measurements in (V/m) in locations of Greece at 860 - 1000 Hz');
text(0.05, 0.5, ['Average Radiation: ', num2str(GSM900)], 'Units', 'normalized', 'HorizontalAlignment', 'left');

% Change the figure title
set(gcf, 'Name', 'Electric Field measurements in (V/m) in locations of Greece at 860 - 1000 Hz'); 

% Print the figures in PNG format
print('-dpng', 'Electric Field measurements in locations of Greece at 860 - 1000 Hz.png');



% Plot the eighth graph in another separate window
figure;
plot(data7);
hold on;
plot([2, length(data7)], [GPS, GPS], 'r--');
hold off;
ylabel('Electric Field measurements in (V/m)');
xlabel('Places of antennas in Greece territory');
title('Electric Field measurements in (V/m) in locations of Greece at  1000 -1700 Hz');
text(0.05, 0.5, ['Average Radiation: ', num2str(GPS)], 'Units', 'normalized', 'HorizontalAlignment', 'left');

% Change the figure title
set(gcf, 'Name', 'Electric Field measurements in (V/m) in locations of Greece at  1000 -1700 Hz'); 

% Print the figures in PNG format
print('-dpng', 'Electric Field measurements in locations of Greece at  1000 -1700 Hz.png');


% Plot the nineth graph in another separate window
figure;
plot(data8);
hold on;
plot([2, length(data8)], [GSM1800, GSM1800], 'r--');
hold off;
ylabel('Electric Field measurements in (V/m)');
xlabel('Places of antennas in Greece territory');
title('Electric Field measurements in (V/m) in locations of Greece at 1700 - 2200 Hz');
text(0.05, 0.5, ['Average Radiation: ', num2str(GSM1800)], 'Units', 'normalized', 'HorizontalAlignment', 'left');

% Change the figure title
set(gcf, 'Name', 'Electric Field measurements in (V/m) in locations of Greece at 1700 - 2200 Hz'); 

% Print the figures in PNG format
print('-dpng', 'Electric Field measurements in locations of Greece at 1700 - 2200 Hz.png');


% Plot the tenth graph in another separate window
figure;
plot(data9);
hold on;
plot([2, length(data9)], [LTE2600, LTE2600], 'r--');
hold off;
ylabel('Electric Field measurements in (V/m)');
xlabel('Places of antennas in Greece territory');
title('Electric Field measurements in (V/m) in locations of Greece at 2200 - 3000 Hz');
text(0.05, 0.5, ['Average Radiation: ', num2str(LTE2600)], 'Units', 'normalized', 'HorizontalAlignment', 'left');

% Change the figure title
set(gcf, 'Name', 'Electric Field measurements in (V/m) in locations of Greece at 2200 - 3000 Hz'); 

% Print the figures in PNG format
print('-dpng', 'Electric Field measurements in locations of Greece at 2200 - 3000 Hz.png');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%% CREATION OF CDF PLOTS              %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Plot the first CDF graph in a separate window
figure;
% Set the figure window size and position [left, bottom, width, height]
set(gcf, 'Position', [100, 100, 800, 600]); % Modify as needed

% Sort the data in ascending order
sorted_data = sort(data);
% Create a vector of percentiles for the y-axis
y = (1:length(sorted_data))/length(sorted_data);
% Plot the CDF
plot(sorted_data, y);
hold on;
% Add a line for the average
plot([average, average], [0, 1], 'r--');
hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in Greece''s Locations TOTAL');
text(0.05, 0.5, ['Average Radiation: ', num2str(average)], 'Units', 'normalized', 'HorizontalAlignment', 'left');

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece in TOTAL'); 

% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece in TOTAL.png');





% Plot the second CDF graph in a separate window
figure;
% Set the figure window size and position [left, bottom, width, height]
set(gcf, 'Position', [100, 100, 800, 600]); % Modify as needed

% Sort the data in ascending order
sorted_data = sort(data1);
% Create a vector of percentiles for the y-axis
y = (1:length(sorted_data))/length(sorted_data);
% Plot the CDF
plot(sorted_data, y);
hold on;
% Add a line for the average
plot([subradio, subradio], [0, 1], 'r--');
hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 75-87 Hz');
text(0.05, 0.5, ['Average Radiation: ', num2str(subradio)], 'Units', 'normalized', 'HorizontalAlignment', 'left');

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 75-87 Hz'); 

% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 75-87 Hz.png');



% Plot the third CDF graph in a separate window
figure;
% Set the figure window size and position [left, bottom, width, height]
set(gcf, 'Position', [100, 100, 800, 600]); % Modify as needed

% Sort the data in ascending order
sorted_data = sort(data2);
% Create a vector of percentiles for the y-axis
y = (1:length(sorted_data))/length(sorted_data);
% Plot the CDF
plot(sorted_data, y);
hold on;
% Add a line for the average
plot([radio_fm, radio_fm], [0, 1], 'r--');
hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 87-109 Hz');
text(0.05, 0.5, ['Average Radiation: ', num2str(radio_fm)], 'Units', 'normalized', 'HorizontalAlignment', 'left');

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 87-109 Hz'); 

% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 87-109 Hz.png');



% Plot the fourth CDF graph in a separate window
figure;
% Set the figure window size and position [left, bottom, width, height]
set(gcf, 'Position', [100, 100, 800, 600]); % Modify as needed

% Sort the data in ascending order
sorted_data = sort(data3);
% Create a vector of percentiles for the y-axis
y = (1:length(sorted_data))/length(sorted_data);
% Plot the CDF
plot(sorted_data, y);
hold on;
% Add a line for the average
plot([TV, TV], [0, 1], 'r--');
hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 109 - 300 Hz');
text(0.05, 0.5, ['Average Radiation: ', num2str(TV)], 'Units', 'normalized', 'HorizontalAlignment', 'left');

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 109 - 300 Hz'); 

% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 109 - 300 Hz.png');




% Plot the fifth CDF graph in a separate window
figure;
% Set the figure window size and position [left, bottom, width, height]
set(gcf, 'Position', [100, 100, 800, 600]); % Modify as needed

% Sort the data in ascending order
sorted_data = sort(data4);
% Create a vector of percentiles for the y-axis
y = (1:length(sorted_data))/length(sorted_data);
% Plot the CDF
plot(sorted_data, y);
hold on;
% Add a line for the average
plot([Tetra, Tetra], [0, 1], 'r--');
hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 300 - 450 Hz');
text(0.05, 0.5, ['Average Radiation: ', num2str(Tetra)], 'Units', 'normalized', 'HorizontalAlignment', 'left');

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 300 - 450 Hz'); 

% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 300 - 450 Hz.png');



% Plot the sixth CDF graph in a separate window
figure;
% Set the figure window size and position [left, bottom, width, height]
set(gcf, 'Position', [100, 100, 800, 600]); % Modify as needed

% Sort the data in ascending order
sorted_data = sort(data5);
% Create a vector of percentiles for the y-axis
y = (1:length(sorted_data))/length(sorted_data);
% Plot the CDF
plot(sorted_data, y);
hold on;
% Add a line for the average
plot([LTE800, LTE800], [0, 1], 'r--');
hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 450 - 860 Hz');
text(0.05, 0.5, ['Average Radiation: ', num2str(LTE800)], 'Units', 'normalized', 'HorizontalAlignment', 'left');

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 450 - 860 Hz'); 

% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 450 - 860 Hz.png');



% Plot the seventh CDF graph in a separate window
figure;
% Set the figure window size and position [left, bottom, width, height]
set(gcf, 'Position', [100, 100, 800, 600]); % Modify as needed

% Sort the data in ascending order
sorted_data = sort(data6);
% Create a vector of percentiles for the y-axis
y = (1:length(sorted_data))/length(sorted_data);
% Plot the CDF
plot(sorted_data, y);
hold on;
% Add a line for the average
plot([GSM900, GSM900], [0, 1], 'r--');
hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 860 - 1000 Hz');
text(0.05, 0.5, ['Average Radiation: ', num2str(GSM900)], 'Units', 'normalized', 'HorizontalAlignment', 'left');

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 860 - 1000 Hz'); 

% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 860 - 1000 Hz.png');



% Plot the eighth CDF graph in a separate window
figure;
% Set the figure window size and position [left, bottom, width, height]
set(gcf, 'Position', [100, 100, 800, 600]); % Modify as needed

% Sort the data in ascending order
sorted_data = sort(data7);
% Create a vector of percentiles for the y-axis
y = (1:length(sorted_data))/length(sorted_data);
% Plot the CDF
plot(sorted_data, y);
hold on;
% Add a line for the average
plot([GPS, GPS], [0, 1], 'r--');
hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at  1000 -1700 Hz');
text(0.05, 0.5, ['Average Radiation: ', num2str(GPS)], 'Units', 'normalized', 'HorizontalAlignment', 'left');

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at  1000 -1700 Hz'); 

% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at  1000 -1700 Hz.png');



% Plot the ninth graph in a separate window
figure;
% Set the figure window size and position [left, bottom, width, height]
set(gcf, 'Position', [100, 100, 800, 600]); % Modify as needed

% Sort the data in ascending order
sorted_data = sort(data8);
% Create a vector of percentiles for the y-axis
y = (1:length(sorted_data))/length(sorted_data);
% Plot the CDF
plot(sorted_data, y);
hold on;
% Add a line for the average
plot([GSM1800, GSM1800], [0, 1], 'r--');
hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 1700 - 2200 Hz');
text(0.05, 0.5, ['Average Radiation: ', num2str(GSM1800)], 'Units', 'normalized', 'HorizontalAlignment', 'left');

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 1700 - 2200 Hz'); 

% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 1700 - 2200 Hz.png');


% Plot the tenth graph in a separate window
figure;
% Set the figure window size and position [left, bottom, width, height]
set(gcf, 'Position', [100, 100, 800, 600]); % Modify as needed

% Sort the data in ascending order
sorted_data = sort(data9);
% Create a vector of percentiles for the y-axis
y = (1:length(sorted_data))/length(sorted_data);
% Plot the CDF
plot(sorted_data, y);
hold on;
% Add a line for the average
plot([LTE2600, LTE2600], [0, 1], 'r--');
hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 2200 - 3000 Hz');
text(0.05, 0.5, ['Average Radiation: ', num2str(LTE2600)], 'Units', 'normalized', 'HorizontalAlignment', 'left');

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 2200 - 3000 Hz'); 

% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 2200 - 3000 Hz.png');



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%Experiments with
%%%%%%%%%%%%%%%%%%%%%%%%%%%% Semilog axes

% Plot the first CDF graph in a separate window
figure;
% Set the figure window size and position [left, bottom, width, height]
set(gcf, 'Position', [100, 100, 800, 600]); % Modify as needed

% Sort the data in ascending order
sorted_data = sort(data);
% Create a vector of percentiles for the y-axis
y = (1:length(sorted_data))/length(sorted_data);
% Plot the CDF
loglog(sorted_data, y); % Change this line
hold on;

% Add a grid 
grid on; 

% Add a line for the average - Ensure 'average' variable is defined and not zero or negative 
if exist('average','var') && average > 0  
    loglog([average, average], [min(y), max(y)], 'r--'); % Modified this line to ensure it displays if 'average' is defined and positive 
end 

hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in Greece''s Locations TOTAL');

if exist('average','var') && average > 0  
    text(0.05, 0.5, ['Average Radiation: ', num2str(average)], 'Units', 'normalized', 'HorizontalAlignment', 'left');
end 

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece in TOTAL'); 
% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece in TOTAL.png');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Plot the second CDF graph in a separate window
figure;
% Set the figure window size and position [left, bottom, width, height]
set(gcf, 'Position', [100, 100, 800, 600]); % Modify as needed

% Sort the data in ascending order
sorted_data = sort(data1);
% Create a vector of percentiles for the y-axis
y = (1:length(sorted_data))/length(sorted_data);
% Plot the CDF
loglog(sorted_data, y); % Change this line
hold on;

% Add a grid 
grid on; 

% Add a line for the average - Ensure 'average' variable is defined and not zero or negative 
if exist('subradio','var') && subradio > 0  
    loglog([subradio, subradio], [min(y), max(y)], 'r--'); % Modified this line to ensure it displays if 'average' is defined and positive 
end 

hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 75-87Hz');

if exist('subradio','var') && subradio > 0  
    text(0.05, 0.5, ['Average Radiation: ', num2str(subradio)], 'Units', 'normalized', 'HorizontalAlignment', 'left');
end 

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 75-87Hz'); 
% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 75-87Hz.png');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Plot the third CDF graph in a separate window
figure;
% Set the figure window size and position [left, bottom, width, height]
set(gcf, 'Position', [100, 100, 800, 600]); % Modify as needed

% Sort the data in ascending order
sorted_data = sort(data2);
% Create a vector of percentiles for the y-axis
y = (1:length(sorted_data))/length(sorted_data);
% Plot the CDF
loglog(sorted_data, y); % Change this line
hold on;

% Add a grid 
grid on; 

% Add a line for the average - Ensure 'average' variable is defined and not zero or negative 
if exist('radio_fm','var') && average > 0  
    loglog([radio_fm, radio_fm], [min(y), max(y)], 'r--'); % Modified this line to ensure it displays if 'average' is defined and positive 
end 

hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 87-109Hz');

if exist('radio_fm','var') && radio_fm > 0  
    text(0.05, 0.5, ['Average Radiation: ', num2str(radio_fm)], 'Units', 'normalized', 'HorizontalAlignment', 'left');
end 

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 87-109Hz'); 
% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 87-109Hz.png');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Plot the fourth CDF graph in a separate window
figure;
% Set the figure window size and position [left, bottom, width, height]
set(gcf, 'Position', [100, 100, 800, 600]); % Modify as needed

% Sort the data in ascending order
sorted_data = sort(data3);
% Create a vector of percentiles for the y-axis
y = (1:length(sorted_data))/length(sorted_data);
% Plot the CDF
loglog(sorted_data, y); % Change this line
hold on;

% Add a grid 
grid on; 

% Add a line for the average - Ensure 'average' variable is defined and not zero or negative 
if exist('TV','var') && TV > 0  
    loglog([TV, TV], [min(y), max(y)], 'r--'); % Modified this line to ensure it displays if 'average' is defined and positive 
end 

hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 109-300Hz');

if exist('TV','var') && TV > 0  
    text(0.05, 0.5, ['Average Radiation: ', num2str(TV)], 'Units', 'normalized', 'HorizontalAlignment', 'left');
end 

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 109-300Hz'); 
% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 109-300Hz.png');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Plot the fifth CDF graph in a separate window
figure;
% Set the figure window size and position [left, bottom, width, height]
set(gcf, 'Position', [100, 100, 800, 600]); % Modify as needed

% Sort the data in ascending order
sorted_data = sort(data4);
% Create a vector of percentiles for the y-axis
y = (1:length(sorted_data))/length(sorted_data);
% Plot the CDF
loglog(sorted_data, y); % Change this line
hold on;

% Add a grid 
grid on; 

% Add a line for the average - Ensure 'average' variable is defined and not zero or negative 
if exist('Tetra','var') && Tetra > 0  
    loglog([Tetra, Tetra], [min(y), max(y)], 'r--'); % Modified this line to ensure it displays if 'average' is defined and positive 
end 

hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 300-450Hz');

if exist('Tetra','var') && Tetra > 0  
    text(0.05, 0.5, ['Average Radiation: ', num2str(Tetra)], 'Units', 'normalized', 'HorizontalAlignment', 'left');
end 

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 300-450Hz'); 
% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 300-450Hz.png');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Plot the sixth CDF graph in a separate window
figure;
% Set the figure window size and position [left, bottom, width, height]
set(gcf, 'Position', [100, 100, 800, 600]); % Modify as needed

% Sort the data in ascending order
sorted_data = sort(data5);
% Create a vector of percentiles for the y-axis
y = (1:length(sorted_data))/length(sorted_data);
% Plot the CDF
loglog(sorted_data, y); % Change this line
hold on;

% Add a grid 
grid on; 

% Add a line for the average - Ensure 'average' variable is defined and not zero or negative 
if exist('LTE800','var') && LTE800 > 0  
    loglog([LTE800, LTE800], [min(y), max(y)], 'r--'); % Modified this line to ensure it displays if 'average' is defined and positive 
end 

hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 450-860Hz');

if exist('LTE800','var') && LTE800 > 0  
    text(0.05, 0.5, ['Average Radiation: ', num2str(LTE800)], 'Units', 'normalized', 'HorizontalAlignment', 'left');
end 

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 450-860Hz'); 
% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 450-860Hz.png');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Plot the seventh CDF graph in a separate window
figure;
% Set the figure window size and position [left, bottom, width, height]
set(gcf, 'Position', [100, 100, 800, 600]); % Modify as needed

% Sort the data in ascending order
sorted_data = sort(data6);
% Create a vector of percentiles for the y-axis
y = (1:length(sorted_data))/length(sorted_data);
% Plot the CDF
loglog(sorted_data, y); % Change this line
hold on;

% Add a grid 
grid on; 

% Add a line for the average - Ensure 'average' variable is defined and not zero or negative 
if exist('GSM900','var') && GSM900 > 0  
    loglog([GSM900, GSM900], [min(y), max(y)], 'r--'); % Modified this line to ensure it displays if 'average' is defined and positive 
end 

hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 860-1000Hz');

if exist('GSM900','var') && GSM900 > 0  
    text(0.05, 0.5, ['Average Radiation: ', num2str(GSM900)], 'Units', 'normalized', 'HorizontalAlignment', 'left');
end 

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 860-1000Hz'); 
% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 860-1000Hz.png');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Plot the eighth CDF graph in a separate window
figure;
% Set the figure window size and position [left, bottom, width, height]
set(gcf, 'Position', [100, 100, 800, 600]); % Modify as needed

% Sort the data in ascending order
sorted_data = sort(data7);
% Create a vector of percentiles for the y-axis
y = (1:length(sorted_data))/length(sorted_data);
% Plot the CDF
loglog(sorted_data, y); % Change this line
hold on;

% Add a grid 
grid on; 

% Add a line for the average - Ensure 'average' variable is defined and not zero or negative 
if exist('GPS','var') && GPS > 0  
    loglog([GPS, GPS], [min(y), max(y)], 'r--'); % Modified this line to ensure it displays if 'average' is defined and positive 
end 

hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 1000-1700Hz');

if exist('GPS','var') && GPS > 0  
    text(0.05, 0.5, ['Average Radiation: ', num2str(GPS)], 'Units', 'normalized', 'HorizontalAlignment', 'left');
end 

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 1000-1700Hz'); 
% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 1000-1700Hz.png');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Plot the nineth CDF graph in a separate window
figure;
% Set the figure window size and position [left, bottom, width, height]
set(gcf, 'Position', [100, 100, 800, 600]); % Modify as needed

% Sort the data in ascending order
sorted_data = sort(data8);
% Create a vector of percentiles for the y-axis
y = (1:length(sorted_data))/length(sorted_data);
% Plot the CDF
loglog(sorted_data, y); % Change this line
hold on;

% Add a grid 
grid on; 

% Add a line for the average - Ensure 'average' variable is defined and not zero or negative 
if exist('GSM1800','var') && GSM1800 > 0  
    loglog([GSM1800, GSM1800], [min(y), max(y)], 'r--'); % Modified this line to ensure it displays if 'average' is defined and positive 
end 

hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 1700-2200Hz');

if exist('GSM1800','var') && GSM1800 > 0  
    text(0.05, 0.5, ['Average Radiation: ', num2str(GSM1800)], 'Units', 'normalized', 'HorizontalAlignment', 'left');
end 

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 1700-2200Hz'); 
% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 1700-2200Hz.png');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Plot the tenth CDF graph in a separate window
figure;
% Set the figure window size and position [left, bottom, width, height]
set(gcf, 'Position', [100, 100, 800, 600]); % Modify as needed

% Sort the data in ascending order
sorted_data = sort(data9);
% Create a vector of percentiles for the y-axis
y = (1:length(sorted_data))/length(sorted_data);
% Plot the CDF
loglog(sorted_data, y); % Change this line
hold on;

% Add a grid 
grid on; 

% Add a line for the average - Ensure 'average' variable is defined and not zero or negative 
if exist('LTE2600','var') && LTE2600 > 0  
    loglog([LTE2600, LTE2600], [min(y), max(y)], 'r--'); % Modified this line to ensure it displays if 'average' is defined and positive 
end 

hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 2200-3000Hz');

if exist('LTE2600','var') && LTE2600 > 0  
    text(0.05, 0.5, ['Average Radiation: ', num2str(LTE2600)], 'Units', 'normalized', 'HorizontalAlignment', 'left');
end 

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 2200-3000Hz'); 
% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 2200-3000Hz.png');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%