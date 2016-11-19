function [angle]=slantAngle(x,y)

if (x==0)
    if(y>0)
        angle=pi/2;
    else
        angle=-pi/2;
    end
elseif(x>0)
    angle=atan(y/x);
else
    angle=pi+atan(y/x);
end