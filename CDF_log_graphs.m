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
%%%%%%%%%%  Median calculations of each frequencial category
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

median_data = median(data);
subradio_median = median(data1);
radio_fm_median = median(data2);
TV_median = median(data3);
Tetra_median = median(data4);
LTE800_median = median(data5);
GSM900_median = median(data6);
GPS_median = median(data7);
GSM1800_median = median(data8);
LTE2600_median = median(data9);

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

% Add a line for the median - Ensure 'median_data' variable is defined and not zero or negative 
if exist('median_data','var') && median_data > 0  
    loglog([median_data, median_data], [min(y), max(y)], 'b--'); % Added this line to plot the median 
end

hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in Greece''s Locations TOTAL');

if exist('average','var') && average > 0  
    text(0.05, 0.5, ['Average Radiation: ', num2str(average)], 'Units', 'normalized', 'HorizontalAlignment', 'left');
end 

% Add text for the median - Ensure 'median_data' variable is defined and not zero or negative 
if exist('median_data','var') && median_data > 0  
    text(0.05, 0.45, ['Median Radiation: ', num2str(median_data)], 'Units', 'normalized', 'HorizontalAlignment', 'left'); % Added this line to display the median 
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

% Add a line for the median - Ensure 'subradio_median' variable is defined and not zero or negative 
if exist('subradio_median','var') && subradio_median > 0  
    loglog([subradio_median, subradio_median], [min(y), max(y)], 'b--'); % Added this line to plot the median 
end

hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 75-87 MHz');

if exist('subradio','var') && subradio > 0  
    text(0.05, 0.5, ['Average Radiation: ', num2str(subradio)], 'Units', 'normalized', 'HorizontalAlignment', 'left');
end 

% Add text for the median - Ensure 'median_data' variable is defined and not zero or negative 
if exist('subradio_median','var') && subradio_median > 0  
    text(0.05, 0.45, ['Median Radiation: ', num2str(subradio_median)], 'Units', 'normalized', 'HorizontalAlignment', 'left'); % Added this line to display the median 
end 

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 75-87 MHz'); 
% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 75-87 MHz.png');

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

% Add a line for the median - Ensure 'median_data' variable is defined and not zero or negative 
if exist('radio_fm_median','var') && radio_fm_median > 0  
    loglog([radio_fm_median, radio_fm_median], [min(y), max(y)], 'b--'); % Added this line to plot the median 
end

hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 87-109 MHz');

if exist('radio_fm','var') && radio_fm > 0  
    text(0.05, 0.5, ['Average Radiation: ', num2str(radio_fm)], 'Units', 'normalized', 'HorizontalAlignment', 'left');
end 

% Add text for the median - Ensure 'median_data' variable is defined and not zero or negative 
if exist('radio_fm_median','var') && radio_fm_median > 0  
    text(0.05, 0.45, ['Median Radiation: ', num2str(radio_fm_median)], 'Units', 'normalized', 'HorizontalAlignment', 'left'); % Added this line to display the median 
end 

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 87-109 MHz'); 
% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 87-109 MHz.png');

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

% Add a line for the median - Ensure 'median_data' variable is defined and not zero or negative 
if exist('TV_median','var') && TV_median > 0  
    loglog([TV_median, TV_median], [min(y), max(y)], 'b--'); % Added this line to plot the median 
end

hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 109-300 MHz');

if exist('TV','var') && TV > 0  
    text(0.05, 0.5, ['Average Radiation: ', num2str(TV)], 'Units', 'normalized', 'HorizontalAlignment', 'left');
end 

% Add text for the median - Ensure 'median_data' variable is defined and not zero or negative 
if exist('TV_median','var') && TV_median > 0  
    text(0.05, 0.45, ['Median Radiation: ', num2str(TV_median)], 'Units', 'normalized', 'HorizontalAlignment', 'left'); % Added this line to display the median 
end 

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 109-300 MHz'); 
% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 109-300 MHz.png');
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

% Add a line for the median - Ensure 'median_data' variable is defined and not zero or negative 
if exist('median_data','var') && Tetra_median > 0  
    loglog([Tetra_median, Tetra_median], [min(y), max(y)], 'b--'); % Added this line to plot the median 
end

hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 300-450 MHz');

if exist('Tetra','var') && Tetra > 0  
    text(0.05, 0.5, ['Average Radiation: ', num2str(Tetra)], 'Units', 'normalized', 'HorizontalAlignment', 'left');
end 

% Add text for the median - Ensure 'median_data' variable is defined and not zero or negative 
if exist('median_data','var') && Tetra_median > 0  
    text(0.05, 0.45, ['Median Radiation: ', num2str(Tetra_median)], 'Units', 'normalized', 'HorizontalAlignment', 'left'); % Added this line to display the median 
end 

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 300-450 MHz'); 
% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 300-450 MHz.png');
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

