function mat = ten2mat(ten,k)
% Tensor unfolding for ten with size of n1*n2*...*nd
% dim = (n1,n2,...,nd)
% k=1,2,...,d
dim=[size(ten,1) size(ten,2) size(ten,3)];
mat = reshape(permute(ten,[k,1:k-1,k+1:length(dim)]),dim(k),[]);
end