 load('usps_lastlayer_dbm.mat');
 x=vertcat(train_data,test_data);
dot_product=dot(x,x);
norm_vect=norm(x)*norm(x);
theta=acos(dot_product/norm_vect);
total_hid_units=(120)^2;
mean_angle=theta/total_hid_units;
total_mean_angle=sum(mean_angle);
variance=(theta-total_mean_angle).^2;
variance_angle=variance/total_hid_units;
total_variance_angle=sum(variance_angle);
diversify_metric=total_mean_angle-total_variance_angle;