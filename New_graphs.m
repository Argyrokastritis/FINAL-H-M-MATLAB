datasetxlsx = 'all meas SRM1 v1.xlsx';

data = readcell(datasetxlsx, 'Sheet', 1, 'Range', 'P3:P994');
total_data = cell2mat(data);
total_average = mean(total_data);


data1 = readcell(datasetxlsx, 'Sheet', 1, 'Range', 'G2:G994');
radio = cell2mat(data1);
radio_average = mean(radio);


data2 = readcell(datasetxlsx, 'Sheet', 1, 'Range', 'H2:H994');
fm = cell2mat(data2);
fm_average2 = mean(fm);


data3 = readcell(datasetxlsx, 'Sheet', 1, 'Range', 'I2:I994');
tv = cell2mat(data3);
tv_average = mean(tv);


data4 = readcell(datasetxlsx, 'Sheet', 1, 'Range', 'J2:J994');
tetra = cell2mat(data4);
tetra_average = mean(tetra);


data5 = readcell(datasetxlsx, 'Sheet', 1, 'Range', 'K2:K994');
uhf = cell2mat(data5);
uhf_average = mean(uhf);


data6 = readcell(datasetxlsx, 'Sheet', 1, 'Range', 'L2:L994');
gsm = cell2mat(data6);
gsm_average = mean(gsm);


data7 = readcell(datasetxlsx, 'Sheet', 1, 'Range', 'M2:M994');
gps = cell2mat(data7);
gps_average = mean(gps);


data8 = readcell(datasetxlsx, 'Sheet', 1, 'Range', 'N2:N994');
umts = cell2mat(data8);
umts_average = mean(umts);


data9 = readcell(datasetxlsx, 'Sheet', 1, 'Range', 'O2:O994');
wifi = cell2mat(data9);
wifi_average = mean(wifi);

% Find the Outdoor data and extract them to new excel
% Load the data from the Excel file
out_data = readtable('all meas SRM1 v1.xlsx');
% Find the rows that contain 'Ο' in the I/O column
outdoor_rows = find(strcmp(out_data{:, 4}, 'O'));
% Extract the rows that contain 'Ο'
outdoor_data = out_data(outdoor_rows, :);
% Write the filtered data to a new Excel file
writetable(outdoor_data, 'all meas SRM1 v1 outdoor.xlsx');

o_datasetxlsx = 'all meas SRM1 v1 outdoor.xlsx';
o_data = readcell(o_datasetxlsx, 'Sheet', 1, 'Range', 'P2:P751');
o_total_data = cell2mat(o_data);
o_total_average = mean(o_total_data);


o_data1 = readcell(o_datasetxlsx, 'Sheet', 1, 'Range', 'G2:G751');
o_radio = cell2mat(o_data1);
o_radio_average = mean(o_radio);


o_data2 = readcell(o_datasetxlsx, 'Sheet', 1, 'Range', 'H2:H751');
o_fm = cell2mat(o_data2);
o_fm_average = mean(o_fm);


o_data3 = readcell(o_datasetxlsx, 'Sheet', 1, 'Range', 'I2:I751');
o_tv = cell2mat(o_data3);
o_tv_average = mean(o_tv);


o_data4 = readcell(o_datasetxlsx, 'Sheet', 1, 'Range', 'J2:J751');
o_tetra = cell2mat(o_data4);
o_tetra_average = mean(o_tetra);


o_data5 = readcell(o_datasetxlsx, 'Sheet', 1, 'Range', 'K2:K751');
o_uhf = cell2mat(o_data5);
o_uhf_average = mean(o_uhf);


o_data6 = readcell(o_datasetxlsx, 'Sheet', 1, 'Range', 'L2:L751');
o_gsm = cell2mat(o_data6);
o_gsm_average = mean(o_gsm);


o_data7 = readcell(o_datasetxlsx, 'Sheet', 1, 'Range', 'M2:M751');
o_gps = cell2mat(o_data7);
o_gps_average = mean(o_gps);


o_data8 = readcell(o_datasetxlsx, 'Sheet', 1, 'Range', 'N2:N751');
o_umts = cell2mat(o_data8);
o_umts_average = mean(o_umts);


o_data9 = readcell(o_datasetxlsx, 'Sheet', 1, 'Range', 'O2:O751');
o_wifi = cell2mat(o_data9);
o_wifi_average = mean(o_wifi);

% Find the Indoor data and extract them to new excel
% Load the data from the Excel file
ind_data = readtable('all meas SRM1 v1.xlsx');
% Find the rows that contain 'I' in the I/O column
indoor_rows = find(strcmp(ind_data{:, 4}, 'I'));
% Extract the rows that contain 'I'
indoor_data = ind_data(indoor_rows, :);
% Write the filtered data to a new Excel file
writetable(indoor_data, 'all meas SRM1 v1 indoor.xlsx');

i_filename = 'all meas SRM1 v1 indoor.xlsx';
i_data = readcell(i_filename, 'Sheet', 1, 'Range', 'P2:P242');
i_total_data = cell2mat(i_data);
i_total_average = mean(i_total_data);

i_filename1 = 'all meas SRM1 v1 indoor.xlsx';
i_data1 = readcell(i_filename1, 'Sheet', 1, 'Range', 'G2:G242');
i_radio = cell2mat(i_data1);
i_radio_average = mean(i_radio);

i_filename2 = 'all meas SRM1 v1 indoor.xlsx';
i_data2 = readcell(i_filename2, 'Sheet', 1, 'Range', 'H2:H242');
i_fm = cell2mat(i_data2);
i_fm_average = mean(i_fm);

i_filename3 = 'all meas SRM1 v1 indoor.xlsx';
i_data3 = readcell(i_filename3, 'Sheet', 1, 'Range', 'I2:I242');
i_tv = cell2mat(i_data3);
i_tv_average = mean(i_tv);

i_filename4 = 'all meas SRM1 v1 indoor.xlsx';
i_data4 = readcell(i_filename4, 'Sheet', 1, 'Range', 'J2:J242');
i_tetra = cell2mat(i_data4);
i_tetra_average = mean(i_tetra);

i_filename5 = 'all meas SRM1 v1 indoor.xlsx';
i_data5 = readcell(i_filename5, 'Sheet', 1, 'Range', 'K2:K242');
i_uhf = cell2mat(i_data5);
i_uhf_average = mean(i_uhf);

