 %% Main file for Diversity Calculation of Fisher scores
 
load('/data/usps_dbm_lastlayer.mat');
%x=vertcat(train_x,test_x);

% Calculating Theta
dot_product=dot(train_data,train_data);
norm_vect=norm(train_data)*norm(train_data);
theta=acos(dot_product/norm_vect);

% Calculating Mean and Variance
total_hid_units=(80)^2;
mean_angle=theta/total_hid_units;
total_mean_angle=sum(mean_angle);
variance=(theta-total_mean_angle).^2;
variance_angle=variance/total_hid_units;
total_variance_angle=sum(variance_angle);

% Calculating Diversity
diversity_metric=total_mean_angle-total_variance_angle;

display(diversity_metric)
display(total_variance_angle)
display(total_mean_angle)