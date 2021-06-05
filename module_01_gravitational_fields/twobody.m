function ds = twobody(~, sv, mu)    
    % unpack state-vector
    rs = sv(1:3);
    vs = sv(4:6);
    % get radius
    r = norm(rs);
    as = -mu/r^3*[rs(1), rs(2), rs(3)]; % FILL IN VALUE
    % solving for acceleration using two body motion
    
    ds = zeros(6,1); % [km/s; km/s^2]
    % preallocating empty array for state derivative
    
    ds(1:3) = vs; % km/s
    ds(4:6) = as; % km/s^2
    % constructing state derivative matrix to be integrated by ode45
end