i_filename6 = 'all meas SRM1 v1 indoor.xlsx';
i_data6 = readcell(i_filename6, 'Sheet', 1, 'Range', 'L2:L242');
i_gsm = cell2mat(i_data6);
i_gsm_average = mean(i_gsm);

i_filename7 = 'all meas SRM1 v1 indoor.xlsx';
i_data7 = readcell(i_filename7, 'Sheet', 1, 'Range', 'M2:M242');
i_gps = cell2mat(i_data7);
i_gps_average = mean(i_gps);

i_filename8 = 'all meas SRM1 v1 indoor.xlsx';
i_data8 = readcell(i_filename8, 'Sheet', 1, 'Range', 'N2:N242');
i_umts = cell2mat(i_data8);
i_umts_average = mean(i_umts);

i_filename9 = 'all meas SRM1 v1 indoor.xlsx';
i_data9 = readcell(i_filename9, 'Sheet', 1, 'Range', 'O2:O242');
i_wifi = cell2mat(i_data9);
i_wifi_average = mean(i_wifi);


% Find the Antenna Parks (AP) data and extract them to new excel
% Load the data from the Excel file
ap_data = readtable('all meas SRM1 v1.xlsx');
% Find the rows that contain 'I' in the I/O column
ap_rows = find(strcmp(ap_data{:, 2}, 'AP'));
% Extract the rows that contain 'I'
ap_data = ind_data(ap_rows, :);
% Write the filtered data to a new Excel file
writetable(ap_data, 'all meas SRM1 v1 AP.xlsx');

ap_filename = 'all meas SRM1 v1 AP.xlsx';
ap_data = readcell(ap_filename, 'Sheet', 1, 'Range', 'P2:P146');
ap_total_data = cell2mat(ap_data);
ap_total_average = mean(ap_total_data);

ap_filename1 = 'all meas SRM1 v1 AP.xlsx';
ap_data1 = readcell(ap_filename1, 'Sheet', 1, 'Range', 'G2:G146');
ap_radio = cell2mat(ap_data1);
ap_radio_average = mean(ap_radio);

ap_filename2 = 'all meas SRM1 v1 AP.xlsx';
ap_data2 = readcell(ap_filename2, 'Sheet', 1, 'Range', 'H2:H146');
ap_fm = cell2mat(ap_data2);
ap_fm_average = mean(ap_fm);

ap_filename3 = 'all meas SRM1 v1 AP.xlsx';
ap_data3 = readcell(ap_filename3, 'Sheet', 1, 'Range', 'I2:I146');
ap_tv = cell2mat(ap_data3);
ap_tv_average = mean(ap_tv);

ap_filename4 = 'all meas SRM1 v1 AP.xlsx';
ap_data4 = readcell(ap_filename4, 'Sheet', 1, 'Range', 'J2:J146');
ap_tetra = cell2mat(ap_data4);
ap_tetra_average = mean(ap_tetra);

ap_filename5 = 'all meas SRM1 v1 AP.xlsx';
ap_data5 = readcell(ap_filename5, 'Sheet', 1, 'Range', 'K2:K146');
ap_uhf = cell2mat(ap_data5);
ap_uhf_average = mean(ap_uhf);

ap_filename6 = 'all meas SRM1 v1 AP.xlsx';
ap_data6 = readcell(ap_filename6, 'Sheet', 1, 'Range', 'L2:L146');
ap_gsm = cell2mat(ap_data6);
ap_gsm_average = mean(ap_gsm);

ap_filename7 = 'all meas SRM1 v1 AP.xlsx';
ap_data7 = readcell(ap_filename7, 'Sheet', 1, 'Range', 'M2:M146');
ap_gps = cell2mat(ap_data7);
ap_gps_average = mean(ap_gps);

ap_filename8 = 'all meas SRM1 v1 AP.xlsx';
ap_data8 = readcell(ap_filename8, 'Sheet', 1, 'Range', 'N2:N146');
ap_umts = cell2mat(ap_data8);
ap_umts_average = mean(ap_umts);

ap_filename9 = 'all meas SRM1 v1 AP.xlsx';
ap_data9 = readcell(ap_filename9, 'Sheet', 1, 'Range', 'O2:O146');
ap_wifi = cell2mat(ap_data9);
ap_wifi_average = mean(ap_wifi);

% Find the Outdoors Urban data and extract them to new excel
% Load the data from the Excel file
u_data = readtable('all meas SRM1 v1 outdoor.xlsx');
% Find the rows that contain 'I' in the I/O column
u_rows = find(strcmp(u_data{:, 5}, 'U'));
% Extract the rows that contain 'U'
u_data = u_data(u_rows, :);
% Write the filtered data to a new Excel file
writetable(u_data, 'all meas SRM1 v1 OUT URBAN.xlsx');

u_filename = 'all meas SRM1 v1 OUT URBAN.xlsx';
u_data = readcell(u_filename, 'Sheet', 1, 'Range', 'P2:P339');
u_total_data = cell2mat(u_data);
u_total_average = mean(u_total_data);

u_filename1 = 'all meas SRM1 v1 OUT URBAN.xlsx';
u_data1 = readcell(u_filename1, 'Sheet', 1, 'Range', 'G2:G339');
u_radio = cell2mat(u_data1);
u_radio_average = mean(u_radio);

u_filename2 = 'all meas SRM1 v1 OUT URBAN.xlsx';
u_data2 = readcell(u_filename2, 'Sheet', 1, 'Range', 'H2:H339');
u_fm = cell2mat(u_data2);
u_fm_average = mean(u_fm);

u_filename3 = 'all meas SRM1 v1 OUT URBAN.xlsx';
u_data3 = readcell(u_filename3, 'Sheet', 1, 'Range', 'I2:I339');
u_tv = cell2mat(u_data3);
u_tv_average = mean(u_tv);

u_filename4 = 'all meas SRM1 v1 OUT URBAN.xlsx';
u_data4 = readcell(u_filename4, 'Sheet', 1, 'Range', 'J2:J339');
u_tetra = cell2mat(u_data4);
u_tetra_average = mean(u_tetra);

u_filename5 = 'all meas SRM1 v1 OUT URBAN.xlsx';
u_data5 = readcell(u_filename5, 'Sheet', 1, 'Range', 'K2:K339');
u_uhf = cell2mat(u_data5);
u_uhf_average = mean(u_uhf);

