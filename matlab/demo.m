%% Demo of spannnpca package
% Demo of spannnpcamulti method for extracting multiple orthogonal 
% nonnegative principal components from an arbitrary data matrix, and 
% spanonmf method for computing an approximate ONMF factorization for a
% given nonnegative data matrix.

%% Spannnpca

% Generate a random data matrix:
m = 10000;
n = 1000;
M = randn(m, n);

% Specify target number of components:
k = 5;

W = spannnpcamulti(M, k, ...
                   'verbose', true, ...
                   'approximationrank', 5, ...
                   'numsamples', 1e4 ...
                  );



%% SpanONMF

% Generate a nonnegative data matrix:
m = 100;
n = 1000;
M = rand(m, n);

% Specify target dimension for the approximate factorization:
k = 5;

[err, W, H] = spanonmf(M, k);


