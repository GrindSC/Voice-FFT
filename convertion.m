clc;
clear all;
close all;
parent_folder = cd;
addpath(parent_folder)  
% Load male voice samples
cd('male samples')
male_num = count_type();
male_data = convert_samples(male_num);
cd(parent_folder)
cd('female samples')
female_num = count_type();
female_data = convert_samples(female_num);
cd(parent_folder)
disp('Conversion Done')

a = male_data(1);
b = male_data(2);
figure(1)
plot(a{1,1})
figure(2)
plot(b{1,1})
c = female_data(3);
d = female_data(4);
figure(3)
plot(c{1,1})
figure(4)
plot(d{1,1})

csv = df(male_data,female_data);
writecell(male_data.','male.csv')
writecell(female_data.','female.csv')
disp('Write_csv Done')