u_filename6 = 'all meas SRM1 v1 OUT URBAN.xlsx';
u_data6 = readcell(u_filename6, 'Sheet', 1, 'Range', 'L2:L339');
u_gsm = cell2mat(u_data6);
u_gsm_average = mean(u_gsm);

u_filename7 = 'all meas SRM1 v1 OUT URBAN.xlsx';
u_data7 = readcell(u_filename7, 'Sheet', 1, 'Range', 'M2:M339');
u_gps = cell2mat(u_data7);
u_gps_average = mean(u_gps);

u_filename8 = 'all meas SRM1 v1 OUT URBAN.xlsx';
u_data8 = readcell(u_filename8, 'Sheet', 1, 'Range', 'N2:N339');
u_umts = cell2mat(u_data8);
u_umts_average = mean(u_umts);

u_filename9 = 'all meas SRM1 v1 OUT URBAN.xlsx';
u_data9 = readcell(u_filename9, 'Sheet', 1, 'Range', 'O2:O339');
u_wifi = cell2mat(u_data9);
u_wifi_average = mean(u_wifi);

% Find the Outdoors Suburban data data and extract them to new excel
% Load the data from the Excel file
su_data = readtable('all meas SRM1 v1 outdoor.xlsx');
% Find the rows that contain 'SU' in the I/O column
su_rows = find(strcmp(su_data{:, 5}, 'SU'));
% Extract the rows that contain 'SU'
su_data = su_data(su_rows, :);
% Write the filtered data to a new Excel file
writetable(su_data, 'all meas SRM1 v1 OUT SUBURBAN.xlsx');

su_filename = 'all meas SRM1 v1 OUT SUBURBAN.xlsx';
su_data = readcell(su_filename, 'Sheet', 1, 'Range', 'P2:P142');
su_total_data = cell2mat(su_data);
su_total_average = mean(su_total_data);

su_filename1 = 'all meas SRM1 v1 OUT SUBURBAN.xlsx';
su_data1 = readcell(su_filename1, 'Sheet', 1, 'Range', 'G2:G142');
su_radio = cell2mat(su_data1);
su_radio_average = mean(su_radio);

su_filename2 = 'all meas SRM1 v1 OUT SUBURBAN.xlsx';
su_data2 = readcell(su_filename2, 'Sheet', 1, 'Range', 'H2:H142');
su_fm = cell2mat(su_data2);
su_fm_average = mean(su_fm);

su_filename3 = 'all meas SRM1 v1 OUT SUBURBAN.xlsx';
su_data3 = readcell(su_filename3, 'Sheet', 1, 'Range', 'I2:I142');
su_tv = cell2mat(su_data3);
su_tv_average = mean(su_tv);

su_filename4 = 'all meas SRM1 v1 OUT SUBURBAN.xlsx';
su_data4 = readcell(su_filename4, 'Sheet', 1, 'Range', 'J2:J142');
su_tetra = cell2mat(su_data4);
su_tetra_average = mean(su_tetra);

su_filename5 = 'all meas SRM1 v1 OUT SUBURBAN.xlsx';
su_data5 = readcell(su_filename5, 'Sheet', 1, 'Range', 'K2:K142');
su_uhf = cell2mat(su_data5);
su_uhf_average = mean(su_uhf);

su_filename6 = 'all meas SRM1 v1 OUT SUBURBAN.xlsx';
su_data6 = readcell(su_filename6, 'Sheet', 1, 'Range', 'L2:L142');
su_gsm = cell2mat(su_data6);
su_gsm_average = mean(su_gsm);

su_filename7 = 'all meas SRM1 v1 OUT SUBURBAN.xlsx';
su_data7 = readcell(su_filename7, 'Sheet', 1, 'Range', 'M2:M142');
su_gps = cell2mat(su_data7);
su_gps_average = mean(su_gps);

su_filename8 = 'all meas SRM1 v1 OUT SUBURBAN.xlsx';
su_data8 = readcell(su_filename8, 'Sheet', 1, 'Range', 'N2:N142');
su_umts = cell2mat(su_data8);
su_umts_average = mean(su_umts);

su_filename9 = 'all meas SRM1 v1 OUT SUBURBAN.xlsx';
su_data9 = readcell(su_filename9, 'Sheet', 1, 'Range', 'O2:O142');
su_wifi = cell2mat(su_data9);
su_wifi_average = mean(su_wifi);

% Find the Outdoor rural data and extract them to new excel
% Load the data from the Excel file
r_data = readtable('all meas SRM1 v1 outdoor.xlsx');
% Find the rows that contain 'R' in the I/O column
r_rows = find(strcmp(r_data{:, 5}, 'R'));
% Extract the rows that contain 'R'
r_data = r_data(r_rows, :);
% Write the filtered data to a new Excel file
writetable(r_data, 'all meas SRM1 v1 OUT RURAL.xlsx');

r_filename = 'all meas SRM1 v1 OUT RURAL.xlsx';
r_data = readcell(r_filename, 'Sheet', 1, 'Range', 'P2:P253');
r_total_data = cell2mat(r_data);
r_total_average = mean(r_total_data);

r_filename1 = 'all meas SRM1 v1 OUT RURAL.xlsx';
r_data1 = readcell(r_filename1, 'Sheet', 1, 'Range', 'G2:G253');
r_radio = cell2mat(r_data1);
r_radio_average = mean(r_radio);

r_filename2 = 'all meas SRM1 v1 OUT RURAL.xlsx';
r_data2 = readcell(r_filename2, 'Sheet', 1, 'Range', 'H2:H253');
r_fm = cell2mat(r_data2);
r_fm_average = mean(r_fm);

r_filename3 = 'all meas SRM1 v1 OUT RURAL.xlsx';
r_data3 = readcell(r_filename3, 'Sheet', 1, 'Range', 'I2:I253');
r_tv = cell2mat(r_data3);
r_tv_average = mean(r_tv);

r_filename4 = 'all meas SRM1 v1 OUT RURAL.xlsx';
r_data4 = readcell(r_filename4, 'Sheet', 1, 'Range', 'J2:J253');
r_tetra = cell2mat(r_data4);
r_tetra_average = mean(r_tetra);

r_filename5 = 'all meas SRM1 v1 OUT RURAL.xlsx';
r_data5 = readcell(r_filename5, 'Sheet', 1, 'Range', 'K2:K253');
r_uhf = cell2mat(r_data5);
r_uhf_average = mean(r_uhf);

