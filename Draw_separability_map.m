clear all;  
clc; 
close all


%% load detection results


a = dir;   
filename_path = a.folder;     
filename_path = strcat(filename_path,'\');
name_HSI = 'cut_1';     
name_detection_results = 'detection_results';

filename = strcat(filename_path,name_HSI,'.mat');
filename_detection_results = strcat(filename_path, name_detection_results, '.mat');

load(filename);
load(filename_detection_results);



X_cube = data;
[samples,lines,bands]=size(X_cube);
pixel_num = samples * lines;
X_use = reshape(X_cube,pixel_num,bands);
X = X_use.'; 

% ground-truth
gt = map;   
mask = reshape(gt,1,pixel_num);

%% Draw Box-and-Whisker Separability Map
figure;
get_boxplot(mask,r_group)   
set(gca,'YTick',0:25:255)    
ylim([-5 255])     
set(gca,'FontName','Times New Roman','FontWeight','bold','FontSize',20);grid on; box on;
set(gcf,'color','w');




