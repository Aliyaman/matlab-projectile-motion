v0 = input("Enter the speed of ball: ");
theta = 10:10:90;
g = 9.81;

for i = 1:length(theta)
    theta_rad = deg2rad(theta(i));
    v0x = v0 * cos(theta_rad);
    v0y = v0 * sin(theta_rad);
    t = 2*(v0y/g);
    t_lin =linspace(0,t,500);

    range = v0x * t_lin;
    %max_h = (v0y*t_lin)/2;
    max_h = v0y * t_lin - 0.5 * g * t_lin.^2;
    figure;
    plot(range,max_h,"LineWidth",2);
    xlabel('Horizontal Distance (m)');
    ylabel('Vertical Distance (m)');
    grid on;
    axis equal;
    title("Angle:", theta(i));

end


