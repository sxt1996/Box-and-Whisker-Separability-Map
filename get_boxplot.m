function get_boxplot(mask,r_group)   
% Draw Box-and-Whisker Separability Map

% Input:
% mask: ground-truth
% r_group: detection results for all algorithms participating in the comparison  
% Output:
% box-and-whisker separability map





r_num = size(r_group,1);
target_position = find(mask==1);    
target_num = length(target_position);

background_position = find(mask==0); 
background_num = length(background_position);

background_group = [];
target_group = [];

for i = 1:r_num
    r = r_group(i,:);
    target = r(target_position);
    target= reshape(target,target_num,1);
    background = r(background_position);
    background = reshape(background,background_num,1);
    
    background_group = [background_group,background];
    target_group = [target_group,target];
end

position_background = 0.8:1:(r_num - 0.2); 

position_target = 1:1:r_num;
  
b = boxplot(background_group,'positions',position_background,'notch','off','color',[0,0,0.7],'labels',{'','','','','','','','','',''},'sym','b-','widths',0.2,'whisker',3);grid on;axis on;hold on;
t = boxplot(target_group,'positions',position_target,'notch','off','color',[0.7,0,0],'labels',{'MF','GLRT','CEM','ACE','S-ACE','CSCR','SLRMD','DM-BDL','TD-TSE','TD-IEEPST'},'sym','r-','widths',0.2,'whisker',3);grid on;axis on;

set(b,'linewidth',7);
set(t,'linewidth',7);




%% legend 
ylabel('Statistical Range of Detection Results');
xlabel('Detection Algorithm');
box_vars = findall(gca,'Tag','Box');
legend(box_vars([18,1]), {'bacdground','target'});

set(gca,'FontName','Times New Roman','FontWeight','bold','FontSize',35);grid on; box on;
set(gcf,'color','w');


end