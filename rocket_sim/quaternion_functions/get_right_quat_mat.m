function right_quat_mat = get_right_quat_mat(q)
%GET_RIGHT_QUAT_MAT Summary of this function goes here
%   Detailed explanation goes here
right_quat_mat = [q(1), -q(2), -q(3), -q(4);...
    q(2), q(1), q(4), -q(3);...
    q(3), -q(4), q(1), q(2);...
    q(4), q(3), -q(2), q(1)];


end

