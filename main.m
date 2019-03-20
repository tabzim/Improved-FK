load('/data/usps_dbm_lastlayer.mat');
[norm_trainfea,norm_testfeat]=normalization(train_data,test_data);
[n,d]=size(norm_trainfea);
visible_units_layer1=256;
hid_units_layer1=40;
hid_units_layer2=80;
%compute diversity metric for layer1
total_layer1_features=visible_units_layer1*hid_units_layer1;
train_l1fea=norm_trainfea(:,1:total_layer1_features);
[diversity_metric_l1]=diversify_metric(train_l1fea);
%compute diversity metric for layer 2;
total_layer2_features=hid_units_layer1*hid_units_layer2;
train_l2fea=norm_trainfea(:,total_layer1_features);
[diversity_metric_l2]=diversify_metric(train_l2fea);
%Select  Diversified Features
if(diversity_metric_l1<diversity_metric_l2)
diversified_trainfea=norm_trainfea(:,total_layer1_features+1:d);
diversified_testfea=norm_testfea(:,1:total_layer1_features);
else
diversified_trainfea=norm_trainfea(:,1:total_layer1_features);
diversified_testfea=norm_testfea(:,1:total_layer1_features);
end
%Perform Whitening transform on diversified features
[transformed_trainfeatures,transformed_testfeatures]= whitening_transform(diversified_trainfea,diversified_test);
%knn classifier for classification
