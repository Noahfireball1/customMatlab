function DCM = DCMdeg(RotAngles,RotSequence)
n = length(RotSequence);
for i = 1:n
    k = RotSequence(i);
    switch k
        case 1
            Matrix(:,:,i) = [1 0 0;0 cosd(RotAngles(i)) sind(RotAngles(i));0 -sind(RotAngles(i)) cosd(RotAngles(i))];
        case 2
            Matrix(:,:,i) = [cosd(RotAngles(i)) 0 -sind(RotAngles(i));0 1 0;sind(RotAngles(i)) 0 cosd(RotAngles(i))];
        case 3
            Matrix(:,:,i) = [cosd(RotAngles(i)) sind(RotAngles(i)) 0;-sind(RotAngles(i)) cosd(RotAngles(i)) 0;0 0 1];
    end
end
p = 1;
while p < n
    Matrix(:,:,p+1) = Matrix(:,:,p) * Matrix(:,:,p+1);
    p = p + 1;
end
DCM = Matrix(:,:,p);
end