r_filename6 = 'all meas SRM1 v1 OUT RURAL.xlsx';
r_data6 = readcell(r_filename6, 'Sheet', 1, 'Range', 'L2:L253');
r_gsm = cell2mat(r_data6);
r_gsm_average = mean(r_gsm);

r_filename7 = 'all meas SRM1 v1 OUT RURAL.xlsx';
r_data7 = readcell(r_filename7, 'Sheet', 1, 'Range', 'M2:M253');
r_gps = cell2mat(r_data7);
r_gps_average = mean(r_gps);

r_filename8 = 'all meas SRM1 v1 OUT RURAL.xlsx';
r_data8 = readcell(r_filename8, 'Sheet', 1, 'Range', 'N2:N253');
r_umts = cell2mat(r_data8);
r_umts_average = mean(r_umts);

r_filename9 = 'all meas SRM1 v1 OUT RURAL.xlsx';
r_data9 = readcell(r_filename9, 'Sheet', 1, 'Range', 'O2:O253');
r_wifi = cell2mat(r_data9);
r_wifi_average = mean(r_wifi);

% Find the Outdoor rural data and extract them to new excel
% Load the data from the Excel file
air_data = readtable('all meas SRM1 v1 outdoor.xlsx');
% Find the rows that contain 'Airport' in the I/O column
air_rows = find(strcmp(air_data{:, 2}, 'Airport'));
% Extract the rows that contain 'Airport'
air_data = air_data(air_rows, :);
% Write the filtered data to a new Excel file
writetable(air_data, 'all meas SRM1 v1 Airports.xlsx');

air_filename = 'all meas SRM1 v1 Airports.xlsx';
air_data = readcell(air_filename, 'Sheet', 1, 'Range', 'P2:P40');
air_total_data = cell2mat(air_data);
air_total_average = mean(air_total_data);

air_filename1 = 'all meas SRM1 v1 Airports.xlsx';
air_data1 = readcell(air_filename1, 'Sheet', 1, 'Range', 'G2:G40');
air_radio = cell2mat(air_data1);
air_radio_average = mean(air_radio);

air_filename2 = 'all meas SRM1 v1 Airports.xlsx';
air_data2 = readcell(air_filename2, 'Sheet', 1, 'Range', 'H2:H40');
air_fm = cell2mat(air_data2);
air_fm_average = mean(air_fm);

air_filename3 = 'all meas SRM1 v1 Airports.xlsx';
air_data3 = readcell(air_filename3, 'Sheet', 1, 'Range', 'I2:I40');
air_tv = cell2mat(air_data3);
air_tv_average = mean(air_tv);

air_filename4 = 'all meas SRM1 v1 Airports.xlsx';
air_data4 = readcell(air_filename4, 'Sheet', 1, 'Range', 'J2:J40');
air_tetra = cell2mat(air_data4);
air_tetra_average = mean(air_tetra);

air_filename5 = 'all meas SRM1 v1 Airports.xlsx';
air_data5 = readcell(air_filename5, 'Sheet', 1, 'Range', 'K2:K40');
air_uhf = cell2mat(air_data5);
air_uhf_average = mean(air_uhf);

air_filename6 = 'all meas SRM1 v1 Airports.xlsx';
air_data6 = readcell(air_filename6, 'Sheet', 1, 'Range', 'L2:L40');
air_gsm = cell2mat(air_data6);
air_gsm_average = mean(air_gsm);

air_filename7 = 'all meas SRM1 v1 Airports.xlsx';
air_data7 = readcell(air_filename7, 'Sheet', 1, 'Range', 'M2:M40');
air_gps = cell2mat(air_data7);
air_gps_average = mean(air_gps);

air_filename8 = 'all meas SRM1 v1 Airports.xlsx';
air_data8 = readcell(air_filename8, 'Sheet', 1, 'Range', 'N2:N40');
air_umts = cell2mat(air_data8);
air_umts_average = mean(air_umts);

air_filename9 = 'all meas SRM1 v1 Airports.xlsx';
air_data9 = readcell(air_filename9, 'Sheet', 1, 'Range', 'O2:O40');
air_wifi = cell2mat(air_data9);
air_wifi_average = mean(air_wifi);

% Find the Outdoor Rooftops data and extract them to new excel
% Load the data from the Excel file
rt_data = readtable('all meas SRM1 v1 outdoor.xlsx');
% Find the rows that contain 'RT' in the I/O column
rt_rows = find(strcmp(rt_data{:, 3}, 'RT'));
% Extract the rows that contain 'RT'
rt_data = rt_data(rt_rows, :);
% Write the filtered data to a new Excel file
writetable(rt_data, 'all meas SRM1 v1 Rooftops.xlsx');

rt_filename = 'all meas SRM1 v1 Rooftops.xlsx';
rt_data = readcell(rt_filename, 'Sheet', 1, 'Range', 'P2:P82');
rt_total_data = cell2mat(rt_data);
rt_total_average = mean(rt_total_data);

rt_filename1 = 'all meas SRM1 v1 Rooftops.xlsx';
rt_data1 = readcell(rt_filename1, 'Sheet', 1, 'Range', 'G2:G82');
rt_radio = cell2mat(rt_data1);
rt_radio_average = mean(rt_radio);

rt_filename2 = 'all meas SRM1 v1 Rooftops.xlsx';
rt_data2 = readcell(rt_filename2, 'Sheet', 1, 'Range', 'H2:H82');
rt_fm = cell2mat(rt_data2);
rt_fm_average = mean(rt_fm);

rt_filename3 = 'all meas SRM1 v1 Rooftops.xlsx';
rt_data3 = readcell(rt_filename3, 'Sheet', 1, 'Range', 'I2:I82');
rt_tv = cell2mat(rt_data3);
rt_tv_average = mean(rt_tv);

rt_filename4 = 'all meas SRM1 v1 Rooftops.xlsx';
rt_data4 = readcell(rt_filename4, 'Sheet', 1, 'Range', 'J2:J82');
rt_tetra = cell2mat(rt_data4);
rt_tetra_average = mean(rt_tetra);

rt_filename5 = 'all meas SRM1 v1 Rooftops.xlsx';
rt_data5 = readcell(rt_filename5, 'Sheet', 1, 'Range', 'K2:K82');
rt_uhf = cell2mat(rt_data5);
rt_uhf_average = mean(rt_uhf);

