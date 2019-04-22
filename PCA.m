Nums=500;
x=40*(rand(2,Nums)-0.5);
y=0.8*x(1,:)+0.5*x(2,:)+normrnd(0,3,1,Nums);
X=zeros(3,Nums);
X(1:2,:)=x;
X(3,:)=y;
figure(1)
plot3(X(1,:),X(2,:),X(3,:),'ro')
all=zeros(3,1);
all=sum(X,2);
mean=zeros(3,1);
mean=all/500;
for i=1:1:500
    X(:,i)=X(:,i)-mean;
end
xiefangchajuzhen=zeros(3,3);
xiefangchajuzhen=X*(X');
[ev,ed]=eig(xiefangchajuzhen);
W=zeros(3,2);
W=[ev(:,2),ev(:,3)];
for j=1:1:500
    %xinzuobiao=zeros(2,500);
    xinzuobiao(:,j)=(W')*X(:,j);
end
figure(2)
hold on;
plot(xinzuobiao(1,:),xinzuobiao(2,:),'ko');


