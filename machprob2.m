x1 = input('X1: ');
y1 = input('Y1: ');
x2 = input('X2: ');
y2 = input('Y2: ');
x3 = input('X3: ');
y3 = input('Y3: ');

def0 = [x1, y1, 1; x2, y2, 1; x3, y3, 1];
A = det(def0);
Def = [((x1)^2+(y1)^2), y1, 1; ((x2)^2+(y2)^2), y2, 1; ((x3)^2+(y3)^2), y3, 1];
D = -det(Def);
dEf = [((x1)^2+(y1)^2), x1, 1; ((x2)^2+(y2)^2), x2, 1; ((x3)^2+(y3)^2), x3, 1];
E = det(dEf);
deF = [((x1)^2+(y1)^2), x1, y1; ((x2)^2+(y2)^2), x2, y2; ((x3)^2+(y3)^2), x3, y3];
F = -det(deF);
h = (D/(2*A));
k = (E/(2*A));
r = sqrt(((D^2)+(E^2)-(4*A*F))/(4*(A^2)));
D1 = D/A;
E1 = E/A;
F1 = F/A;
fprintf('CENTER: (%.2f, %.2f)', h, k);
fprintf('\nRADIUS: %.2f', r);
fprintf('\nVECTOR: [%.2f, %.2f, %.2f]\n', D1, E1, F1);
return