% This code implements the SVM classifier on BIFFSS FIsher scores on USPS data set.



train_labels(train_labels==0)=10;
test_labels(test_labels==0)=10;

  %[train_data,train_labels,test_data,test_labels]=cross_valid(X_train,Y);
 X_train1=transformed_trainfeatures;
 Ltrain1=train_labels;
 Ltest1=test_labels;
   X_test1=transformed_testfeatures;
Xtrain1=X_train1';
Xtest1=X_test1';

Ltrain1=Ltrain1';
Ltest1=Ltest1';

n_epoch=150;                                                               
fprintf(1, '------------- Run without encoding (baseline result)\n');

[W1,stats_mul] = jsgd_train(single(Xtrain1), int32(Ltrain1), ...
                       'algo', 'mul', ...
                       'valid', single(Xtest1), ...
                       'valid_labels', int32(Ltest1), ...                    
                       'lambda',1e-4,...
                       'bias_term',1,...
                       'eta0', 0.001,...                       
                       'verbose',2, ...
                       'eval_freq', n_epoch, ...
                       'n_epoch', n_epoch);


 ntest = size(Xtest1, 2);
[scores, found_labels]  = max(W1' * [Xtest1 ; ones(1, ntest)]);
accuracy1= sum(found_labels == Ltest1) / ntest

               
