function L_dq = get_right_dquat_mat(dq)
%GET_RIGHT_DQUAT_MAT This function returns the right dual quaternion
%multiplication Matrix
%   When dual_o = L(dual_p)*dual_q then this function returns L(dual_p)
%   dual_o = dual_q*dual_p

Lr = [dq(1), -dq(2), -dq(3), -dq(4);...
    dq(2), dq(1), dq(4), -dq(3);...
    dq(3), -dq(4), dq(1), dq(2);...
    dq(4), dq(3), -dq(2), dq(1)];
Ld = [dq(5), -dq(6), -dq(7), -dq(8);...
    dq(6), dq(5), dq(8), -dq(7);...
    dq(7), -dq(8), dq(5), dq(6);...
    dq(8), dq(7), -dq(6), dq(5)];

L_dq = [Lr, zeros(4);...
    Ld, Lr];
end

