%% Right hand side for the Lorenz Attractor System

% We are given the system in the right form to fit it as in the vector form
% dy1/dt = sigma*(y2-y1)
% dy2/dt = y1*(rho - y3)
% dy3/dt = y1*y2 - beta*y3

% Define parameters used in the original paper
function dydt = rhs_lorenz(t,y)

% Parameters
sigma = 10;  
beta = 8/3;
rho = 28;
% Compute the system
dydt = [sigma*(y(2)-y(1));
        y(1)*(rho-y(3))-y(2);
        y(1)*y(2)-beta*y(3)];

end