rt_filename6 = 'all meas SRM1 v1 Rooftops.xlsx';
rt_data6 = readcell(rt_filename6, 'Sheet', 1, 'Range', 'L2:L82');
rt_gsm = cell2mat(rt_data6);
rt_gsm_average = mean(rt_gsm);

rt_filename7 = 'all meas SRM1 v1 Rooftops.xlsx';
rt_data7 = readcell(rt_filename7, 'Sheet', 1, 'Range', 'M2:M82');
rt_gps = cell2mat(rt_data7);
rt_gps_average = mean(rt_gps);

rt_filename8 = 'all meas SRM1 v1 Rooftops.xlsx';
rt_data8 = readcell(rt_filename8, 'Sheet', 1, 'Range', 'N2:N82');
rt_umts = cell2mat(rt_data8);
rt_umts_average = mean(rt_umts);

rt_filename9 = 'all meas SRM1 v1 Rooftops.xlsx';
rt_data9 = readcell(rt_filename9, 'Sheet', 1, 'Range', 'O2:O82');
rt_wifi = cell2mat(rt_data9);
rt_wifi_average = mean(rt_wifi);

% Find the Outdoor Streets data and extract them to new excel
% Load the data from the Excel file
street_data = readtable('all meas SRM1 v1 outdoor.xlsx');
% Find the rows that contain 'RT' in the I/O column
street_rows = find(strcmp(street_data{:, 3}, 'RT'));
% Extract the rows that contain 'RT'
street_data = street_data(rt_rows, :);
% Write the filtered data to a new Excel file
writetable(street_data, 'all meas SRM1 v1 Street data.xlsx');

street_filename = 'all meas SRM1 v1 Rooftops.xlsx';
street_data = readcell(street_filename, 'Sheet', 1, 'Range', 'P2:P82');
street_total_data = cell2mat(street_data);
street_total_average = mean(street_total_data);

street_filename1 = 'all meas SRM1 v1 Rooftops.xlsx';
street_data1 = readcell(street_filename1, 'Sheet', 1, 'Range', 'G2:G82');
street_radio = cell2mat(street_data1);
street_radio_average = mean(street_radio);

street_filename2 = 'all meas SRM1 v1 Rooftops.xlsx';
street_data2 = readcell(street_filename2, 'Sheet', 1, 'Range', 'H2:H82');
street_fm = cell2mat(street_data2);
street_fm_average = mean(street_fm);

street_filename3 = 'all meas SRM1 v1 Rooftops.xlsx';
street_data3 = readcell(street_filename3, 'Sheet', 1, 'Range', 'I2:I82');
street_tv = cell2mat(street_data3);
street_tv_average = mean(street_tv);

street_filename4 = 'all meas SRM1 v1 Rooftops.xlsx';
street_data4 = readcell(street_filename4, 'Sheet', 1, 'Range', 'J2:J82');
street_tetra = cell2mat(street_data4);
street_tetra_average = mean(street_tetra);

street_filename5 = 'all meas SRM1 v1 Rooftops.xlsx';
street_data5 = readcell(street_filename5, 'Sheet', 1, 'Range', 'K2:K82');
street_uhf = cell2mat(street_data5);
street_uhf_average = mean(street_uhf);

street_filename6 = 'all meas SRM1 v1 Rooftops.xlsx';
street_data6 = readcell(street_filename6, 'Sheet', 1, 'Range', 'L2:L82');
street_gsm = cell2mat(street_data6);
street_gsm_average = mean(street_gsm);

street_filename7 = 'all meas SRM1 v1 Rooftops.xlsx';
street_data7 = readcell(street_filename7, 'Sheet', 1, 'Range', 'M2:M82');
street_gps = cell2mat(street_data7);
street_gps_average = mean(street_gps);

street_filename8 = 'all meas SRM1 v1 Rooftops.xlsx';
street_data8 = readcell(street_filename8, 'Sheet', 1, 'Range', 'N2:N82');
street_umts = cell2mat(street_data8);
street_umts_average = mean(street_umts);

