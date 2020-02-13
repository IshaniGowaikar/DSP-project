clc;
L=5;
N=16;
k=(-N/2:N/2);
Np=5;
T=1;
xn=[ones(1,L-1), zeros(1,N-L)];
% xn=repmat(xn,1,Np);
disp("skdskdka");
disp(xn);
t=linspace(0,T*Np,length(xn));
subplot(2,1,1);
stem(t,xn);

n=0:N-1;
k1=0:N-1;
w=exp((-1*i*2*pi)/N);
nk=n'*k1;
wNnk=w.^nk;
disp("wNnk");
disp(wNnk);
Xdtft= zeros(1,16);
disp("akwjqwkd");
disp(Xdtft);

for i=1:16
    for j=1:16
        Xdtft[1][j]=Xdtft[1][j-1]+(xn[1][j]*wNnk[j][i]);
    end
end
magXdtft=abs(Xdtft);
subplot(2,1,2);
plot(xn,magXdtft);

