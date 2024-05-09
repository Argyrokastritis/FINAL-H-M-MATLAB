%Load the variables in the second script
load('variables.mat');

% Resize the vectors so that they have the same number of rows
maxRows = max([size(o_total_data, 1), size(i_total_data, 1), size(ap_total_data, 1), size(u_total_data, 1), size(su_total_data, 1), size(r_total_data, 1), size(air_total_data, 1), size(rt_total_data, 1), size(street_total_data, 1)]);
o_total_data = padarray(o_total_data, [maxRows - size(o_total_data, 1), 0], 'post');
i_total_data = padarray(i_total_data, [maxRows - size(i_total_data, 1), 0], 'post');
ap_total_data = padarray(ap_total_data, [maxRows - size(ap_total_data, 1), 0], 'post');
u_total_data = padarray(u_total_data, [maxRows - size(u_total_data, 1), 0], 'post');
su_total_data = padarray(su_total_data, [maxRows - size(su_total_data, 1), 0], 'post');
r_total_data = padarray(r_total_data, [maxRows - size(r_total_data, 1), 0], 'post');
air_total_data = padarray(air_total_data, [maxRows - size(air_total_data, 1), 0], 'post');
rt_total_data = padarray(rt_total_data, [maxRows - size(rt_total_data, 1), 0], 'post');
street_total_data = padarray(street_total_data, [maxRows - size(street_total_data, 1), 0], 'post');

input_training_table = table(o_total_data, i_total_data, ap_total_data, u_total_data, su_total_data, r_total_data, air_total_data, rt_total_data, street_total_data);
input_training_matrix = table2array(input_training_table);

% Transpose the matrix so that each column is a sample
input_training_matrix = input_training_matrix';

% Create target matrix
% Since you have 9 categories, your target will be a 9x750 matrix
% For each column in the target (corresponding to a sample), only one element is 1 and the rest are 0
% The position of the 1 indicates the category of the sample
target = eye(9, 750);

% Create a pattern recognition network
hiddenLayerSize = 10;
net = patternnet(hiddenLayerSize);

% Set up division of data for training, validation, testing
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;

% Train the network
[net,tr] = train(net,input_training_matrix,target);

% Prompt the user to input a value
value = input('Please input a value: ');

% Prompt the user to specify the type of measurement
measurement_type = input('Please specify the type of measurement (1-9): ');

% Construct a 9x1 input vector
input_vector = zeros(9, 1); % fill with zeros
input_vector(measurement_type) = value; % replace the specified element with the value

% Normalize the input vector
input_vector_normalized = (input_vector - min(input_training_matrix(:))) / (max(input_training_matrix(:)) - min(input_training_matrix(:)));

% Use the trained network to classify the input vector
class = net(input_vector_normalized);

% Find the predicted category
[~, category] = max(class);

% Create a cell array of strings with the names of your columns
column_names = {'outdoor total data', 'indoor total data', 'antenna parks total data', 'urban total data', 'suburban total data', 'rural total data', 'airports total data', 'rooftops total data', 'streets total data'}; 

% Display a message indicating the predicted category
fprintf('The value could be in column %d (%s) of the input_training_table.\n', category, column_names{category});