street_filename9 = 'all meas SRM1 v1 Rooftops.xlsx';
street_data9 = readcell(street_filename9, 'Sheet', 1, 'Range', 'O2:O82');
street_wifi = cell2mat(street_data9);
street_wifi_average = mean(street_wifi);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                CREATION OF GRAPHS OF RADIATION MEASUREMENTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%FIRST GRAPH IS THE GRAPH OF MEAN OF O, I, AP SO WE NEED THE
%o_total_average, i_total_average, ap_total_average
figure('Position', [0 0 800 600]);
% Define the labels
labels = {'Total mean outdoor radiation', 'Total mean indoor radiation', 'Total mean antenna parks radiation'};
% Define the electric field values
electric_field = [10, 20, 30];
% Create the bar chart
bar(electric_field, [o_total_average, i_total_average, ap_total_average], 0.3,"green");
% Add the labels to the x-axis
xticklabels(labels);
% Add the labels to the y-axis
ylabel('Electric Field (V/m)');
%set(gca, 'YScale', 'log');
ylim([0 max([o_total_average, i_total_average, ap_total_average])+1]);
% Change the figure title
set(gcf, 'Name', 'Mean of O, I, AP from 75-3000 MHz');
% Add a title to the chart
title('Total mean of O, I, AP from 75-3000 MHz');
% Add grid
grid on;
% Print the figures in PNG format
print('-dpng', 'Total mean of O, I, AP from 75-3000 MHz');



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%SECOND GRAPH IS THE GRAPH OF MEAN OF U, SU, R SO WE NEED THE
%u_total_average, su_total_average, r_total_average
figure('Position', [0 0 800 600]);
% Define the labels
labels = {'mean urban radiation', 'mean suburban radiation', 'mean rural radiation'};
% Define the electric field values
electric_field = [10, 20, 30];
% Create the bar chart
bar(electric_field, [u_total_average, su_total_average, r_total_average], 0.3,"green");
% Add the labels to the x-axis
xticklabels(labels);
% Add the labels to the y-axis
ylabel('Electric Field (V/m)');
%set(gca, 'YScale', 'log');
ylim([0 max([u_total_average, su_total_average, r_total_average])+1]);
% Change the figure title
set(gcf, 'Name', 'Mean of U, SU, R from 75-3000 MHz');
% Add a title to the chart
title('Total mean of U, SU, R from 75-3000 MHz');
% Add grid
grid on;
% Print the figures in PNG format
print('-dpng', 'Total mean of U, SU, R from 75-3000 MHz.png');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%THIRD GRAPH IS THE GRAPH OF ALL OUTDOOR MEAN DATA OF ALL FREQUENCIES SO WE NEED THE
% o_total_average, o_radio_average, o_fm_average, o_tv_average, o_tetra_average, o_uhf_average, o_gsm_average, o_gps_average, o_umts_average, o_wifi_average
%o_total_average = o_radio_average + o_fm_average + o_tv_average + o_tetra_average + o_uhf_average + o_gsm_average + o_gps_average + o_umts_average + o_wifi_average;
figure('Position', [0 0 800 600]);
% Define the labels
labels = {'75-3000Hz TOTAL', '75-87Hz', '87-109Hz FM', '109-300 VHF-TV,CB,AirCom','300-450 TETRA','450-860 UHF-TV,LTE-800','860-1000 GSM-900','1000-1700 Navigation,GPS,DAB','1700-2200 GSM-1800 UMTS','2200-3000WiFi,LTE-2600'};
% Define the electric field values
electric_field = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
% Create the bar chart
bar(electric_field, [o_total_average, o_radio_average, o_fm_average, o_tv_average, o_tetra_average, o_uhf_average, o_gsm_average, o_gps_average, o_umts_average, o_wifi_average], 0.3,"green");
% Add the labels to the x-axis
xticklabels(labels);
% Add the labels to the y-axis
ylabel('Electric Field (V/m)');
%set(gca, 'YScale', 'log');
ylim([0 max([o_total_average, o_radio_average, o_fm_average, o_tv_average, o_tetra_average, o_uhf_average, o_gsm_average, o_gps_average, o_umts_average, o_wifi_average])+1]);
% Change the figure title
set(gcf, 'Name', 'Means of all outdoor frequencies bands from 75-3000 MHz');
% Add a title to the chart
title('Means of all outdoor frequencies bands from 75-3000 MHz');
% Add grid
grid on;
% Print the figures in PNG format
print('-dpng', 'Means of all outdoor frequencies bands from 75-3000 MHz.png');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%FOURTH GRAPH IS THE GRAPH OF ALL INDOOR MEAN DATA OF ALL FREQUENCIES SO WE NEED THE
% i_total_average, i_radio_average, i_fm_average, i_tv_average, i_tetra_average, i_uhf_average, i_gsm_average, i_gps_average, i_umts_average, i_wifi_average
%i_total_average = i_radio_average + i_fm_average + i_tv_average + i_tetra_average + i_uhf_average + i_gsm_average + i_gps_average + i_umts_average + i_wifi_average;
figure('Position', [0 0 800 600]);
% Define the labels
labels = {'75-3000Hz TOTAL', '75-87Hz', '87-109Hz FM', '109-300 VHF-TV,CB,AirCom','300-450 TETRA','450-860 UHF-TV,LTE-800','860-1000 GSM-900','1000-1700 Navigation,GPS,DAB','1700-2200 GSM-1800 UMTS','2200-3000WiFi,LTE-2600'};
% Define the electric field values
electric_field = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
% Create the bar chart
bar(electric_field, [i_total_average, i_radio_average, i_fm_average, i_tv_average, i_tetra_average, i_uhf_average, i_gsm_average, i_gps_average, i_umts_average, i_wifi_average], 0.3,"green");
% Add the labels to the x-axis
xticklabels(labels);
% Add the labels to the y-axis
ylabel('Electric Field (V/m)');
%set(gca, 'YScale', 'log');
ylim([0 max([i_total_average, i_radio_average, i_fm_average, i_tv_average, i_tetra_average, i_uhf_average, i_gsm_average, i_gps_average, i_umts_average, i_wifi_average])+1]);
% Change the figure title
set(gcf, 'Name', 'Means of all indoor frequencies bands from 75-3000 MHz');
% Add a title to the chart
title('Means of all indoor frequencies bands from 75-3000 MHz');
% Add grid
grid on;
% Print the figures in PNG format
print('-dpng', 'Means of all indoor frequencies bands from 75-3000 MHz');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%FIFTH GRAPH IS THE GRAPH OF ALL ANTENNA PARKS MEAN DATA OF ALL FREQUENCIES SO WE NEED THE
% ap_total_average, ap_radio_average, ap_fm_average, ap_tv_average, ap_tetra_average, ap_uhf_average, ap_gsm_average, ap_gps_average, ap_umts_average, ap_wifi_average
%ap_total_average = ap_radio_average + ap_fm_average + ap_tv_average + ap_tetra_average + ap_uhf_average + ap_gsm_average + ap_gps_average + ap_umts_average + ap_wifi_average;
figure('Position', [0 0 800 600]);
% Define the labels
labels = {'75-3000Hz TOTAL', '75-87Hz', '87-109Hz FM', '109-300 VHF-TV,CB,AirCom','300-450 TETRA','450-860 UHF-TV,LTE-800','860-1000 GSM-900','1000-1700 Navigation,GPS,DAB','1700-2200 GSM-1800 UMTS','2200-3000WiFi,LTE-2600'};
% Define the electric field values
electric_field = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
% Create the bar chart
bar(electric_field, [ap_total_average, ap_radio_average, ap_fm_average, ap_tv_average, ap_tetra_average, ap_uhf_average, ap_gsm_average, ap_gps_average, ap_umts_average, ap_wifi_average], 0.3,"green");
% Add the labels to the x-axis
xticklabels(labels);
% Add the labels to the y-axis
ylabel('Electric Field (V/m)');
%set(gca, 'YScale', 'log');
ylim([0 max([ap_total_average, ap_radio_average, ap_fm_average, ap_tv_average, ap_tetra_average, ap_uhf_average, ap_gsm_average, ap_gps_average, ap_umts_average, ap_wifi_average])+1]);
% Change the figure title
set(gcf, 'Name', 'Means of all antenna parks radiation measurements of frequencies bands from 75-3000 MHz');
% Add a title to the chart
title('Means of all antenna parks radiation measurements of frequencies bands from 75-3000 MHz');
% Add grid
grid on;
% Print the figures in PNG format
print('-dpng', 'Means of all antenna parks radiation measurements of frequencies bands from 75-3000 MHz');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%SIXTH GRAPH IS THE GRAPH OF ALL OUTDOOR URBAN AREAS MEAN DATA OF ALL FREQUENCIES SO WE NEED THE
% u_total_average, u_radio_average, u_fm_average, u_tv_average, u_tetra_average, u_uhf_average, u_gsm_average, u_gps_average, u_umts_average, u_wifi_average
%u_total_average = u_radio_average + u_fm_average + u_tv_average + u_tetra_average + u_uhf_average + u_gsm_average + u_gps_average + u_umts_average + u_wifi_average;
figure('Position', [0 0 800 600]);
% Define the labels
labels = {'75-3000Hz TOTAL', '75-87Hz', '87-109Hz FM', '109-300 VHF-TV,CB,AirCom','300-450 TETRA','450-860 UHF-TV,LTE-800','860-1000 GSM-900','1000-1700 Navigation,GPS,DAB','1700-2200 GSM-1800 UMTS','2200-3000WiFi,LTE-2600'};
% Define the electric field values
electric_field = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
% Create the bar chart
bar(electric_field, [u_total_average, u_radio_average, u_fm_average, u_tv_average, u_tetra_average, u_uhf_average, u_gsm_average, u_gps_average, u_umts_average, u_wifi_average], 0.3,"green");
% Add the labels to the x-axis
xticklabels(labels);
% Add the labels to the y-axis
ylabel('Electric Field (V/m)');
%set(gca, 'YScale', 'log');
ylim([0 max([u_total_average, u_radio_average, u_fm_average, u_tv_average, u_tetra_average, u_uhf_average, u_gsm_average, u_gps_average, u_umts_average, u_wifi_average])+1]);
% Change the figure title
set(gcf, 'Name', 'Means of all urban outdoor radiation measurements of frequencies bands from 75-3000 MHz');
% Add a title to the chart
title('Means of all urban outdoor radiation measurements of frequencies bands from 75-3000 MHz');
% Add grid
grid on;
% Print the figures in PNG format
print('-dpng', 'Means of all urban outdoor radiation measurements of frequencies bands from 75-3000 MHz');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%SEVENTH GRAPH IS THE GRAPH OF ALL OUTDOOR SUBURBAN AREAS MEAN DATA OF ALL FREQUENCIES SO WE NEED THE
% su_total_average, su_radio_average, su_fm_average, su_tv_average, su_tetra_average, su_uhf_average, su_gsm_average, su_gps_average, su_umts_average, su_wifi_average
%su_total_average = su_radio_average + su_fm_average + su_tv_average + su_tetra_average + su_uhf_average + su_gsm_average + su_gps_average + su_umts_average + su_wifi_average;
figure('Position', [0 0 800 600]);
% Define the labels
labels = {'75-3000Hz TOTAL', '75-87Hz', '87-109Hz FM', '109-300 VHF-TV,CB,AirCom','300-450 TETRA','450-860 UHF-TV,LTE-800','860-1000 GSM-900','1000-1700 Navigation,GPS,DAB','1700-2200 GSM-1800 UMTS','2200-3000WiFi,LTE-2600'};
% Define the electric field values
electric_field = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
% Create the bar chart
bar(electric_field, [su_total_average, su_radio_average, su_fm_average, su_tv_average, su_tetra_average, su_uhf_average, su_gsm_average, su_gps_average, su_umts_average, su_wifi_average], 0.3,"green");
% Add the labels to the x-axis
xticklabels(labels);
% Add the labels to the y-axis
ylabel('Electric Field (V/m)');
%set(gca, 'YScale', 'log');
ylim([0 max([su_total_average, su_radio_average, su_fm_average, su_tv_average, su_tetra_average, su_uhf_average, su_gsm_average, su_gps_average, su_umts_average, su_wifi_average])+1]);
% Change the figure title
set(gcf, 'Name', 'Means of all suburban outdoor radiation measurements of frequencies bands from 75-3000 MHz');
% Add a title to the chart
title('Means of all suburban outdoor radiation measurements of frequencies bands from 75-3000 MHz');
% Add grid
grid on;
% Print the figures in PNG format
print('-dpng', 'Means of all suburban outdoor radiation measurements of frequencies bands from 75-3000 MHz')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%EIGHTH GRAPH IS THE GRAPH OF ALL OUTDOOR RURAL MEAN DATA OF ALL FREQUENCIES SO WE NEED THE
% r_total_average, r_radio_average, r_fm_average, r_tv_average, r_tetra_average, r_uhf_average, r_gsm_average, r_gps_average, r_umts_average, r_wifi_average
%r_total_average = r_radio_average + r_fm_average + r_tv_average + r_tetra_average + r_uhf_average + r_gsm_average + r_gps_average + r_umts_average + r_wifi_average;

