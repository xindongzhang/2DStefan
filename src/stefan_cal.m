function [S B] = stefan_cal(deltaX, deltaT, Xstep, Tstep, S0, B0)


lambda = deltaT / (deltaX).^2;


%% i = 0,1,2...N, space domain
%% k = 0,1,2...M, time  domain

%% initialize 

M = Tstep;
N = Xstep;

B = zeros(Tstep+1, Xstep+1);
S = zeros(Tstep+1, Xstep+1);

B(1,:) = B0;
S(1,:) = S0;


%% iteration

for i = 2:M+1
    for j = 1:N+1
       %% S(k+1,0) and B(k+1,0)
        if j == 1
            S(i, 1) = S(i-1, 1) + 2 * lambda / ( S(i-1, 1)*(8 + B(i-1, 1))) * ...
                      ( S(i-1, 1) * (2 + B(i-1, 1) ) * (S(i-1, 2) - S(i-1, 1)) + ...
                       3 * (deltaX).^2 * (2 + B(i-1, 1)) );
            B(i, 1) = B(i-1, 1) + 12 * lambda / ( S(i-1, 1).^2 * (8 + B(i-1, 1) ) ) * ...
                      ( 2 * S(i-1, 1) * (S(i-1, 2) - S(i-1, 1)) - deltaX.^2 * (B(i-1, 1).^2 + 10 * B(i-1, 1) + 10)) +...
                       2 * lambda * (B(i-1, 2) - B(i-1, 1));
            continue;
        end
        
        if j == N+1
            S(i, N+1) = S(i-1, N+1) + 2 * lambda / (S(i-1, N+1)*(8 + B(i-1, N+1))) * ...
                       ( S(i-1, N+1) * (2 + B(i-1, N+1) ) * (S(i-1, N) - S(i-1, N+1)) + ...
                        3 * (deltaX).^2 * (2 + B(i-1, N+1)) );
            B(i, N+1) = B(i-1, N+1) + 12 * lambda / (S(i-1, N+1).^2 * (8 + B(i-1, N+1) ) ) * ...
                       ( 2 * S(i-1, N+1) * (S(i-1, N) - S(i-1, N+1)) - deltaX.^2 * ( B(i-1, N+1).^2 + 10 * B(i-1, N+1) + 10) ) +...
                        2 * lambda * (B(i-1, N) - B(i-1, N+1));
            continue;
        end
            
        %%------------------------------------------------------------------%%
        S(i, j) = S(i-1, j) + lambda / (4 * S(i-1, j) * (8 + B(i-1, j))) * ...
                 ( 2 * (3 + B(i-1, j)) * (S(i-1, j+1) - S(i-1, j-1)).^2  + ...
                 4 * S(i-1, j) * (2 + B(i-1, j)) * (S(i-1, j+1) - 2 * S(i-1, j) + S(i-1, j-1)) + ...
                 24 * deltaX.^2 * (2 + B(i-1, j)) + 2 * S(i-1, j) * (S(i-1,j+1) - S(i-1,j-1)) * (B(i-1, j+1) - B(i-1, j-1)) );
             
        B(i, j) = B(i-1, j) + lambda / (4 * S(i-1, j).^2 * (8 + B(i-1, j)) ) * ...
                  ( -2 * (30 + 13 * B(i-1, j) + B(i-1, j).^2 ) * (S(i-1, j+1) - S(i-1, j-1)).^2 + ...
                  48 * S(i-1, j) * ( S(i-1, j+1) - 2 * S(i-1, j) + S(i-1, j-1) ) - ...
                  48 * deltaX.^2 * ( B(i-1, j).^2 + 10 * B(i-1, j) + 10) - ...
                  4 * S(i-1, j) * ( S(i-1, j+1) - S(i-1, j-1)) * ( B(i-1, j+1) - B(i-1, j-1)) ) + ...
                  lambda * ( B(i-1, j+1) - 2 * B(i-1, j) + B(i-1, j-1) );
        
    end
end

end