% Add a line for the median - Ensure 'median_data' variable is defined and not zero or negative 
if exist('LTE800_median','var') && LTE800_median > 0  
    loglog([LTE800_median, LTE800_median], [min(y), max(y)], 'b--'); % Added this line to plot the median 
end

hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 450-860 MHz');

if exist('LTE800','var') && LTE800 > 0  
    text(0.05, 0.5, ['Average Radiation: ', num2str(LTE800)], 'Units', 'normalized', 'HorizontalAlignment', 'left');
end 

% Add text for the median - Ensure 'median_data' variable is defined and not zero or negative 
if exist('median_data','var') && median_data > 0  
    text(0.05, 0.45, ['Median Radiation: ', num2str(LTE800_median)], 'Units', 'normalized', 'HorizontalAlignment', 'left'); % Added this line to display the median 
end 

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 450-860 MHz'); 
% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 450-860 MHz.png');
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

% Add a line for the median - Ensure 'median_data' variable is defined and not zero or negative 
if exist('GSM900_median','var') && GSM900_median > 0  
    loglog([GSM900_median, GSM900_median], [min(y), max(y)], 'b--'); % Added this line to plot the median 
end

hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 860-1000 MHz');

if exist('GSM900','var') && GSM900 > 0  
    text(0.05, 0.5, ['Average Radiation: ', num2str(GSM900)], 'Units', 'normalized', 'HorizontalAlignment', 'left');
end 

% Add text for the median - Ensure 'median_data' variable is defined and not zero or negative 
if exist('GSM900_median','var') && median_data > 0  
    text(0.05, 0.45, ['Median Radiation: ', num2str(GSM900_median)], 'Units', 'normalized', 'HorizontalAlignment', 'left'); % Added this line to display the median 
end 

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 860-1000 MHz'); 
% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 860-1000 MHz.png');
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

% Add a line for the median - Ensure 'median_data' variable is defined and not zero or negative 
if exist('GPS_median','var') && GPS_median > 0  
    loglog([GPS_median, GPS_median], [min(y), max(y)], 'b--'); % Added this line to plot the median 
end

hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 1000-1700 MHz');

if exist('GPS','var') && GPS > 0  
    text(0.05, 0.5, ['Average Radiation: ', num2str(GPS)], 'Units', 'normalized', 'HorizontalAlignment', 'left');
end 

% Add text for the median - Ensure 'median_data' variable is defined and not zero or negative 
if exist('GPS_median','var') && GPS_median > 0  
    text(0.05, 0.45, ['Median Radiation: ', num2str(GPS_median)], 'Units', 'normalized', 'HorizontalAlignment', 'left'); % Added this line to display the median 
end 

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 1000-1700 MHz'); 
% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 1000-1700 MHz.png');
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

% Add a line for the median - Ensure 'median_data' variable is defined and not zero or negative 
if exist('GSM1800_median','var') && GSM1800_median > 0  
    loglog([GSM1800_median, GSM1800_median], [min(y), max(y)], 'b--'); % Added this line to plot the median 
end

hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 1700-2200 MHz');

if exist('GSM1800','var') && GSM1800 > 0  
    text(0.05, 0.5, ['Average Radiation: ', num2str(GSM1800)], 'Units', 'normalized', 'HorizontalAlignment', 'left');
end 

% Add text for the median - Ensure 'median_data' variable is defined and not zero or negative 
if exist('GSM1800_median','var') && GSM1800_median > 0  
    text(0.05, 0.45, ['Median Radiation: ', num2str(GSM1800_median)], 'Units', 'normalized', 'HorizontalAlignment', 'left'); % Added this line to display the median 
end 

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 1700-2200 MHz'); 
% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 1700-2200 MHz.png');
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

% Add a line for the median - Ensure 'median_data' variable is defined and not zero or negative 
if exist('LTE2600_median','var') && LTE2600_median > 0  
    loglog([LTE2600_median, LTE2600_median], [min(y), max(y)], 'b--'); % Added this line to plot the median 
end

hold off;
ylabel('Cumulative Probability');
xlabel('Electric Field measurements in (V/m)');
title('CDF of Electric Field measurements in (V/m) in locations of Greece at 2200-3000 MHz');

if exist('LTE2600','var') && LTE2600 > 0  
    text(0.05, 0.5, ['Average Radiation: ', num2str(LTE2600)], 'Units', 'normalized', 'HorizontalAlignment', 'left');
end 

% Add text for the median - Ensure 'median_data' variable is defined and not zero or negative 
if exist('LTE2600_median','var') && LTE2600_median > 0  
    text(0.05, 0.45, ['Median Radiation: ', num2str(LTE2600_median)], 'Units', 'normalized', 'HorizontalAlignment', 'left'); % Added this line to display the median 
end 

% Change the figure title
set(gcf, 'Name', 'CDF of Electric Field measurements in (V/m) in locations of Greece at 2200-3000 MHz'); 
% Print the figures in PNG format
print('-dpng', 'CDF of Electric Field measurements in locations of Greece at 2200-3000 MHz.png');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%