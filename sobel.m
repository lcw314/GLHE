function out=sobel(In)
hx=[-1 -2 -1;0 0 0;1 2 1];
[hight,width]=size(In);
X=padarray(double(In),[1 1],'symmetric');
g_x=zeros(hight,width);
g_y=zeros(hight,width);
for i=2:hight+1
    for j=2:width+1
        g_x(i-1,j-1)=sum(sum(X(i-1:i+1,j-1:j+1).*hx));
        g_y(i-1,j-1)=sum(sum(X(i-1:i+1,j-1:j+1).*hx'));
    end
end

out=sqrt(g_x.^2+g_y.^2);



