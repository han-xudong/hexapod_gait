clear, close, clc

syms q1 q2 q3 q1_ q2_ q3_ theta real

theta1 = atan(22.5/60.5);
theta2 = atan(12/93);
x = 50/6*4; % moving distance
L1 = 49 + sqrt(60.5^2+22.5^2);

eqn = sqrt(3) * (L1 * cos(theta) + 74.5) == L1 + 2 * 32 + 44 + L1 * sin(theta);
theta = solve(eqn, theta, 'Real', true);
theta = double(theta(1));

fprintf('theta = %f degree = %f or %f\n\n', rad2deg(theta), 512 + angle2val(theta), 512 - angle2val(theta));

%% SIDE LEG
q1 = atan(x/L1);
eqn1 = 49 + sqrt(60.5^2+22.5^2) * cos(q2_) + sqrt(93^2+12^2) * sin(q3_) == sqrt(x^2+L1^2);
eqn2 = sqrt(60.5^2+22.5^2) * sin(q2_) + sqrt(93^2+12^2) * cos(q3_) == sqrt(93^2+12^2);
eqns = [eqn1, eqn2];
S = solve(eqns, [q2_ q3_]);

% Select the best q2_ and q3_
if abs(S.q2_(2)) <= abs(S.q2_(1))
    q2_ = double(S.q2_(2));
    q3_ = double(S.q3_(2));
else
    q2_ = double(S.q2_(1));
    q3_ = double(S.q3_(1));
end

q2 = theta1 - q2_;
q3 = q3_ - theta2 - q2;

fprintf('Side leg:\n');
fprintf('q1 = %f degree = %f or %f\n', rad2deg(q1), 512 + angle2val(q1), 512 - angle2val(q1));
fprintf('q2 = %f degree = %f or %f\n', rad2deg(q2), 512 + angle2val(q2), 512 - angle2val(q2));
fprintf('q3 = %f degree = %f or %f\n', rad2deg(q3), 512 + angle2val(q3), 512 - angle2val(q3));
fprintf('\n');

%% SUPPORT FRONT LEG or SWING BACK LEG
syms q2_ q3_ real
L2 = sqrt(-2*x*L1*cos(theta)+x^2+L1^2);
q1_ = asin(x*sin(theta)/L2);
q1 = theta + q1_;

eqn1 = 49 + sqrt(60.5^2+22.5^2) * cos(q2_) + sqrt(93^2+12^2) * sin(q3_) == L2;
eqn2 = sqrt(60.5^2+22.5^2) * sin(q2_) + sqrt(93^2+12^2) * cos(q3_) == sqrt(93^2+12^2);
eqns = [eqn1, eqn2];
S = solve(eqns, [q2_ q3_]);

% Select the best q2_ and q3_
if abs(S.q2_(2)) <= abs(S.q2_(1))
    q2_ = double(S.q2_(2));
    q3_ = double(S.q3_(2));
else
    q2_ = double(S.q2_(1));
    q3_ = double(S.q3_(1));
end

q2 = theta1 - q2_;
q3 = q3_ - theta2 - q2;

fprintf('Support front leg or swing back leg (move inward relative to body):\n');
fprintf('q1 = %f degree = %f or %f\n', rad2deg(q1), 512 + angle2val(q1), 512 - angle2val(q1));
fprintf('q2 = %f degree = %f or %f\n', rad2deg(q2), 512 + angle2val(q2), 512 - angle2val(q2));
fprintf('q3 = %f degree = %f or %f\n', rad2deg(q3), 512 + angle2val(q3), 512 - angle2val(q3));
fprintf('\n');

%% SWING FRONT LEG or SUPPORT BACK LEG
syms q2_ q3_ real
L2 = sqrt(-2*x*L1*cos(theta)+x^2+L1^2);
q1_ = asin(x*sin(theta)/L2);
q1 = theta + q1_;
L3 = sqrt(L2^2+4*x^2-4*L2*x*cos(pi-q1_-theta));
q1_ = asin(x*sin(pi-theta)/L3);
q1 = theta - q1_;

eqn1 = 49 + sqrt(60.5^2+22.5^2) * cos(q2_) + sqrt(93^2+12^2) * sin(q3_) == L3;
eqn2 = sqrt(60.5^2+22.5^2) * sin(q2_) + sqrt(93^2+12^2) * cos(q3_) == sqrt(93^2+12^2);
eqns = [eqn1, eqn2];
S = solve(eqns, [q2_ q3_]);

% Select the best q2_ and q3_
if abs(S.q2_(2)) <= abs(S.q2_(1))
    q2_ = double(S.q2_(2));
    q3_ = double(S.q3_(2));
else
    q2_ = double(S.q2_(1));
    q3_ = double(S.q3_(1));
end

q2 = theta1 - q2_;
q3 = q3_ - theta2 - q2;

fprintf('Swing front leg or support back leg (move outward relative to body):\n');
fprintf('q1 = %f degree = %f or %f\n', rad2deg(q1), 512 + angle2val(q1), 512 - angle2val(q1));
fprintf('q2 = %f degree = %f or %f\n', rad2deg(q2), 512 + angle2val(q2), 512 - angle2val(q2));
fprintf('q3 = %f degree = %f or %f\n', rad2deg(q3), 512 + angle2val(q3), 512 - angle2val(q3));
fprintf('\n');