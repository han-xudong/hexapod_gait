clear all;close all;clc
figure('Position',[100 50 1000 800]);
x = [500 564 608 564 500 456 500];
y = [100 100 178.5 257 257 178.5 100];
h = animatedline(x,y,'Color','k','LineWidth',10);
lx1 = [500 443.225];
ly1 = [100 100-56.775*sqrt(3)];
l1 = animatedline(lx1,ly1,'Color','k','LineWidth',10);
lx2 = [564 620.775];
ly2 = [100 100-56.775*sqrt(3)];
l2 = animatedline(lx2,ly2,'Color','k','LineWidth',10);
lx3 = [608 721.55];
ly3 = [178.5 178.5];
l3 = animatedline(lx3,ly3,'Color','k','LineWidth',10);
lx4 = [564 620.775];
ly4 = [257 257+56.775*sqrt(3)];
l4 = animatedline(lx4,ly4,'Color','k','LineWidth',10);
lx5 = [500 443.225];
ly5 = [257 257+56.775*sqrt(3)];
l5 = animatedline(lx5,ly5,'Color','k','LineWidth',10);
lx6 = [456 342.45];
ly6 = [178.5 178.5];
l6 = animatedline(lx6,ly6,'Color','k','LineWidth',10);
px1 = [423.225 463.225];
py1 = [100-56.775*sqrt(3) 100-56.775*sqrt(3)];
p1 = animatedline(px1,py1,'Color','k','LineWidth',20);
px2 = [600.775 640.775];
py2 = [100-56.775*sqrt(3) 100-56.775*sqrt(3)];
p2 = animatedline(px2,py2,'Color','k','LineWidth',20);
px3 = [701.55 741.55];
py3 = [178.5 178.5];
p3 = animatedline(px3,py3,'Color','k','LineWidth',20);
px4 = [600.775 640.775];
py4 = [257+56.775*sqrt(3) 257+56.775*sqrt(3)];
p4 = animatedline(px4,py4,'Color','k','LineWidth',20);
px5 = [423.225 463.225];
py5 = [257+56.775*sqrt(3) 257+56.775*sqrt(3)];
p5 = animatedline(px5,py5,'Color','k','LineWidth',20);
px6 = [322.225 362.225];
py6 = [178.5 178.5];
p6 = animatedline(px6,py6,'Color','k','LineWidth',20);

