% main script
% Calvin Wang - 1/9/2016

% loading data 
fprintf('loading data\n') 

data = fopen('iris.data'); 
temp = textscan(data, '%f %f %f %f %s', 'Delimiter',','); 
sepal_L = temp{1} ; 
sepal_W = temp{2} ; 
petal_L = temp{3} ; 
petal_W = temp{4} ; 
class = temp{5} ; 

% plotting data in 2D perspective -- sepal length (cm) vs sepal width (cm) 
fprintf('plotting sepal length (cm) vs sepal width (cm) data\n')

m = length(sepal_L) ;

figure ; 
plot(sepal_L, sepal_W, 'gx') 
xlabel('Sepal Length (cm)') ;
ylabel('Sepal Width (cm)') ; 

% figure ; 
hold ; 
plot(petal_L, petal_W, 'rx') ; 
xlabel('Petal Length (cm)') ; 
ylabel('Petal Width(cm)') ; 

% gradient descent to fit a linear regression 
% let x 
fprintf('Now let us run some gradient descent:\n') 
X = [ones(m, 1), petal_L]; % Add a column of ones to x
theta = zeros(2, 1); % initialize fitting parameters

% Some gradient descent settings
iterations = 1500;
alpha = 0.01;

% compute and display initial cost
computeCost(X, petal_W, theta)

