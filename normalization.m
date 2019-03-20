 function [norm_trainfea,norm_testfea]=normalization(train_data,test_data)
 
 for i=1:size(train_data,1)
train_min=min(train_data(i,:));
train_max=max(train_data(i,:));
 tr=train_max-train_min;
 norm_trainfea(i,:)=(train_data(i,:)-train_min)/tr;
  end
  for i=1:size(test_data,1)
 test_min=min(test_data(i,:));
 test_max=max(test_data(i,:));
 tr1=test_max-test_min;
 norm_testfea(i,:)=(test_data(i,:)-test_min)/tr1;
 end
