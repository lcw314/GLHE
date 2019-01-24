clear all;

In=imread('infrared.png');

r=2;
alpha=1;
lamb=0.1;
c=2;
[out_g,out_l,out]=GLHE(In, 255, r, alpha, c, lamb);
figure;
imshow([In,out_g;out_l,out]);
title('In,global,local,final');
