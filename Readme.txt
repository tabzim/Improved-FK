This code is a Matlab implementation of Normalization, Diversity Metric, whitening transformation,K-NN and SVM specified in a submitted paper 
==================Normalization===========================================
in order to scale Fisher features using normalization scheme,see "normalization.m" file


==================Diversity Metric===========================================
For Diversity Metric implementation, see "diversifymetric.m" file
We  calculate diversity metric for USPS Fisher features having 7291 training examples and 2007 test examples as specified in paper.

==================Whitening Transformation===========================================
In order to obtain discriminative features we applied whitening transformation on Fisher features, see implementaion in 'whitening_transform.m' file

=======================K-nn=====================================================

For K-nearest neighbor classification , see "knn.m "file for implementation

======================SVM======================================================
For SVM implementation , use "Train_SGD_SVM.m" file. 
 The parameters specified in the file are optimal parameters for the data at hand.
 
===========output===========================================================
The output given by K-NN and SVM code for USPS last layer features is 95.8% and 98.75%
as  specified in Table 4.while the result given by diversity metric is 0.476 
as mentioned in Table 1
