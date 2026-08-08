% the original code reads to create an array from 0 to 1 with an increment
% of 40. updated code to create an array from 0 to 40 with an increment
% of 1 by swapping last two parameters.

% Ta = 0:40:1 --> Ta = 0:1:40

Ta = 0:1:40; %was Ta = 0:40:1


% NOTE -- canvas announcement "Minor change in AE2" changes increment from
% 0.5 to 0.25 to ensure array sizes match

% the original code reads to create an array from 10 to 0.25 with an
% increment of 20. updated code to create an array from 10 to 20 with an
% increment of 0.25 by swapping last two parameters.

% V = 10:20:0.25 --> V = 10:0.25:20


V = 10:0.25:20; %was V = 10:20:0.25



% the original code utilizes the element-wise indicator on an addition
% operator. addition operators will not work if marked as element-wise.
% removed element-wise indicator from operation.

% Twc=35.74.+0.6215*Ta-35.75V.^016 --> Twc = 35.74 + 0.6215 * Ta - 35.75V.^016


% the original code places a scalar next to an array with no operator in
% between in attempts to multiply. this does not work without the *
% operator. updated operation to include * operator.

% Twc = 35.74 + 0.6215 * Ta - 35.75V.^016 --> Twc = 35.74 + 0.6215 * Ta - 35.75 * V.^016


% the original code was missing the decimal in the 0.16 of the windchill
% formula. updated number to be consistent with formula

% Twc = 35.74 + 0.6215 * Ta - 35.75 * V.^016 --> Twc = 35.74 + 0.6215 * Ta - 35.75 * V.^(0.16)


Twc = 35.74 + 0.6215 * Ta - 35.75 * V.^(0.16); %was Twc= 35.74.+0.6215*Ta-35.75V.^016;



% the original code was missing a reference to Ta(1) in the fprintf
% statement, causing the print statement to reflect the wrong information
% for each variable. updated fprintf statement to include Ta(1).

fprintf('for %4.2f <Ta< %4.2f and %4.2f<V<%4.2f we have %4.2f<Twc< %4.2f \n',Ta(1),Ta(end),V(1),V(end),Twc(1),Twc(end));
%was fprintf('for %4.2f <Ta< %4.2f and %4.2f<V<%4.2f we have %4.2f<Twc< %4.2f \n',Ta(end),V(1),V(end),Twc(1),Twc(end));