%Datos de entrenamiento
data= load('data2.txt');
x=data(:,1);
y1=data(:,2);
y=data(:,3);
m=length(y);
n=3;
%Ploteo de datos de entrenamiento
figure;
hold on;
%plot(x,y,'dm','MarkerSize', 10);
plot(x,y,'dm',y,y1,'og','MarkerSize', 10);
%plot(z,'og','MarkerSize', 10);
%y1label('Precio de la casa');
ylabel('Número de habitaciones vs precio');
xlabel('Tamaño vs número de habitaciones');
hold off;

%inicializar datos
x=[ones(m,1),data(:,1)];
theta=zeros(2,1);
J=funcioncosto(x,y,theta);
fprintf('Con theta =[0;0]\n Funcion Costo = %f\n', J);

iterations =1500;
alpha=0.01;
theta=gradiente(x,y,theta, alpha,iterations);
fprintf('Valor de theta que minimiza la funcioncosto: \n');
fprintf('%f\n', theta);
hold on;
plot(x(:,2),x*theta,'-')
legend('Datos de entrenamiento','Regresion lineal múltiple')
hold off;
