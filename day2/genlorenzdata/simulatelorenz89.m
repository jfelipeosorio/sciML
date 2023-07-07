%% Simulation of Data Driven approach to discover Dynamical Systems

% Code for the arcicle was made available by authors at:
% http://faculty.washington.edu/sbrunton/sparsedynamics.zip
% and I used the general structure for recreating a few of their examples
% for AMATH 581 final course project.

%% Generate the data
% Time span
tspan = 0.001:.001:100;

% Initial condition
y0=[-8; 8; 27]; 

% Use integrator to get the data
%options = odeset('RelTol',1e-12,'AbsTol',1e-12*ones(1,3));
tic;[t,ytrue]= ode89(@(t,y) rhs_lorenz(t,y),tspan,y0);toc;

% Write matrix
obs = [ytrue,tspan'];
writematrix(obs,'xtrue.csv')


% Plot the graph of the true data
fig1 = figure(1);
plot3(ytrue(:,1),ytrue(:,2),ytrue(:,3))
grid on;
xlabel('x')
ylabel('y')
zlabel('z')
view(30,20)
saveas(fig1,'truedatalorenz89.png');



