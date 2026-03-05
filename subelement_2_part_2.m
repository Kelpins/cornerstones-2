% original system of equations:
%   -20a+c+5d=1
%   3.2+7a-3d =0
%   -c+4.5d=10
%   2b-a-12d=2.7

% first we must rearrange our equations so that each variable appears in
% alphabetical order, and all constants are on the right-hand side

% new system of equations:
%   -20a + 0b + 1c + 5d = 1
%   7a + 0b + 0c - 3d = -3.2
%   0a + 0b - 1c + 4.5d = 10
%   -1a + 2b + 0c - 12d = 2.7

% to solve a system of equations using left division, we set up the system
% horizontally such that each equation takes up one row, and each column
% represents a single variable.

% resulting coefficient matrix
A_left_div = [
    -20 0 1 5;
    7 0 0 -3;
    0 0 -1 4.5;
    -1 2 0 -12;
    ]

% next, we set up the (single-row )solution matrix where each row
% represents the solution to the corresponding equation

B_left_div = [
    1;
    -3.2;
    10;
    2.7;
    ]

% using left division, the solutions to our system are given by A\B. this
% operation will output a column of data, each row representing a, b, c,
% and d respectively

A_left_div\B_left_div

% printed answer: 0.4000 (a)
%                13.5500 (b)
%                -1.0000 (c)
%                 2.0000 (d)


% to solve a system of equations using right division, we set up the system
% vertically such that each equation takes up one column, and each row
% represents a single variable. this matrix is the transpose of the
% coefficient matrix used for left division.

% perform the transpose operation
A_right_div = A_left_div.'

% resulting coefficient matrix
% A_right_div = [
%     -20 7 0 -1;
%     0 0 0 2;
%     1 0 -1 0;
%     5 -3 4.5 -12;
%     ]

% next, we set up the (single-row) solution matrix where each column
% represents the solution to the corresponding matrix. again, this matrix
% is the transpose of the coefficient matrix used for left division.

B_right_div = B_left_div.'
% resulting solution matrix
% B_right_div = [
%     1, -3.2, 10, 2.7
%     ]

% using right division, the solutions to our system are given by B/A. this
% operation will output a row of data, each column representing a, b, c,
% and d respectively

B_right_div/A_right_div

% printed answer: 0.4000 (a) 13.5500 (b) -1.0000 (c) 2.0000 (d)

% a =  0.4000
% b = 13.5500
% c = -1.0000
% d =  2.0000