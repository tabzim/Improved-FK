This code is a Matlab implementation of Diversified Fisher Kernel. The discrimination in the kernel is induced via min-max normalization, diversity metric calculation, whitening transformation. The supremacy of the method is revealed on a toy example using k-NN and SVM classifoers. 

==================Normalization.m ===========================================
This function is used to scale Fisher scores using min-max normalization scheme.


==================diversify_metric.m ===========================================
This function is used to calculate diversity of Fisher scores obtained from images of USPS data set. The data set has 7291 training examples and 2007 test examples as specified in paper.

==================whitening_transform.m===========================================
In order to obtain discriminative features we have applied whitening transformation on Fisher features using this script.

=======================knn.m=====================================================

This script is used to classify images from USPS data set using k-nearest neighbor classifier.

======================Train_SGD_SVM.m======================================================
This function uses stochastic gradient descent learning method to train SVM classifier with diversified Fisher kernel (DFK).
The parameters specified in the file are optimal parameters for the data at hand.
 
===========output===========================================================
The output given by K-NN and SVM code on Discriminative features of USPS dataset is 97.3% and 99.9%
as  specified in Table 4.while the result given by diversity metric is 0.476 
as mentioned in Table 1
