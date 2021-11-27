format long 
% 자릿수를 늘려서 출력
format shorte
% 자릿수를 줄이고, e로 출력
format short
% 자릿수를 줄여서 출력
x = 1:2:10
% x는 1부터 2씩 증가해서 10까지
x = 1:4.5 
% 1부터 4.5까지 1씩 증가
x = linspace(1,3,3)
% 1부터 3까지를 3개로 나눈다. 
x = linspace(1,6,2)
% 1부터 6까지를 2개로 나눈다.

% sin함수 그리기
x = 0:0.1:pi;
plot(x, sin(x))

A = [1,2,3; 4,5,6]
size(A)
% A의 row,column 개수. matlab의 모든 변수는 array. 

x=rand(1,5)
x(2)
x([3,1,2])
% index를 뽑아서 새로운 array 만듬.
% matlab은 index가 1부터 시작한다.

A(:,2)
% 모든 행, 2열

x = [1 2 3]
y = [4 5 6]
x .* y
% x .* y를 해야 곱해짐 그냥 * 하면 안됌 그냥 * 는 matrix끼리의 곱

y'
%transport. 뒤집어줌. 

disp('Hello') %print
disp(fprintf('x dot y = %f', x*y)) %printf

%for i = 1:5
%i^2
%for문