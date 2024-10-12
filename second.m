v0 = input("Enter the speed of ball: ");
angle = input("Enter the angle(degree): ");
g=9.81;

%Calculate velocities
ang_rad = deg2rad(angle);
v0x = v0 * cos(ang_rad);
v0y = v0 * sin(ang_rad);

%Calculate time
total_t = 2*(v0y/g);
t = linspace(0,total_t,500);

%Claculate range and maximum height of ball
range = v0x * t;
max_h = v0y * t - 0.5 * g * t.^2;

%aaa
ht = v0y / g;
hy = v0y^2 / (2 * g);
hx = v0x * ht;

%draw grapha
figure;
plot(range,max_h,"LineWidth",2);
hold on;
plot(hx, hy, "ro", "MarkerFaceColor", "r");
xlabel("Horizontal Distance")
ylabel("Vertical Distance")
grid on;
hold off;
