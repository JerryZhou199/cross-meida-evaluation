function [ind] = rightupperindex(N,k)
% get the linear index of right-upper parts (k=1, excluding the diagonal) of an
% N x N matrix. The linear index is columnwise (matlab tradition)

    if nargin<2
        k = 1;
    end
        
    I = []; J = [];
    for i=1:N
        J = [J i+k:N];
        I = [I ones(1,N-i-k+1)*i];
    end
    ind = sub2ind([N,N],I,J);
end