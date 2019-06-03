function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);


D = zeros(size(X,1), size(centroids, 1));
for i = 1:size(centroids, 1)
    dis = bsxfun(@minus, X, centroids(i,:));
    D(:,i) = sum(dis.^2,2);
end

[m,i] = min(D, [], 2);
idx = i;
    






% =============================================================

end

