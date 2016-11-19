function []=cars(position,order,ratio)

hold on;
x1=position(1,order(1));
y1=position(2,order(1));
plot([x1 x1-0.15*ratio],[y1 y1-0.3*ratio],'k');
hold on;
plot([x1 x1+0.15*ratio],[y1 y1-0.3*ratio],'k');
hold on;
fill([x1-0.3*ratio x1-0.3*ratio x1+0.3*ratio x1+0.3*ratio],[y1-0.5*ratio y1-0.3*ratio y1-0.3*ratio y1-0.5*ratio],'k');
hold on;

x2=position(1,order(2));
y2=position(2,order(2));
plot([x2 x2-0.15*ratio],[y2 y2-0.2*ratio],'k');
hold on;
plot([x2 x2+0.15*ratio],[y2 y2-0.2*ratio],'k');
hold on;
fill([x2-0.3*ratio x2-0.3*ratio x2+0.3*ratio x2+0.3*ratio],[y2-0.3*ratio y2-0.2*ratio y2-0.2*ratio y2-0.3*ratio],'k');
hold on;

t=deg2rad(0:360);
    X1=x2-0.2*ratio+ratio*0.1*cos(t);
    Y1=y2-0.4*ratio+ratio*0.1*sin(t);
    plot(X1,Y1);
    hold on;
    fill(X1,Y1,'y');
    
hold on;
    X2=x2+0.2*ratio+ratio*0.1*cos(t);
    Y2=y2-0.4*ratio+ratio*0.1*sin(t);
    plot(X2,Y2);
    hold on;
    fill(X2,Y2,'y');
    hold on;