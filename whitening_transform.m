function [transformed_trainfeatures,transformed_testfeatures]= whitening_transform(train_data,test_data)
cov_x=cov(train_data);
[eigvect,eigval] =svd(cov_x); 
% CALCULATE D^(-1/2)
eigval1 = diag(eigval);
d = real(eigval1.^-.2);
eigval3= diag(d);
 
% CALCULATE WHITENING TRANSFORM
W = eigvect*eigval3*eigvect';
for i=1:size(train_data,2)
 transformed_trainfeatures(:,i)=train_data(:,i)-mean(train_data(:,i));
end
for i=1:size(x_test,2)
 transformed_testfeatures(:,i)=test_data(:,i)-mean(test_data(:,i));
end
