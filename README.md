# spanonmf
An algorithm for low-dimensional Orthogonal Nonnegative Matrix Factorization and multi-component Nonnegative Principal Component Analysis.

The package implements the algorithms of our NIPS 2015 paper [Orthogonal NMF through Subspace Exploration](http://papers.nips.cc/paper/5998-orthogonal-nmf-through-subspace-exploration).

Requirements
------------
No real requirement, but  you may also want to download the [textprogressbar](https://github.com/megasthenis/textprogressbar) and install it in Matlab's path. 

Example Usage
-------------
```Matlab
%% Nonnegative PCA

% Generate a random data matrix:
m = 10000;
n = 1000;
M = randn(m, n);

% Specify number of components:
k = 5;

W = spannnpcamulti(M, k, ...
                   'verbose', true, ...
                   'approximationrank', 5, ...
                   'numsamples', 1e4);


%% Orthogonal Nonnegative Matrix Factorization

% Generate a random nonnegative data matrix:
m = 100;
n = 1000;
M = rand(m, n);

% Specify target dimension for the approximate factorization:
k = 5;

[W, H, err] = spanonmf(M, k, ...
                       'verbose', true, ...
                       'approximationrank', 5, ...
                       'numsamples', 1e4);
```