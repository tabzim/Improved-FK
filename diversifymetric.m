 %% Main file for Diversity Calculation of Fisher scores
 
[diversity_metric]=diversify_metric(norm_trainfea,norm_testfeat)
 
number_hid_uits=80;
% Calculating Theta
dot_product=dot(train_data,train_data);
norm_vect=norm(train_data)*norm(train_data);
theta=acos(dot_product/norm_vect);

% Calculating Mean and Variance
total_hid_units=(number_hiddenuits)^2;
mean_angle=theta/total_hid_units;
total_mean_angle=sum(mean_angle);
variance=(theta-total_mean_angle).^2;
variance_angle=variance/total_hid_units;
total_variance_angle=sum(variance_angle);

% Calculating Diversity
diversity_metric=total_mean_angle-total_variance_angle;
