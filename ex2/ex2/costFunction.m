function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
theta_lenght = size(theta);
grad = zeros(theta_lenght);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

predictions = X * theta;  # new predictions
h_func = sigmoid(predictions);
J = 1/m * sum((-y .* log(h_func)) - ((1 .- y) .* log(1 - h_func)));

grad = (1/m) * sum((h_func - y) .* X);




% =============================================================

end
