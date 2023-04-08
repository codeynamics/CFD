x=linspace(0,L,nx);
y=linspace(0,H,ny);
dx=L/(nx-1);
dy=H/(ny-1);

%Initialisation of Temperatures
T=zeros(nx,ny);

%Boundary Conditions
T(:,1)=120;
T(1,:)=50;
T(:,end)=0;
T(end,:)=30;
T_old=T;

beta=(dx/dy)^2;
err=200;
tol=1e-3;
k=0;
while err> tol
    k=k+1;
    for i=2:nx-1
        for j=2:ny-1
            T(i,j)=(1/(2+(1+beta)))*(T(i+1,j)+T(i-1,j)+(beta*(T(i,j+1)+T(i,j-1))));
        end
    end

err=abs(max(max(T-T_old)));
err_p(k)=err;
T_old=T;

figure(1)
plot(err_p);
shg;
pause(0.01);

xlabel("No. of iterations","FontSize",10);
ylabel("Error/Residual [-]","FontSize",10);
set(gca,'FontSize',10);

figure(2)
contourf(x,y,T);
%contourf(x,y,T,'ShowText','on');
xlabel('Length (m)','FontSize',10);
ylabel('Height (m)','FontSize',10);
title('2D Steady State Heat Conduction','FontSize',12);
set(gca,'FontSize',12);
%set(gca,'clim', [-90 -32]);

end