figure('Position', [0 0 800 600]);
% Define the labels
labels = {'75-3000Hz TOTAL', '75-87Hz', '87-109Hz FM', '109-300 VHF-TV,CB,AirCom','300-450 TETRA','450-860 UHF-TV,LTE-800','860-1000 GSM-900','1000-1700 Navigation,GPS,DAB','1700-2200 GSM-1800 UMTS','2200-3000WiFi,LTE-2600'};
% Define the electric field values
electric_field = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
% Create the bar chart
bar(electric_field, [r_total_average, r_radio_average, r_fm_average, r_tv_average, r_tetra_average, r_uhf_average, r_gsm_average, r_gps_average, r_umts_average, r_wifi_average], 0.3,"green");
% Add the labels to the x-axis
xticklabels(labels);
% Add the labels to the y-axis
ylabel('Electric Field (V/m)');
%set(gca, 'YScale', 'log');
ylim([0 max([r_total_average, r_radio_average, r_fm_average, r_tv_average, r_tetra_average, r_uhf_average, r_gsm_average, r_gps_average, r_umts_average, r_wifi_average])+1]);
% Change the figure title
set(gcf, 'Name', 'Means of all rural outdoor radiation measurements of frequencies bands from 75-3000 MHz');
% Add a title to the chart
title('Means of all rural outdoor radiation measurements of frequencies bands from 75-3000 MHz');
% Add grid
grid on;
% Print the figures in PNG format
print('-dpng', 'Means of all rural outdoor radiation measurements of frequencies bands from 75-3000 MHz')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%NINETH GRAPH IS THE GRAPH OF ALL OUTDOOR AIRPORTS MEAN DATA OF ALL FREQUENCIES SO WE NEED THE
% air_total_average, air_radio_average, air_fm_average, air_tv_average, air_tetra_average, air_uhf_average, air_gsm_average, air_gps_average, air_umts_average, air_wifi_average
%air_total_average = air_radio_average + air_fm_average + air_tv_average + air_tetra_average + air_uhf_average + air_gsm_average + air_gps_average + air_umts_average + air_wifi_average;

