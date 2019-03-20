 %% Main file for Diversity Calculation of Fisher scores
 
[diversity_metric]=diversify_metric(norm_trainfea)
 
number_hid_units=80;
% Calculating Theta
dot_product=dot(norm_trainfea,norm_trainfea);
norm_vect=norm(norm_trainfea)*norm(norm_trainfea);
theta=acos(dot_product/norm_vect);

% Calculating Mean and Variance
total_hid_units=(number_hid_units)^2;
mean_angle=theta/total_hid_units;
total_mean_angle=sum(mean_angle);
variance=(theta-total_mean_angle).^2;
variance_angle=variance/total_hid_units;
total_variance_angle=sum(variance_angle);

% Calculating Diversity
diversity_metric=total_mean_angle-total_variance_angle;