xlim([0,1200]);
ylim([0,1000]);
for i=1:5
    clearpoints(l1)
    clearpoints(l2)
    clearpoints(l3)
    clearpoints(l4)
    clearpoints(l5)
    clearpoints(l6)
    clearpoints(p1)
    clearpoints(p2)
    clearpoints(p3)
    clearpoints(p4)
    clearpoints(p5)
    clearpoints(p6)
    l1 = animatedline(lx1,ly1,'Color','r','LineWidth',10);
    l3 = animatedline(lx3,ly3,'Color','r','LineWidth',10);
    l5 = animatedline(lx5,ly5,'Color','r','LineWidth',10);
    l2 = animatedline(lx2,ly2,'Color','k','LineWidth',10);
    l4 = animatedline(lx4,ly4,'Color','k','LineWidth',10);
    l6 = animatedline(lx6,ly6,'Color','k','LineWidth',10);
    p1 = animatedline(px1,py1,'Color','r','LineWidth',20);
    p3 = animatedline(px3,py3,'Color','r','LineWidth',20);
    p5 = animatedline(px5,py5,'Color','r','LineWidth',20);
    p2 = animatedline(px2,py2,'Color','k','LineWidth',20);
    p4 = animatedline(px4,py4,'Color','k','LineWidth',20);
    p6 = animatedline(px6,py6,'Color','k','LineWidth',20);
    for k=1:50
        clearpoints(h)
        clearpoints(l1)
        clearpoints(l2)
        clearpoints(l3)
        clearpoints(l4)
        clearpoints(l5)
        clearpoints(l6)
        clearpoints(p1)
        clearpoints(p3)
        clearpoints(p5)
        addpoints(h,x,y+0.5*k);
        addpoints(l1,lx1,ly1+[0.5*k k]);
        addpoints(l2,lx2,ly2+[0.5*k 0]);
        addpoints(l3,lx3,ly3+[0.5*k k]);
        addpoints(l4,lx4,ly4+[0.5*k 0]);
        addpoints(l5,lx5,ly5+[0.5*k k]);
        addpoints(l6,lx6,ly6+[0.5*k 0]);
        addpoints(p1,px1,py1+[k k]);
        addpoints(p3,px3,py3+[k k]);
        addpoints(p5,px5,py5+[k k]);
        drawnow
    end
    y = y+25;
    ly1 = ly1+[25 50];
    ly2 = ly2+[25 0];
    ly3 = ly3+[25 50];
    ly4 = ly4+[25 0];
    ly5 = ly5+[25 50];
    ly6 = ly6+[25 0];
    py1 = py1+50;
    py3 = py3+50;
    py5 = py5+50;
    clearpoints(h)
    clearpoints(l1)
    clearpoints(l2)
    clearpoints(l3)
    clearpoints(l4)
    clearpoints(l5)
    clearpoints(l6)
    clearpoints(p1)
    clearpoints(p2)
    clearpoints(p3)
    clearpoints(p4)
    clearpoints(p5)
    clearpoints(p6)
    addpoints(h,x,y);
    
    l1 = animatedline(lx1,ly1,'Color','k','LineWidth',10);
    l3 = animatedline(lx3,ly3,'Color','k','LineWidth',10);
    l5 = animatedline(lx5,ly5,'Color','k','LineWidth',10);
    l2 = animatedline(lx2,ly2,'Color','r','LineWidth',10);
    l4 = animatedline(lx4,ly4,'Color','r','LineWidth',10);
    l6 = animatedline(lx6,ly6,'Color','r','LineWidth',10);
    p1 = animatedline(px1,py1,'Color','k','LineWidth',20);
    p3 = animatedline(px3,py3,'Color','k','LineWidth',20);
    p5 = animatedline(px5,py5,'Color','k','LineWidth',20);
    p2 = animatedline(px2,py2,'Color','r','LineWidth',20);
    p4 = animatedline(px4,py4,'Color','r','LineWidth',20);
    p6 = animatedline(px6,py6,'Color','r','LineWidth',20);
    for k=1:50
        clearpoints(h)
        clearpoints(l1)
        clearpoints(l2)
        clearpoints(l3)
        clearpoints(l4)
        clearpoints(l5)
        clearpoints(l6)
        clearpoints(p2)
        clearpoints(p4)
        clearpoints(p6)
        addpoints(h,x,y+0.5*k);
        addpoints(l1,lx1,ly1+[0.5*k 0]);
        addpoints(l2,lx2,ly2+[0.5*k k]);
        addpoints(l3,lx3,ly3+[0.5*k 0]);
        addpoints(l4,lx4,ly4+[0.5*k k]);
        addpoints(l5,lx5,ly5+[0.5*k 0]);
        addpoints(l6,lx6,ly6+[0.5*k k]);
        addpoints(p2,px2,py2+[k k]);
        addpoints(p4,px4,py4+[k k]);
        addpoints(p6,px6,py6+[k k]);
        drawnow
    end
    y = y+25;
    ly1 = ly1+[25 0];
    ly2 = ly2+[25 50];
    ly3 = ly3+[25 0];
    ly4 = ly4+[25 50];
    ly5 = ly5+[25 0];
    ly6 = ly6+[25 50];
    py2 = py2+50;
    py4 = py4+50;
    py6 = py6+50;
    clearpoints(h)
    clearpoints(l1)
    clearpoints(l2)
    clearpoints(l3)
    clearpoints(l4)
    clearpoints(l5)
    clearpoints(l6)
    clearpoints(p1)
    clearpoints(p2)
    clearpoints(p3)
    clearpoints(p4)
    clearpoints(p5)
    clearpoints(p6)
    addpoints(h,x,y);
    
    l1 = animatedline(lx1,ly1,'Color','k','LineWidth',10);
    l3 = animatedline(lx3,ly3,'Color','k','LineWidth',10);
    l5 = animatedline(lx5,ly5,'Color','k','LineWidth',10);
    l2 = animatedline(lx2,ly2,'Color','r','LineWidth',10);
    l4 = animatedline(lx4,ly4,'Color','r','LineWidth',10);
    l6 = animatedline(lx6,ly6,'Color','r','LineWidth',10);
    p1 = animatedline(px1,py1,'Color','k','LineWidth',20);
    p3 = animatedline(px3,py3,'Color','k','LineWidth',20);
    p5 = animatedline(px5,py5,'Color','k','LineWidth',20);
    p2 = animatedline(px2,py2,'Color','r','LineWidth',20);
    p4 = animatedline(px4,py4,'Color','r','LineWidth',20);
    p6 = animatedline(px6,py6,'Color','r','LineWidth',20);
    for k=1:50
        clearpoints(h)
        clearpoints(l1)
        clearpoints(l2)
        clearpoints(l3)
        clearpoints(l4)
        clearpoints(l5)
        clearpoints(l6)
        clearpoints(p2)
        clearpoints(p4)
        clearpoints(p6)
        addpoints(h,x,y+0.5*k);
        addpoints(l1,lx1,ly1+[0.5*k 0]);
        addpoints(l2,lx2,ly2+[0.5*k k]);
        addpoints(l3,lx3,ly3+[0.5*k 0]);
        addpoints(l4,lx4,ly4+[0.5*k k]);
        addpoints(l5,lx5,ly5+[0.5*k 0]);
        addpoints(l6,lx6,ly6+[0.5*k k]);
        addpoints(p2,px2,py2+[k k]);
        addpoints(p4,px4,py4+[k k]);
        addpoints(p6,px6,py6+[k k]);
        drawnow
    end
    y = y+25;
    ly1 = ly1+[25 0];
    ly2 = ly2+[25 50];
    ly3 = ly3+[25 0];
    ly4 = ly4+[25 50];
    ly5 = ly5+[25 0];
    ly6 = ly6+[25 50];
    py2 = py2+50;
    py4 = py4+50;
    py6 = py6+50;
    clearpoints(h)
    clearpoints(l1)
    clearpoints(l2)
    clearpoints(l3)
    clearpoints(l4)
    clearpoints(l5)
    clearpoints(l6)
    clearpoints(p1)
    clearpoints(p2)
    clearpoints(p3)
    clearpoints(p4)
    clearpoints(p5)
    clearpoints(p6)
    addpoints(h,x,y);
    
    l1 = animatedline(lx1,ly1,'Color','r','LineWidth',10);
    l3 = animatedline(lx3,ly3,'Color','r','LineWidth',10);
    l5 = animatedline(lx5,ly5,'Color','r','LineWidth',10);
    l2 = animatedline(lx2,ly2,'Color','k','LineWidth',10);
    l4 = animatedline(lx4,ly4,'Color','k','LineWidth',10);
    l6 = animatedline(lx6,ly6,'Color','k','LineWidth',10);
    p1 = animatedline(px1,py1,'Color','r','LineWidth',20);
    p3 = animatedline(px3,py3,'Color','r','LineWidth',20);
    p5 = animatedline(px5,py5,'Color','r','LineWidth',20);
    p2 = animatedline(px2,py2,'Color','k','LineWidth',20);
    p4 = animatedline(px4,py4,'Color','k','LineWidth',20);
    p6 = animatedline(px6,py6,'Color','k','LineWidth',20);
    for k=1:50
        clearpoints(h)
        clearpoints(l1)
        clearpoints(l2)
        clearpoints(l3)
        clearpoints(l4)
        clearpoints(l5)
        clearpoints(l6)
        clearpoints(p1)
        clearpoints(p3)
        clearpoints(p5)
        addpoints(h,x,y+0.5*k);
        addpoints(l1,lx1,ly1+[0.5*k k]);
        addpoints(l2,lx2,ly2+[0.5*k 0]);
        addpoints(l3,lx3,ly3+[0.5*k k]);
        addpoints(l4,lx4,ly4+[0.5*k 0]);
        addpoints(l5,lx5,ly5+[0.5*k k]);
        addpoints(l6,lx6,ly6+[0.5*k 0]);
        addpoints(p1,px1,py1+[k k]);
        addpoints(p3,px3,py3+[k k]);
        addpoints(p5,px5,py5+[k k]);
        drawnow
    end
    y = y+25;
    ly1 = ly1+[25 50];
    ly2 = ly2+[25 0];
    ly3 = ly3+[25 50];
    ly4 = ly4+[25 0];
    ly5 = ly5+[25 50];
    ly6 = ly6+[25 0];
    py1 = py1+50;
    py3 = py3+50;
    py5 = py5+50;
    clearpoints(h)
    clearpoints(l1)
    clearpoints(l2)
    clearpoints(l3)
    clearpoints(l4)
    clearpoints(l5)
    clearpoints(l6)
    clearpoints(p1)
    clearpoints(p2)
    clearpoints(p3)
    clearpoints(p4)
    clearpoints(p5)
    clearpoints(p6)
    addpoints(h,x,y);
    addpoints(p1,px1,py1);
    addpoints(p2,px2,py2);
    addpoints(p3,px3,py3);
    addpoints(p4,px4,py4);
    addpoints(p5,px5,py5);
    addpoints(p6,px6,py6);
end
l1 = animatedline(lx1,ly1,'Color','k','LineWidth',10);
l3 = animatedline(lx3,ly3,'Color','k','LineWidth',10);
l5 = animatedline(lx5,ly5,'Color','k','LineWidth',10);
l2 = animatedline(lx2,ly2,'Color','k','LineWidth',10);
l4 = animatedline(lx4,ly4,'Color','k','LineWidth',10);
l6 = animatedline(lx6,ly6,'Color','k','LineWidth',10);
p1 = animatedline(px1,py1,'Color','k','LineWidth',20);
p3 = animatedline(px3,py3,'Color','k','LineWidth',20);
p5 = animatedline(px5,py5,'Color','k','LineWidth',20);
p2 = animatedline(px2,py2,'Color','k','LineWidth',20);
p4 = animatedline(px4,py4,'Color','k','LineWidth',20);
p6 = animatedline(px6,py6,'Color','k','LineWidth',20);