figure('Position', [0 0 800 600]);
% Define the labels
labels = {'75-3000Hz TOTAL', '75-87Hz', '87-109Hz FM', '109-300 VHF-TV,CB,AirCom','300-450 TETRA','450-860 UHF-TV,LTE-800','860-1000 GSM-900','1000-1700 Navigation,GPS,DAB','1700-2200 GSM-1800 UMTS','2200-3000WiFi,LTE-2600'};
% Define the electric field values
electric_field = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
% Create the bar chart
bar(electric_field, [air_total_average, air_radio_average, air_fm_average, air_tv_average, air_tetra_average, air_uhf_average, air_gsm_average, air_gps_average, air_umts_average, air_wifi_average], 0.3,"green");
% Add the labels to the x-axis
xticklabels(labels);
% Add the labels to the y-axis
ylabel('Electric Field (V/m)');
%set(gca, 'YScale', 'log');
ylim([0 max([air_total_average, air_radio_average, air_fm_average, air_tv_average, air_tetra_average, air_uhf_average, air_gsm_average, air_gps_average, air_umts_average, air_wifi_average])+1]);
% Change the figure title
set(gcf, 'Name', 'Means of all airports outdoor radiation measurements of frequencies bands from 75-3000 MHz');
% Add a title to the chart
title('Means of all airports outdoor radiation measurements of frequencies bands from 75-3000 MHz');
% Add grid
grid on;
% Print the figures in PNG format
print('-dpng', 'Means of all airports outdoor radiation measurements of frequencies bands from 75-3000 MHz')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%TENTH GRAPH IS THE GRAPH OF ALL OUTDOOR ROOFTOPS MEAN DATA OF ALL FREQUENCIES SO WE NEED THE
% rt_total_average, rt_radio_average, rt_fm_average, rt_tv_average, rt_tetra_average, rt_uhf_average, rt_gsm_average, rt_gps_average, rt_umts_average, rt_wifi_average
%rt_total_average = rt_radio_average + rt_fm_average + rt_tv_average + rt_tetra_average + rt_uhf_average + rt_gsm_average + rt_gps_average + rt_umts_average + rt_wifi_average;

figure('Position', [0 0 800 600]);
% Define the labels
labels = {'75-3000Hz TOTAL', '75-87Hz', '87-109Hz FM', '109-300 VHF-TV,CB,AirCom','300-450 TETRA','450-860 UHF-TV,LTE-800','860-1000 GSM-900','1000-1700 Navigation,GPS,DAB','1700-2200 GSM-1800 UMTS','2200-3000WiFi,LTE-2600'};
% Define the electric field values
electric_field = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
% Create the bar chart
bar(electric_field, [rt_total_average, rt_radio_average, rt_fm_average, rt_tv_average, rt_tetra_average, rt_uhf_average, rt_gsm_average, rt_gps_average, rt_umts_average, rt_wifi_average], 0.3,"green");
% Add the labels to the x-axis
xticklabels(labels);
% Add the labels to the y-axis
ylabel('Electric Field (V/m)');
%set(gca, 'YScale', 'log');
ylim([0 max([rt_total_average, rt_radio_average, rt_fm_average, rt_tv_average, rt_tetra_average, rt_uhf_average, rt_gsm_average, rt_gps_average, rt_umts_average, rt_wifi_average])+1]);
% Change the figure title
set(gcf, 'Name', 'Means of all rooftops outdoor radiation measurements of frequencies bands from 75-3000 MHz');
% Add a title to the chart
title('Means of all rooftops outdoor radiation measurements of frequencies bands from 75-3000 MHz');
% Add grid
grid on;
% Print the figures in PNG format
print('-dpng', 'Means of all rooftops outdoor radiation measurements of frequencies bands from 75-3000 MHz')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ELEVENTH GRAPH IS THE GRAPH OF ALL OUTDOOR STREET MEAN DATA OF ALL FREQUENCIES SO WE NEED THE
% street_total_average, street_radio_average, street_fm_average, street_tv_average, street_tetra_average, street_uhf_average, street_gsm_average, rt_gps_average, rt_umts_average, rt_wifi_average
%street_total_average = street_radio_average + street_fm_average + street_tv_average + street_tetra_average + street_uhf_average + street_gsm_average + street_gps_average + street_umts_average + street_wifi_average;

figure('Position', [0 0 800 600]);
% Define the labels
labels = {'75-3000Hz TOTAL', '75-87Hz', '87-109Hz FM', '109-300 VHF-TV,CB,AirCom','300-450 TETRA','450-860 UHF-TV,LTE-800','860-1000 GSM-900','1000-1700 Navigation,GPS,DAB','1700-2200 GSM-1800 UMTS','2200-3000WiFi,LTE-2600'};
% Define the electric field values
electric_field = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
% Create the bar chart
bar(electric_field, [street_total_average, street_radio_average, street_fm_average, street_tv_average, street_tetra_average, street_uhf_average, street_gsm_average, street_gps_average, street_umts_average, street_wifi_average], 0.3,"green");
% Add the labels to the x-axis
xticklabels(labels);
% Add the labels to the y-axis
ylabel('Electric Field (V/m)');
%set(gca, 'YScale', 'log');
ylim([0 max([street_total_average, street_radio_average, street_fm_average, street_tv_average, street_tetra_average, street_uhf_average, street_gsm_average, street_gps_average, street_umts_average, street_wifi_average])+1]);
% Change the figure title
set(gcf, 'Name', 'Means of all street outdoor radiation measurements of frequencies bands from 75-3000 MHz');
% Add a title to the chart
title('Means of all street outdoor radiation measurements of frequencies bands from 75-3000 MHz');
% Add grid
grid on;
% Print the figures in PNG format
print('-dpng', 'Means of all street outdoor radiation measurements of frequencies bands from 75-3000 MHz')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SAVE THE VARIABLE VALUES FROM NEW_GRAPHS.M TO PASS THEM TO CLASSIFICATION.M
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Save the variables to a MAT-file
% We're going to save the total data from every kind of area I,O,
save('variables.mat','o_total_data', 'i_total_data', 'ap_total_data', 'u_total_data', 'su_total_data', 'r_total_data', 'air_total_data', 'rt_total_data', 'street_total_data');