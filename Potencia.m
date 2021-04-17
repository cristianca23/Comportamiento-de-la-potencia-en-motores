clc,clear all,close all
%este programa graficara de la potenica instantanea y las componenetes p1(t)
% p2(t) de forma separada
%%
V=119.5;                                    %tension
I=0.08;                                     %corriente
t=[1:1000];                                 %tiempo de muestreo
alpha=63.328;                               %desfase
w=377;                  
%% Componente p1(t)
p1_1(t)=V*I*cos(alpha);                     %potencia activa monofasica
p1_1_T(t)=3*V*I*cos(alpha);                 %potencia activa trifasica
p1_2(t)=(1+cos(2*w*t));                     % trabajo recibido o entregado
p1(t)=(V*I*cos(alpha)*(1+cos(2*w*t)));      %componente p1(t)
%% componente p2(t)
p2_1(t)=V*I*sin(alpha);                     %potencia reactiva monofasica
p2_1_T(t)=3*V*I*sin(alpha);                 %potencia reactiva trifasica
p2_2(t)=sin(2*w*t);                         %potencia de magnetización
p2(t)=(V*I*sin(alpha)*sin(2*w*t));          %componente p2(t)
%% potencia total p(t)
p(t)=(V*I*cos(alpha)*(1+cos(2*w*t)))+(V*I*sin(alpha)*sin(2*w*t));  %potencia total
%% graficas
subplot(4,2,2),plot(p1_1(t)),title('potencia activa monofasica'),xlabel('tiempo'),ylabel('potencia');
subplot(4,2,1),plot(p1(t)),title('componente p1(t)'),xlabel('tiempo'),ylabel('potencia');
subplot(4,2,4),plot(p2_1(t)),title('potencia reactiva monofasica'),xlabel('tiempo'),ylabel('potencia');
subplot(4,2,3),plot(p2(t)),title('componente p2(t)'),xlabel('tiempo'),ylabel('potencia');
subplot(4,2,5),plot(p(t)),title('potencia instantanea'),xlabel('tiempo'),ylabel('potencia');
subplot(4,2,6),plot(p1_1_T(t)),title('potencia activa trifasica'),xlabel('tiempo'),ylabel('potencia');
subplot(4,2,8),plot(p2_1_T(t)),title('potencia reactiva trifasica'),xlabel('tiempo'),ylabel('potencia');