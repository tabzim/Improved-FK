function [transformed_trainfeatures,transformed_testfeatures]= whitening_transform(diversified_trainfea,diversified_testfea)
cov_x=cov(diversified_trainfea);
[eigvect,eigval] =svd(cov_x); 
% CALCULATE D^(-1/2)
eigval1 = diag(eigval);
d = real(eigval1.^-.2);
eigval3= diag(d);
 
% CALCULATE WHITENING TRANSFORM
W = eigvect*eigval3*eigvect';
for i=1:size(diversified_trainfea,2)
 transformed_trainfeatures(:,i)=diversified_trainfea(:,i)-mean(diversified_trainfea(:,i));
end
for i=1:size(diversified_testfea,2)
 transformed_testfeatures(:,i)=diversified_testfea(:,i)-mean(diversified_testfea(:,i));
end
