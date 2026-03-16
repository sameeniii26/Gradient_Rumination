%% Cal Grad

GradSuzhou = GradientMaps('kernel','normalized angle','approach','dm','alignment','pa','n_components',6);
GradSuzhou = GradSuzhou.fit(RumAll);
GradAll = GradSuzhou.aligned
save('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/distribution_WithBeijing/GradAll.mat','GradAll')
%% Mean Gradient
Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/distribution_WithBeijing/'
GradBeijing = GradAll(1,1:492)
GradSuzhou = GradAll(1,493:853)
save([Outdir,'GradBeijing.mat'],'GradBeijing')
save([Outdir,'GradSuzhou.mat'],'GradSuzhou')

GradSuzhou_rest = GradSuzhou(1,1:90)
GradSuzhou_sad = GradSuzhou(1,91:179)
GradSuzhou_rumination = GradSuzhou(1,180:270)
GradSuzhou_distraction = GradSuzhou(1,271:361)

save([Outdir,'GradSuzhou_rest.mat'],'GradSuzhou_rest')
save([Outdir,'GradSuzhou_sad.mat'],'GradSuzhou_sad')
save([Outdir,'GradSuzhou_rumination.mat'],'GradSuzhou_rumination')
save([Outdir,'GradSuzhou_distraction.mat'],'GradSuzhou_distraction')

%GradSuzhou_name_All = {'GradSuzhou_rest','GradSuzhou_sad','GradSuzhou_rumination','GradSuzhou_distraction'}

%for i = 1:4
%    Sub_num = length(GradSuzhou_All{i}(:));
%    Sub_GradSuzhou = zeros(400,6,Sub_num);
%    for k =1:Sub_num
%        Sub_GradSuzhou(:,:,k) = GradSuzhou_All{i}{k}(:,:);
%        GradMean = mean(Sub_GradSuzhou,3);
%    end
%    save([Outdir,GradSuzhou_name_All{i},'_Mean','.mat'],'GradMean');
%end

% MDD_rumi
Sub_GradSuzhou = zeros(454,6,45);
for k =1:45
    Sub_GradSuzhou(:,:,k) = GradSuzhou_rumination{k}(:,:);
    GradSuzhou_rumi_MDD_Mean = mean(Sub_GradSuzhou,3);
end
save([Outdir,'GradSuzhou_rumi_MDD_Mean','.mat'],'GradSuzhou_rumi_MDD_Mean');

% MDD_dist
Sub_GradSuzhou = zeros(454,6,45);
for k =1:45
    Sub_GradSuzhou(:,:,k) = GradSuzhou_distraction{k}(:,:);
    GradSuzhou_dist_MDD_Mean = mean(Sub_GradSuzhou,3);
end
save([Outdir,'GradSuzhou_dist_MDD_Mean','.mat'],'GradSuzhou_dist_MDD_Mean');

% HC_rumi
Sub_GradSuzhou = zeros(454,6,46);
for k =46:91
    n = k-45
    Sub_GradSuzhou(:,:,n) = GradSuzhou_rumination{k}(:,:);
    GradSuzhou_rumi_HC_Mean = mean(Sub_GradSuzhou,3);
end
save([Outdir,'GradSuzhou_rumi_HC_Mean','.mat'],'GradSuzhou_rumi_HC_Mean');

% HC_dist
Sub_GradSuzhou = zeros(454,6,46);
for k =46:91
    n = k-45
    Sub_GradSuzhou(:,:,n) = GradSuzhou_distraction{k}(:,:);
    GradSuzhou_dist_HC_Mean = mean(Sub_GradSuzhou,3);
end
save([Outdir,'GradSuzhou_dist_HC_Mean','.mat'],'GradSuzhou_dist_HC_Mean');

% HC_rest
Sub_GradSuzhou = zeros(454,6,46);
for k =45:90
    n = k-44
    Sub_GradSuzhou(:,:,n) = GradSuzhou_rest{k}(:,:);
    GradSuzhou_rest_HC_Mean = mean(Sub_GradSuzhou,3);
end
save([Outdir,'GradSuzhou_rest_HC_Mean','.mat'],'GradSuzhou_rest_HC_Mean');

% MDD_rest
Sub_GradSuzhou = zeros(454,6,44);
for k =1:44
    Sub_GradSuzhou(:,:,k) = GradSuzhou_rest{k}(:,:);
    GradSuzhou_rest_MDD_Mean = mean(Sub_GradSuzhou,3);
end
save([Outdir,'GradSuzhou_rest_MDD_Mean','.mat'],'GradSuzhou_rest_MDD_Mean');

Gp_IPCAS_rest = GradBeijing(1,1:41)
Gp_IPCAS_task_S2 = GradBeijing(1,42:82)
Gp_IPCAS_task_S3 = GradBeijing(1,83:123)
Gp_IPCAS_task_S4 = GradBeijing(1,124:164)

Gp_PKUGE_rest = GradBeijing(1,165:205)
Gp_PKUGE_task_S2 = GradBeijing(1,206:246)
Gp_PKUGE_task_S3 = GradBeijing(1,247:287)
Gp_PKUGE_task_S4 = GradBeijing(1,288:328)

Gp_PKUSIEMENS_rest = GradBeijing(1,329:369)
Gp_PKUSIEMENS_task_S2 = GradBeijing(1,370:410)
Gp_PKUSIEMENS_task_S3 = GradBeijing(1,411:451)
Gp_PKUSIEMENS_task_S4 = GradBeijing(1,452:492)

save([Outdir,'Gp_IPCAS_rest.mat'],'Gp_IPCAS_rest')
%save([Outdir,'Gp_IPCAS_task_S2.mat'],'Gp_IPCAS_task_S2')
save([Outdir,'Gp_IPCAS_task_S3.mat'],'Gp_IPCAS_task_S3')
save([Outdir,'Gp_IPCAS_task_S4.mat'],'Gp_IPCAS_task_S4')

save([Outdir,'Gp_PKUGE_rest.mat'],'Gp_PKUGE_rest')
%save([Outdir,'Gp_PKUGE_task_S2.mat'],'Gp_PKUGE_task_S2')
save([Outdir,'Gp_PKUGE_task_S3.mat'],'Gp_PKUGE_task_S3')
save([Outdir,'Gp_PKUGE_task_S4.mat'],'Gp_PKUGE_task_S4')

save([Outdir,'Gp_PKUSIEMENS_rest.mat'],'Gp_PKUSIEMENS_rest')
%save([Outdir,'Gp_PKUSIEMENS_task_S2.mat'],'Gp_PKUSIEMENS_task_S2')
save([Outdir,'Gp_PKUSIEMENS_task_S3.mat'],'Gp_PKUSIEMENS_task_S3')
save([Outdir,'Gp_PKUSIEMENS_task_S4.mat'],'Gp_PKUSIEMENS_task_S4')


% IPCAS_rest
Sub_GradBeijing = zeros(454,6,41);
for k =1:41
    Sub_GradBeijing(:,:,k) = Gp_IPCAS_rest{k}(:,:);
    GradIPCAS_rest_Mean = mean(Sub_GradBeijing,3);
end
save([Outdir,'GradIPCAS_rest_Mean','.mat'],'GradIPCAS_rest_Mean');
GradIPCAS_rest_Mean_G1 = GradIPCAS_rest_Mean(:,1)
GradIPCAS_rest_Mean_G1 = -GradIPCAS_rest_Mean_G1

% IPCAS_rumi
Sub_GradBeijing = zeros(454,6,41);
for k =1:41
    Sub_GradBeijing(:,:,k) = Gp_IPCAS_task_S3{k}(:,:);
    GradIPCAS_rumi_Mean = mean(Sub_GradBeijing,3);
end
save([Outdir,'GradIPCAS_rumi_Mean','.mat'],'GradIPCAS_rumi_Mean');
GradIPCAS_rumi_Mean_G1 = GradIPCAS_rumi_Mean(:,1)
GradIPCAS_rumi_Mean_G1 = -GradIPCAS_rumi_Mean_G1

GradIPCAS_dist_Mean_G1 = GradIPCAS_dist_Mean(:,1)
GradIPCAS_dist_Mean_G1 = -GradIPCAS_dist_Mean_G1

% maps
GradBrainL = zeros(length(LeftTemplate),1);
GradBrainR = zeros(length(RightTemplate),1);
GradBrainV = zeros(size(VBrain));
for iROI = 1:200
    GradBrainL(find(LeftTemplate==iROI)) = FDR_T_result(iROI,1);
end
for iROI = 201:400
    GradBrainR(find(RightTemplate==iROI-200)) = FDR_T_result(iROI,1);
end
for iROI = 401:454
    GradBrainV(find(VBrain==iROI-400)) = FDR_T_result(iROI,1);
end
y_Write(GradBrainL,HeaderL,[OutDir,filesep,'GradientMap_Left_','PKUGE_S3_S4']);
y_Write(GradBrainR,HeaderR,[OutDir,filesep,'GradientMap_right_','PKUGE_S3_S4']);
y_Write(GradBrainV,HeaderV,[OutDir,filesep,'GradientMap_Volume_','PKUGE_S3_S4']);


%% scatter plot
% 创建数据放到prism里画
% IPCAS_rest
IPCAS_rest = zeros(454,8);
for i = 1:8
    Index = find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork==i);
    IPCAS_rest(Index,i) = -GradIPCAS_rest_Mean(Index,1); % consist with Seok-Jun Hong, NC, 2019
end
IPCAS_rest(find(IPCAS_rest==0)) =nan;
% Grad 2
GradIPCAS_rest_Mean(:,2) = GradIPCAS_rest_Mean(:,2)

% IPCAS_rumi
IPCAS_rumi = zeros(454,8);
for i = 1:8
    Index = find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork==i);
    IPCAS_rumi(Index,i) = -GradIPCAS_rumi_Mean(Index,1); % consist with Seok-Jun Hong, NC, 2019
end
IPCAS_rumi(find(IPCAS_rumi==0)) =nan;

% IPCAS_dist
IPCAS_dist = zeros(454,8);
for i = 1:8
    Index = find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork==i);
    IPCAS_dist(Index,i) = -GradIPCAS_dist_Mean(Index,1); % consist with Seok-Jun Hong, NC, 2019
end
IPCAS_dist(find(IPCAS_dist==0)) =nan;

% PKUGE_rest
PKUGE_rest = zeros(454,8);
for i = 1:8
    Index = find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork==i);
    PKUGE_rest(Index,i) = -GradPKUGE_rest_Mean(Index,1); % consist with Seok-Jun Hong, NC, 2019
end
PKUGE_rest(find(PKUGE_rest==0)) =nan;
% Grad 2
GradPKUGE_rest_Mean(:,2) = GradPKUGE_rest_Mean(:,2)

% PKUGE_rumi
PKUGE_rumi = zeros(454,8);
for i = 1:8
    Index = find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork==i);
    PKUGE_rumi(Index,i) = -GradPKUGE_rumi_Mean(Index,1); % consist with Seok-Jun Hong, NC, 2019
end
PKUGE_rumi(find(PKUGE_rumi==0)) =nan;

% PKUGE_dist
PKUGE_dist = zeros(454,8);
for i = 1:8
    Index = find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork==i);
    PKUGE_dist(Index,i) = -GradPKUGE_dist_Mean(Index,1); % consist with Seok-Jun Hong, NC, 2019
end
PKUGE_dist(find(PKUGE_dist==0)) =nan;

% PKUSIEMENS_rest
PKUSIEMENS_rest = zeros(454,8);
for i = 1:8
    Index = find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork==i);
    PKUSIEMENS_rest(Index,i) = -GradPKUSIEMENS_rest_Mean(Index,1); % consist with Seok-Jun Hong, NC, 2019
end
PKUSIEMENS_rest(find(PKUSIEMENS_rest==0)) =nan;
% Grad 2
GradPKUSIEMENS_rest_Mean(:,2) = GradPKUSIEMENS_rest_Mean(:,2)

% PKUSIEMENS_rumi
PKUSIEMENS_rumi = zeros(454,8);
for i = 1:8
    Index = find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork==i);
    PKUSIEMENS_rumi(Index,i) = -GradPKUSIEMENS_rumi_Mean(Index,1); % consist with Seok-Jun Hong, NC, 2019
end
PKUSIEMENS_rumi(find(PKUSIEMENS_rumi==0)) =nan;

% PKUSIEMENS_dist
PKUSIEMENS_dist = zeros(454,8);
for i = 1:8
    Index = find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork==i);
    PKUSIEMENS_dist(Index,i) = -GradPKUSIEMENS_dist_Mean(Index,1); % consist with Seok-Jun Hong, NC, 2019
end
PKUSIEMENS_dist(find(PKUSIEMENS_dist==0)) =nan;

% HC_rest
HC_rest = zeros(454,8);
for i = 1:8
    Index = find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork==i);
    HC_rest(Index,i) = -GradSuzhou_rest_HC_Mean(Index,1); % consist with Seok-Jun Hong, NC, 2019
end
HC_rest(find(HC_rest==0)) =nan;

% HC_rumi
HC_rumi = zeros(454,8);
for i = 1:8
    Index = find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork==i);
    HC_rumi(Index,i) = -GradSuzhou_rumi_HC_Mean(Index,1); % consist with Seok-Jun Hong, NC, 2019
end
HC_rumi(find(HC_rumi==0)) =nan;

% HC_dist
HC_dist = zeros(454,8);
for i = 1:8
    Index = find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork==i);
    HC_dist(Index,i) = -GradSuzhou_dist_HC_Mean(Index,1); % consist with Seok-Jun Hong, NC, 2019
end
HC_dist(find(HC_dist==0)) =nan;

% MDD_rest
MDD_rest = zeros(454,8);
for i = 1:8
    Index = find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork==i);
    MDD_rest(Index,i) = -GradSuzhou_rest_MDD_Mean(Index,1); % consist with Seok-Jun Hong, NC, 2019
end
MDD_rest(find(MDD_rest==0)) =nan;

% MDD_rumi
MDD_rumi = zeros(454,8);
for i = 1:8
    Index = find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork==i);
    MDD_rumi(Index,i) = -GradSuzhou_rumi_MDD_Mean(Index,1); % consist with Seok-Jun Hong, NC, 2019
end
MDD_rumi(find(MDD_rumi==0)) =nan;

% MDD_dist
MDD_dist = zeros(454,8);
for i = 1:8
    Index = find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork==i);
    MDD_dist(Index,i) = -GradSuzhou_dist_MDD_Mean(Index,1); % consist with Seok-Jun Hong, NC, 2019
end
MDD_dist(find(MDD_dist==0)) =nan;
%% Cal SubGrad

mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_IPCAS_rest/G1')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_IPCAS_rest/G2')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_IPCAS_task_S2/G1')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_IPCAS_task_S2/G2')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_IPCAS_task_S3/G1')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_IPCAS_task_S3/G2')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_IPCAS_task_S4/G1')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_IPCAS_task_S4/G2')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_PKUGE_rest/G1')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_PKUGE_rest/G2')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_PKUGE_task_S2/G1')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_PKUGE_task_S2/G2')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_PKUGE_task_S3/G1')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_PKUGE_task_S3/G2')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_PKUGE_task_S4/G1')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_PKUGE_task_S4/G2')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_PKUSIEMENS_rest/G1')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_PKUSIEMENS_rest/G2')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_PKUSIEMENS_task_S2/G1')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_PKUSIEMENS_task_S2/G2')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_PKUSIEMENS_task_S3/G1')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_PKUSIEMENS_task_S3/G2')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_PKUSIEMENS_task_S4/G1')
mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_PKUSIEMENS_task_S4/G2')

Group = {Gp_IPCAS_rest,Gp_IPCAS_task_S2,Gp_IPCAS_task_S3,Gp_IPCAS_task_S4,Gp_PKUGE_rest,Gp_PKUGE_task_S2,Gp_PKUGE_task_S3,Gp_PKUGE_task_S4,Gp_PKUSIEMENS_rest,Gp_PKUSIEMENS_task_S2,Gp_PKUSIEMENS_task_S3,Gp_PKUSIEMENS_task_S4}

Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/'
SubGrad = zeros(454,1)
for i = 1:12
    for j = 1:41
        for k = 1
            SubGrad = -Group{i}{j}(:,k)
            save([Outdir,GroupName{i},'/',NumGrad{k},'/','Sub_',num2str(j),'.mat'],'SubGrad')
        end
    end
end

Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/'
SubGrad = zeros(454,1)
for i = 1:12
    for j = 1:41
        for k = 2
            SubGrad = Group{i}{j}(:,k)
            save([Outdir,GroupName{i},'/',NumGrad{k},'/','Sub_',num2str(j),'.mat'],'SubGrad')
        end
    end
end

Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/'
mkdir(Outdir)

Condition_list = {'MDD_rumi','MDD_dist','HC_rumi','HC_dist'}
Grad_list = {'G1','G2'}

% for rumination MDD & HC
for k = 1
    for j = 1:45
        SubGrad = zeros(454,1)
        SubGrad(:) = GradSuzhou_rumination{j}(:,k)
        SubGrad = -SubGrad
        mkdir([Outdir,Condition_list{1},'/',Grad_list{k}])
        save([Outdir,Condition_list{1},'/',Grad_list{k},'/','Sub_',sub_list_MDD{j},'.mat'],'SubGrad')
    end
    for j = 46:91
        SubGrad = zeros(454,1)
        SubGrad(:) = GradSuzhou_rumination{j}(:,k)
        SubGrad = -SubGrad
        mkdir([Outdir,Condition_list{3},'/',Grad_list{k}])
        save([Outdir,Condition_list{3},'/',Grad_list{k},'/','Sub_',sub_list_HC{j-45},'.mat'],'SubGrad')
    end
end

for k = 2
    for j = 1:45
        SubGrad = zeros(454,1)
        SubGrad(:) = GradSuzhou_rumination{j}(:,k)
        mkdir([Outdir,Condition_list{1},'/',Grad_list{k}])
        save([Outdir,Condition_list{1},'/',Grad_list{k},'/','Sub_',sub_list_MDD{j},'.mat'],'SubGrad')
    end
    for j = 46:91
        SubGrad = zeros(454,1)
        SubGrad(:) = GradSuzhou_rumination{j}(:,k)
        mkdir([Outdir,Condition_list{3},'/',Grad_list{k}])
        save([Outdir,Condition_list{3},'/',Grad_list{k},'/','Sub_',sub_list_HC{j-45},'.mat'],'SubGrad')
    end
end

% for distraction MDD & HC
for k = 1
    for j = 1:45
        SubGrad = zeros(454,1)
        SubGrad(:) = GradSuzhou_distraction{j}(:,k)
        SubGrad = -SubGrad
        mkdir([Outdir,Condition_list{2},'/',Grad_list{k}])
        save([Outdir,Condition_list{2},'/',Grad_list{k},'/','Sub_',sub_list_MDD{j},'.mat'],'SubGrad')
    end
    for j = 46:91
        SubGrad = zeros(454,1)
        SubGrad(:) = GradSuzhou_distraction{j}(:,k)
        SubGrad = -SubGrad
        mkdir([Outdir,Condition_list{4},'/',Grad_list{k}])
        save([Outdir,Condition_list{4},'/',Grad_list{k},'/','Sub_',sub_list_HC{j-45},'.mat'],'SubGrad')
    end
end

for k = 2
    for j = 1:45
        SubGrad = zeros(454,1)
        SubGrad(:) = GradSuzhou_distraction{j}(:,k)
        mkdir([Outdir,Condition_list{2},'/',Grad_list{k}])
        save([Outdir,Condition_list{2},'/',Grad_list{k},'/','Sub_',sub_list_MDD{j},'.mat'],'SubGrad')
    end
    for j = 46:91
        SubGrad = zeros(454,1)
        SubGrad(:) = GradSuzhou_distraction{j}(:,k)
        mkdir([Outdir,Condition_list{4},'/',Grad_list{k}])
        save([Outdir,Condition_list{4},'/',Grad_list{k},'/','Sub_',sub_list_HC{j-45},'.mat'],'SubGrad')
    end
end

%% Analysis

% try paired ttest-Beijing
% G1
DependentDirs{1,1} = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_IPCAS_task_S3/G1'
DependentDirs{2,1} = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/Gp_IPCAS_task_S4/G1'
Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/G1/IPCAS_S3_S4/'
mkdir(Outdir)
OutputName = [Outdir,'IPCAS_S3_S4']
HeadMotionS3 = load('/Users/apurplespoon/Desktop/UCAS/YanLab/Gradient_Rumination/SubHeadMotions/Gp_IPCAS_task_S3/SubHeadMotion.mat')
HeadMotionS4 = load('/Users/apurplespoon/Desktop/UCAS/YanLab/Gradient_Rumination/SubHeadMotions/Gp_IPCAS_task_S4/SubHeadMotion.mat')
OtherCov = [{HeadMotionS3.HeadMotion};{HeadMotionS4.HeadMotion}]
[TTestPaired_T,Header] = y_TTestPaired_Image(DependentDirs,OutputName,[],[],OtherCov)

% G1 FDR
Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/G1/IPCAS_S3_S4/'
load('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/G1/IPCAS_S3_S4/IPCAS_S3_S4.mat')

StatOpt.TestFlag='t';
StatOpt.TailedFlag=2;
StatOpt.Df=39;
FDRQ = 0.05
OriginalP=w_StatToP(SubGrad,StatOpt);
save([Outdir,'IPCAS_S3_S4','_OriginalP'],'OriginalP')%originalP
            
FDRMsk_05=y_FDR_Vector(OriginalP, FDRQ)
save([Outdir,'IPCAS_S3_S4','_FDRMsk'],'FDRMsk_05')%FDRQ<0.001
ResultP=OriginalP.*FDRMsk_05 %PthatPassedFDR
save([Outdir,'IPCAS_S3_S4','_ResultP'],'ResultP')
% save T results that passed FDR

%LogicalMsk=logical(logical(OriginalP).*(OriginalP~=0))
%MatTemp=zeros(size(OriginalP));
%MatTemp(LogicalMsk)=logical(Vec);
FDR_T_result=SubGrad.*FDRMsk_05;%TPassedFDR
save([Outdir,'IPCAS_S3_S4','_Vec_05'],'FDR_T_result')

% Draw maps
OutDir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/G1/IPCAS_S3_S4';
mkdir(OutDir);
[LeftTemplate, ~, ~, ~] = y_ReadAll('/Users/apurplespoon/Desktop/UCAS/YanLab/2023_01_training/TrainingCamp2301/DataSoft/MRISoft/DPABI/DPABI_V7.0_ForCamp/DPABISurf/SurfTemplates/fsaverage5_lh_Schaefer2018_400Parcels_7Networks_order.label.gii');
[RightTemplate, ~, ~, ~] = y_ReadAll('/Users/apurplespoon/Desktop/UCAS/YanLab/2023_01_training/TrainingCamp2301/DataSoft/MRISoft/DPABI/DPABI_V7.0_ForCamp/DPABISurf/SurfTemplates/fsaverage5_rh_Schaefer2018_400Parcels_7Networks_order.label.gii');
[~, ~, ~, HeaderL] = y_ReadAll('/Users/apurplespoon/Desktop/UCAS/YanLab/Oldfiles/GraduationThesis/gradient/demo/FC_L_ROI2.gii');
[~, ~, ~, HeaderR] = y_ReadAll('/Users/apurplespoon/Desktop/UCAS/YanLab//Oldfiles/GraduationThesis/gradient/demo/FC_R_ROI1.gii');
[VBrain,HeaderV] = y_Read('/Users/apurplespoon/Desktop/UCAS/YanLab/2023_01_training/TrainingCamp2301/DataSoft/MRISoft/DPABI/DPABI_V7.0_ForCamp/Templates/Tian2020_Subcortex_Atlas/Tian_Subcortex_S4_3T_2009cAsym.nii');

GradBrainL = zeros(length(LeftTemplate),1);
GradBrainR = zeros(length(RightTemplate),1);
GradBrainV = zeros(size(VBrain));
for iROI = 1:200
    GradBrainL(find(LeftTemplate==iROI)) = FDR_T_result(iROI,1);
end
for iROI = 201:400
    GradBrainR(find(RightTemplate==iROI-200)) = FDR_T_result(iROI,1);
end
for iROI = 401:454
    GradBrainV(find(VBrain==iROI-400)) = FDR_T_result(iROI,1);
end
y_Write(GradBrainL,HeaderL,[OutDir,filesep,'GradientMap_Left_','IPCAS_S3_S4']);
y_Write(GradBrainR,HeaderR,[OutDir,filesep,'GradientMap_right_','IPCAS_S3_S4']);
y_Write(GradBrainV,HeaderV,[OutDir,filesep,'GradientMap_Volume_','IPCAS_S3_S4']);

%% Mixed Effects Analysis
%Input:
%   DependentDir -  4 by 1 Cell, should be: {Group1Condition1; Group1Condition2; Group2Condition1; Group2Condition2}
%   OutputName - the output name.
%   MaskFile - the mask file.
%   CovariateDirs - 4 by 1 Cell, should be: {Group1Condition1Cov; Group1Condition2Cov; Group2Condition1Cov; Group2Condition2Cov}. The files should be correspond to the DependentDir.
%   OtherCovariates - 4 by 1 Cell, {Group1Condition1OtherCov; Group1Condition2OtherCov; Group2Condition1OtherCov; Group2Condition2OtherCov}. 

Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/'
% G1
for i = 1:4
    DependentDir{i,1} = [Outdir,Condition_list{i},'/',Grad_list{1}]
end

OutputName = ['/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MixedAnaResults/G1/G1']
mkdir(OutputName)
OtherCovariates{1,1} = HeadMotion((1:45),1);
OtherCovariates{2,1} = HeadMotion((1:45),2);
OtherCovariates{3,1} = HeadMotion((46:length(sub_list)),1);
OtherCovariates{4,1} = HeadMotion((46:length(sub_list)),2);

y_MixedEffectsAnalysis_Image(DependentDir,OutputName,[],[],OtherCovariates)

% G2
for i = 1:4
    DependentDir{i,1} = [Outdir,Condition_list{i},'/',Grad_list{2}]
end

OutputName = ['/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MixedAnaResults/G2/G2']
mkdir(OutputName)
OtherCovariates{1,1} = HeadMotion((1:45),1);
OtherCovariates{2,1} = HeadMotion((1:45),2);
OtherCovariates{3,1} = HeadMotion((46:length(sub_list)),1);
OtherCovariates{4,1} = HeadMotion((46:length(sub_list)),2);

y_MixedEffectsAnalysis_Image(DependentDir,OutputName,[],[],OtherCovariates)

% G1 FDR

Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MixedAnaResults/'
% G1_ConditionEffect_T
load('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MixedAnaResults/G1/G1_ConditionEffect_T.mat')
StatOpt.TestFlag='t';
StatOpt.TailedFlag=2;
StatOpt.Df=88;
FDRQ = 0.05    
OriginalP=w_StatToP(SubGrad,StatOpt);
save([Outdir,'G1/','G1_ConditionEffect_T','_OriginalP'],'OriginalP')%originalP 
FDRMsk_05=y_FDR_Vector(OriginalP, FDRQ)
save([Outdir,'G1/','G1_ConditionEffect_T','_FDRMsk'],'FDRMsk_05')%FDRQ<0.001
ResultP=OriginalP.*FDRMsk_05 %PthatPassedFDR
save([Outdir,'G1/','G1_ConditionEffect_T','_ResultP'],'ResultP')
% save T results that passed FDR
%LogicalMsk=logical(logical(OriginalP).*(OriginalP~=0))
%MatTemp=zeros(size(OriginalP));
%MatTemp(LogicalMsk)=logical(Vec);
FDR_T_result=SubGrad.*FDRMsk_05;%TPassedFDR
save([Outdir,'G1/','G1_ConditionEffect_T','_Vec_05'],'FDR_T_result')

% G1_Group_TwoT
load('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MixedAnaResults/G1/G1_Group_TwoT.mat')
StatOpt.TestFlag='t';
StatOpt.TailedFlag=2;
StatOpt.Df=88;
FDRQ = 0.05
OriginalP=w_StatToP(SubGrad,StatOpt);
save([Outdir,'G1/','G1_Group_TwoT','_OriginalP'],'OriginalP')%originalP
            
FDRMsk_05=y_FDR_Vector(OriginalP, FDRQ)
save([Outdir,'G1/','G1_Group_TwoT','_FDRMsk'],'FDRMsk_05')%FDRQ<0.001
ResultP=OriginalP.*FDRMsk_05 %PthatPassedFDR
save([Outdir,'G1/','G1_Group_TwoT','_ResultP'],'ResultP')
% save T results that passed FDR
%LogicalMsk=logical(logical(OriginalP).*(OriginalP~=0))
%MatTemp=zeros(size(OriginalP));
%MatTemp(LogicalMsk)=logical(Vec);
FDR_T_result=SubGrad.*FDRMsk_05;%TPassedFDR
save([Outdir,'G1/','G1_Group_TwoT','_Vec_05'],'FDR_T_result')

% G1 Intercation F FDR
Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MixedAnaResults/'
load('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MixedAnaResults/G1/G1_Interaction_F.mat')
StatOpt.TestFlag='f';
StatOpt.TailedFlag=1;
StatOpt.Df1=3;
StatOpt.Df2=87;
FDRQ = 0.05
OriginalP=w_StatToP(SubGrad,StatOpt);
save([Outdir,'G1/','G1_Interaction_F','_OriginalP'],'OriginalP')%originalP
            
FDRMsk_05=y_FDR_Vector(OriginalP, FDRQ)
save([Outdir,'G1/','G1_Interaction_F','_FDRMsk'],'FDRMsk_05')%FDRQ<0.001
ResultP=OriginalP.*FDRMsk_05 %PthatPassedFDR
save([Outdir,'G1/','G1_Interaction_F','_ResultP'],'ResultP')
% save T results that passed FDR
%LogicalMsk=logical(logical(OriginalP).*(OriginalP~=0))
%MatTemp=zeros(size(OriginalP));
%MatTemp(LogicalMsk)=logical(Vec);
FDR_T_result=SubGrad.*FDRMsk_05;%TPassedFDR
save([Outdir,'G1/','G1_Interaction_F','_Vec_05'],'FDR_T_result')

% FDR前的Interaction结果
load('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MixedAnaResults/G1/G1_Interaction_F_OriginalP.mat')

OriginalP(OriginalP == 1) = 0.99
OriginalP(OriginalP < 0.05) = 1
OriginalP(OriginalP ~= 1) = 0

load('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MixedAnaResults/G1/G1_Interaction_F.mat')

SigF = SubGrad.*OriginalP

% map
OutDir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MixedAnaResults/G1/Maps';
mkdir(OutDir);

GradBrainL = zeros(length(LeftTemplate),1);
GradBrainR = zeros(length(RightTemplate),1);
GradBrainV = zeros(size(VBrain));
for iROI = 1:200
    GradBrainL(find(LeftTemplate==iROI)) = SigF(iROI,1);
end
for iROI = 201:400
    GradBrainR(find(RightTemplate==iROI-200)) = SigF(iROI,1);
end
for iROI = 401:454
    GradBrainV(find(VBrain==iROI-400)) = SigF(iROI,1);
end
y_Write(GradBrainL,HeaderL,[OutDir,filesep,'GradientMap_Left_','Interaction_F_Original']);
y_Write(GradBrainR,HeaderR,[OutDir,filesep,'GradientMap_right_','Interaction_F_Original']);
y_Write(GradBrainV,HeaderV,[OutDir,filesep,'GradientMap_Volume_','Interaction_F_Original']);


% G2 FDR
Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MixedAnaResults/'
% G2_ConditionEffect_T
load('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MixedAnaResults/G2/G2_ConditionEffect_T.mat')
StatOpt.TestFlag='t';
StatOpt.TailedFlag=2;
StatOpt.Df=88;
FDRQ = 0.05
OriginalP=w_StatToP(SubGrad,StatOpt);
save([Outdir,'G2/','G2_ConditionEffect_T','_OriginalP'],'OriginalP')%originalP
FDRMsk_05=y_FDR_Vector(OriginalP, FDRQ)
save([Outdir,'G2/','G2_ConditionEffect_T','_FDRMsk'],'FDRMsk_05')%FDRQ<0.001
ResultP=OriginalP.*FDRMsk_05 %PthatPassedFDR
save([Outdir,'G2/','G2_ConditionEffect_T','_ResultP'],'ResultP')
% save T results that passed FDR
%LogicalMsk=logical(logical(OriginalP).*(OriginalP~=0))
%MatTemp=zeros(size(OriginalP));
%MatTemp(LogicalMsk)=logical(Vec);
FDR_T_result=SubGrad.*FDRMsk_05;%TPassedFDR
save([Outdir,'G2/','G2_ConditionEffect_T','_Vec_05'],'FDR_T_result')

% G2_Group_TwoT
load('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MixedAnaResults/G2/G2_Group_TwoT.mat')
StatOpt.TestFlag='t';
StatOpt.TailedFlag=2;
StatOpt.Df=88;
FDRQ = 0.05

OriginalP=w_StatToP(SubGrad,StatOpt);
save([Outdir,'G2/','G2_Group_TwoT','_OriginalP'],'OriginalP')%originalP
            
FDRMsk_05=y_FDR_Vector(OriginalP, FDRQ)
save([Outdir,'G2/','G2_Group_TwoT','_FDRMsk'],'FDRMsk_05')%FDRQ<0.001
ResultP=OriginalP.*FDRMsk_05 %PthatPassedFDR
save([Outdir,'G2/','G2_Group_TwoT','_ResultP'],'ResultP')
% save T results that passed FDR
%LogicalMsk=logical(logical(OriginalP).*(OriginalP~=0))
%MatTemp=zeros(size(OriginalP));
%MatTemp(LogicalMsk)=logical(Vec);
FDR_T_result=SubGrad.*FDRMsk_05;%TPassedFDR
save([Outdir,'G2/','G2_Group_TwoT','_Vec_05'],'FDR_T_result')

% G2 Intercation F FDR
load('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MixedAnaResults/G2/G2_Interaction_F.mat')
StatOpt.TestFlag='f';
StatOpt.TailedFlag=1;
StatOpt.Df1=1;
StatOpt.Df2=88;
FDRQ = 0.05
OriginalP=w_StatToP(SubGrad,StatOpt);
save([Outdir,'G2/','G2_Interaction_F','_OriginalP'],'OriginalP')%originalP
            
FDRMsk_05=y_FDR_Vector(OriginalP, FDRQ)
save([Outdir,'G2/','G2_Interaction_F','_FDRMsk'],'FDRMsk_05')%FDRQ<0.001
ResultP=OriginalP.*FDRMsk_05 %PthatPassedFDR
save([Outdir,'G2/','G2_Interaction_F','_ResultP'],'ResultP')
% save T results that passed FDR
%LogicalMsk=logical(logical(OriginalP).*(OriginalP~=0))
%MatTemp=zeros(size(OriginalP));
%MatTemp(LogicalMsk)=logical(Vec);
FDR_T_result=SubGrad.*FDRMsk_05;%TPassedFDR
save([Outdir,'G2/','G2_Interaction_F','_Vec_05'],'FDR_T_result')

% FDR前的Interaction结果 G2
load('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MixedAnaResults/G2/G2_Interaction_F_OriginalP.mat')

OriginalP(OriginalP == 1) = 0.99
OriginalP(OriginalP < 0.05) = 1
OriginalP(OriginalP ~= 1) = 0

load('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MixedAnaResults/G2/G2_Interaction_F.mat')

SigF = SubGrad.*OriginalP

% map
OutDir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MixedAnaResults/G2/Maps';
mkdir(OutDir);

GradBrainL = zeros(length(LeftTemplate),1);
GradBrainR = zeros(length(RightTemplate),1);
GradBrainV = zeros(size(VBrain));
for iROI = 1:200
    GradBrainL(find(LeftTemplate==iROI)) = SigF(iROI,1);
end
for iROI = 201:400
    GradBrainR(find(RightTemplate==iROI-200)) = SigF(iROI,1);
end
for iROI = 401:454
    GradBrainV(find(VBrain==iROI-400)) = SigF(iROI,1);
end
y_Write(GradBrainL,HeaderL,[OutDir,filesep,'GradientMap_Left_','Interaction_F_Original']);
y_Write(GradBrainR,HeaderR,[OutDir,filesep,'GradientMap_right_','Interaction_F_Original']);
y_Write(GradBrainV,HeaderV,[OutDir,filesep,'GradientMap_Volume_','Interaction_F_Original']);


%% HC rumination & distraction paired ttest

% G1
DependentDirs{1,1} = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/HC_rumi/G1'
DependentDirs{2,1} = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/HC_dist/G1'
Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/HC_G1/'
mkdir(Outdir)
OutputName = [Outdir,'HC_G1']
OtherCov = [{HeadMotion((46:length(sub_list)),1)};{HeadMotion((46:length(sub_list)),2)}]
[TTestPaired_T,Header] = y_TTestPaired_Image(DependentDirs,OutputName,[],[],OtherCov)

% FDR G1
Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/HC_G1/'
load('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/HC_G1/HC_G1.mat')

StatOpt.TestFlag='t';
StatOpt.TailedFlag=2;
StatOpt.Df=43;
FDRQ = 0.05
OriginalP=w_StatToP(SubGrad,StatOpt);
save([Outdir,'HC_G1','_OriginalP'],'OriginalP')%originalP    
FDRMsk_05=y_FDR_Vector(OriginalP, FDRQ)
save([Outdir,'HC_G1','_FDRMsk'],'FDRMsk_05')%FDRQ<0.001
ResultP=OriginalP.*FDRMsk_05 %PthatPassedFDR
save([Outdir,'HC_G1','_ResultP'],'ResultP')
% save T results that passed FDR
%LogicalMsk=logical(logical(OriginalP).*(OriginalP~=0))
%MatTemp=zeros(size(OriginalP));
%MatTemp(LogicalMsk)=logical(Vec);
FDR_T_result=SubGrad.*FDRMsk_05;%TPassedFDR
save([Outdir,'HC_G1','_Vec_05'],'FDR_T_result')

% Draw maps
OutDir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/HC_G1/Maps';
mkdir(OutDir);

GradBrainL = zeros(length(LeftTemplate),1);
GradBrainR = zeros(length(RightTemplate),1);
GradBrainV = zeros(size(VBrain));
for iROI = 1:200
    GradBrainL(find(LeftTemplate==iROI)) = FDR_T_result(iROI,1);
end
for iROI = 201:400
    GradBrainR(find(RightTemplate==iROI-200)) = FDR_T_result(iROI,1);
end
for iROI = 401:454
    GradBrainV(find(VBrain==iROI-400)) = FDR_T_result(iROI,1);
end
y_Write(GradBrainL,HeaderL,[OutDir,filesep,'GradientMap_Left_','HC_G1']);
y_Write(GradBrainR,HeaderR,[OutDir,filesep,'GradientMap_right_','HC_G1']);
y_Write(GradBrainV,HeaderV,[OutDir,filesep,'GradientMap_Volume_','HC_G1']);


% G2
DependentDirs{1,1} = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/HC_rumi/G2'
DependentDirs{2,1} = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/HC_dist/G2'
Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/HC_G2/'
mkdir(Outdir)
OutputName = [Outdir,'HC_G2']
OtherCov = [{HeadMotion((46:length(sub_list)),1)};{HeadMotion((46:length(sub_list)),2)}]
[TTestPaired_T,Header] = y_TTestPaired_Image(DependentDirs,OutputName,[],[],OtherCov)

% FDR G2
Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/HC_G2/'
load('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/HC_G2/HC_G2.mat')

StatOpt.TestFlag='t';
StatOpt.TailedFlag=2;
StatOpt.Df=43;
FDRQ = 0.05
OriginalP=w_StatToP(SubGrad,StatOpt);
save([Outdir,'HC_G2','_OriginalP'],'OriginalP')%originalP
            
FDRMsk_05=y_FDR_Vector(OriginalP, FDRQ)
save([Outdir,'HC_G2','_FDRMsk'],'FDRMsk_05')%FDRQ<0.001
ResultP=OriginalP.*FDRMsk_05 %PthatPassedFDR
save([Outdir,'HC_G2','_ResultP'],'ResultP')
% save T results that passed FDR
%LogicalMsk=logical(logical(OriginalP).*(OriginalP~=0))
%MatTemp=zeros(size(OriginalP));
%MatTemp(LogicalMsk)=logical(Vec);
FDR_T_result=SubGrad.*FDRMsk_05;%TPassedFDR
save([Outdir,'HC_G2','_Vec_05'],'FDR_T_result')

% Draw maps
OutDir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/HC_G2/Maps';
mkdir(OutDir);

GradBrainL = zeros(length(LeftTemplate),1);
GradBrainR = zeros(length(RightTemplate),1);
GradBrainV = zeros(size(VBrain));
for iROI = 1:200
    GradBrainL(find(LeftTemplate==iROI)) = FDR_T_result(iROI,1);
end
for iROI = 201:400
    GradBrainR(find(RightTemplate==iROI-200)) = FDR_T_result(iROI,1);
end
for iROI = 401:454
    GradBrainV(find(VBrain==iROI-400)) = FDR_T_result(iROI,1);
end
y_Write(GradBrainL,HeaderL,[OutDir,filesep,'GradientMap_Left_','HC_G2']);
y_Write(GradBrainR,HeaderR,[OutDir,filesep,'GradientMap_right_','HC_G2']);
y_Write(GradBrainV,HeaderV,[OutDir,filesep,'GradientMap_Volume_','HC_G2']);


%% MDD rumination & distraction paired ttest

% G1
DependentDirs{1,1} = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/MDD_rumi/G1'
DependentDirs{2,1} = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/MDD_dist/G1'
Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MDD_G1/'
mkdir(Outdir)
OutputName = [Outdir,'MDD_G1']
OtherCov = [{HeadMotion((1:45),1)};{HeadMotion((1:45),2)}]
[TTestPaired_T,Header] = y_TTestPaired_Image(DependentDirs,OutputName,[],[],OtherCov)

% FDR G1
Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MDD_G1/'
load('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MDD_G1/MDD_G1.mat')

StatOpt.TestFlag='t';
StatOpt.TailedFlag=2;
StatOpt.Df=44;
FDRQ = 0.05

OriginalP=w_StatToP(SubGrad,StatOpt);
save([Outdir,'MDD_G1','_OriginalP'],'OriginalP')%originalP
            
FDRMsk_05=y_FDR_Vector(OriginalP, FDRQ)
save([Outdir,'MDD_G1','_FDRMsk'],'FDRMsk_05')%FDRQ<0.001
ResultP=OriginalP.*FDRMsk_05 %PthatPassedFDR
save([Outdir,'MDD_G1','_ResultP'],'ResultP')
% save T results that passed FDR
%LogicalMsk=logical(logical(OriginalP).*(OriginalP~=0))
%MatTemp=zeros(size(OriginalP));
%MatTemp(LogicalMsk)=logical(Vec);
FDR_T_result=SubGrad.*FDRMsk_05;%TPassedFDR
save([Outdir,'MDD_G1','_Vec_05'],'FDR_T_result')

% Draw maps
OutDir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MDD_G1/Maps';
mkdir(OutDir);

GradBrainL = zeros(length(LeftTemplate),1);
GradBrainR = zeros(length(RightTemplate),1);
GradBrainV = zeros(size(VBrain));
for iROI = 1:200
    GradBrainL(find(LeftTemplate==iROI)) = FDR_T_result(iROI,1);
end
for iROI = 201:400
    GradBrainR(find(RightTemplate==iROI-200)) = FDR_T_result(iROI,1);
end
for iROI = 401:454
    GradBrainV(find(VBrain==iROI-400)) = FDR_T_result(iROI,1);
end
y_Write(GradBrainL,HeaderL,[OutDir,filesep,'GradientMap_Left_','MDD_G1']);
y_Write(GradBrainR,HeaderR,[OutDir,filesep,'GradientMap_right_','MDD_G1']);
y_Write(GradBrainV,HeaderV,[OutDir,filesep,'GradientMap_Volume_','MDD_G1']);


% G2
DependentDirs{1,1} = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/MDD_rumi/G2'
DependentDirs{2,1} = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/MDD_dist/G2'
Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MDD_G2/'
mkdir(Outdir)
OutputName = [Outdir,'MDD_G2']
OtherCov = [{HeadMotion((1:45),1)};{HeadMotion((1:45),2)}]
[TTestPaired_T,Header] = y_TTestPaired_Image(DependentDirs,OutputName,[],[],OtherCov)

% FDR G2
Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MDD_G2/'
load('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MDD_G2/MDD_G2.mat')

StatOpt.TestFlag='t';
StatOpt.TailedFlag=2;
StatOpt.Df=44;
FDRQ = 0.05

OriginalP=w_StatToP(SubGrad,StatOpt);
save([Outdir,'MDD_G2','_OriginalP'],'OriginalP')%originalP
            
FDRMsk_05=y_FDR_Vector(OriginalP, FDRQ)
save([Outdir,'MDD_G2','_FDRMsk'],'FDRMsk_05')%FDRQ<0.001
ResultP=OriginalP.*FDRMsk_05 %PthatPassedFDR
save([Outdir,'MDD_G2','_ResultP'],'ResultP')
% save T results that passed FDR
%LogicalMsk=logical(logical(OriginalP).*(OriginalP~=0))
%MatTemp=zeros(size(OriginalP));
%MatTemp(LogicalMsk)=logical(Vec);
FDR_T_result=SubGrad.*FDRMsk_05;%TPassedFDR
save([Outdir,'MDD_G2','_Vec_05'],'FDR_T_result')

% Draw maps
OutDir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/MDD_G2/Maps';
mkdir(OutDir);

GradBrainL = zeros(length(LeftTemplate),1);
GradBrainR = zeros(length(RightTemplate),1);
GradBrainV = zeros(size(VBrain));
for iROI = 1:200
    GradBrainL(find(LeftTemplate==iROI)) = FDR_T_result(iROI,1);
end
for iROI = 201:400
    GradBrainR(find(RightTemplate==iROI-200)) = FDR_T_result(iROI,1);
end
for iROI = 401:454
    GradBrainV(find(VBrain==iROI-400)) = FDR_T_result(iROI,1);
end
y_Write(GradBrainL,HeaderL,[OutDir,filesep,'GradientMap_Left_','MDD_G2']);
y_Write(GradBrainR,HeaderR,[OutDir,filesep,'GradientMap_right_','MDD_G2']);
y_Write(GradBrainV,HeaderV,[OutDir,filesep,'GradientMap_Volume_','MDD_G2']);


%% Independent ttest

% Rumination G1
DependentDirs{1,1} = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/MDD_rumi/G1'
DependentDirs{2,1} = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/HC_rumi/G1'
Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/TwottestResults/rumi_G1/'
OutputName = [Outdir,'rumi_G1']
mkdir(Outdir)
OtherCovariates{1,1} = HeadMotion((1:45),1)
OtherCovariates{2,1} = HeadMotion((46:length(sub_list)),1)

[TTest2_T,Header] = y_TTest2_Image(DependentDirs,OutputName,[],[],OtherCovariates)

% FDR G1
Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/TwottestResults/'
load('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/TwottestResults/rumi_G1/rumi_G1.mat')
StatOpt.TestFlag='t';
StatOpt.TailedFlag=2;
StatOpt.Df=89;
FDRQ = 0.05
OriginalP=w_StatToP(SubGrad,StatOpt);
save([Outdir,'rumi_G1','_OriginalP'],'OriginalP')%originalP           
FDRMsk_05=y_FDR_Vector(OriginalP, FDRQ)
save([Outdir,'rumi_G1','_FDRMsk'],'FDRMsk_05')%FDRQ<0.001
ResultP=OriginalP.*FDRMsk_05 %PthatPassedFDR
save([Outdir,'rumi_G1','_ResultP'],'ResultP')
% save T results that passed FDR
%LogicalMsk=logical(logical(OriginalP).*(OriginalP~=0))
%MatTemp=zeros(size(OriginalP));
%MatTemp(LogicalMsk)=logical(Vec);
FDR_T_result=SubGrad.*FDRMsk_05;%TPassedFDR
save([Outdir,'rumi_G1','_Vec_05'],'FDR_T_result')

% G2
DependentDirs{1,1} = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/MDD_rumi/G2'
DependentDirs{2,1} = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/HC_rumi/G2'
Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/TwottestResults/rumi_G2/'
mkdir(Outdir)
OutputName = [Outdir,'rumi_G2']
OtherCovariates{1,1} = [HeadMotion((1:45),1)]
OtherCovariates{2,1} = [HeadMotion((46:length(sub_list)),1)]

[TTest2_T,Header] = y_TTest2_Image(DependentDirs,OutputName,[],[],OtherCovariates)

% FDR G2
Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/TwottestResults/'
load('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/TwottestResults/rumi_G2/rumi_G2.mat')
StatOpt.TestFlag='t';
StatOpt.TailedFlag=2;
StatOpt.Df=89;
FDRQ = 0.05
OriginalP=w_StatToP(SubGrad,StatOpt);
save([Outdir,'rumi_G2','_OriginalP'],'OriginalP')%originalP
            
FDRMsk_05=y_FDR_Vector(OriginalP, FDRQ)
save([Outdir,'rumi_G2','_FDRMsk'],'FDRMsk_05')%FDRQ<0.001
ResultP=OriginalP.*FDRMsk_05 %PthatPassedFDR
save([Outdir,'rumi_G2','_ResultP'],'ResultP')
% save T results that passed FDR
%LogicalMsk=logical(logical(OriginalP).*(OriginalP~=0))
%MatTemp=zeros(size(OriginalP));
%MatTemp(LogicalMsk)=logical(Vec);
FDR_T_result=SubGrad.*FDRMsk_05;%TPassedFDR
save([Outdir,'rumi_G2','_Vec_05'],'FDR_T_result')


% Distraction G1
DependentDirs{1,1} = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/MDD_dist/G1'
DependentDirs{2,1} = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/HC_dist/G1'
Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/TwottestResults/dist_G1/'
mkdir(Outdir)
OutputName = [Outdir,'dist_G1']
OtherCovariates{1,1} = [HeadMotion((1:45),2)]
OtherCovariates{2,1} = [HeadMotion((46:length(sub_list)),2)]

[TTest2_T,Header] = y_TTest2_Image(DependentDirs,OutputName,[],[],OtherCovariates)

% FDR G1
Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/TwottestResults/'
load('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/TwottestResults/dist_G1/dist_G1.mat')
StatOpt.TestFlag='t';
StatOpt.TailedFlag=2;
StatOpt.Df=89;
FDRQ = 0.05
OriginalP=w_StatToP(SubGrad,StatOpt);
save([Outdir,'dist_G1','_OriginalP'],'OriginalP')%originalP
            
FDRMsk_05=y_FDR_Vector(OriginalP, FDRQ)
save([Outdir,'dist_G1','_FDRMsk'],'FDRMsk_05')%FDRQ<0.001
ResultP=OriginalP.*FDRMsk_05 %PthatPassedFDR
save([Outdir,'dist_G1','_ResultP'],'ResultP')
% save T results that passed FDR
%LogicalMsk=logical(logical(OriginalP).*(OriginalP~=0))
%MatTemp=zeros(size(OriginalP));
%MatTemp(LogicalMsk)=logical(Vec);
FDR_T_result=SubGrad.*FDRMsk_05;%TPassedFDR
save([Outdir,'dist_G1','_Vec_05'],'FDR_T_result')


% Distraction G2
DependentDirs{1,1} = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/MDD_dist/G2'
DependentDirs{2,1} = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/SubGrad/HC_dist/G2'
Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/TwottestResults/dist_G2/'
mkdir(Outdir)
OutputName = [Outdir,'dist_G2']
OtherCovariates{1,1} = [HeadMotion((1:45),2)]
OtherCovariates{2,1} = [HeadMotion((46:length(sub_list)),2)]

[TTest2_T,Header] = y_TTest2_Image(DependentDirs,OutputName,[],[],OtherCovariates)

% FDR G2
Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/TwottestResults/'
load('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/Analysis_Grad/TwottestResults/dist_G2/dist_G2.mat')
StatOpt.TestFlag='t';
StatOpt.TailedFlag=2;
StatOpt.Df=89;
FDRQ = 0.05
OriginalP=w_StatToP(SubGrad,StatOpt);
save([Outdir,'dist_G2','_OriginalP'],'OriginalP')%originalP
            
FDRMsk_05=y_FDR_Vector(OriginalP, FDRQ)
save([Outdir,'dist_G2','_FDRMsk'],'FDRMsk_05')%FDRQ<0.001
ResultP=OriginalP.*FDRMsk_05 %PthatPassedFDR
save([Outdir,'dist_G2','_ResultP'],'ResultP')
% save T results that passed FDR
%LogicalMsk=logical(logical(OriginalP).*(OriginalP~=0))
%MatTemp=zeros(size(OriginalP));
%MatTemp(LogicalMsk)=logical(Vec);
FDR_T_result=SubGrad.*FDRMsk_05;%TPassedFDR
save([Outdir,'dist_G2','_Vec_05'],'FDR_T_result')

%% Cal explanation ratios
lamBeijing = Gp.lambda(1,1:492)
lamSuzhou = Gp.lambda(1,493:853)

Gp_IPCAS_rest_lam = lamBeijing(1,1:41)
Gp_IPCAS_task_S2_lam = lamBeijing(1,42:82)
Gp_IPCAS_task_S3_lam = lamBeijing(1,83:123)
Gp_IPCAS_task_S4_lam = lamBeijing(1,124:164)

Gp_PKUGE_rest_lam = lamBeijing(1,165:205)
Gp_PKUGE_task_S2_lam = lamBeijing(1,206:246)
Gp_PKUGE_task_S3_lam = lamBeijing(1,247:287)
Gp_PKUGE_task_S4_lam = lamBeijing(1,288:328)

Gp_PKUSIEMENS_rest_lam = lamBeijing(1,329:369)
Gp_PKUSIEMENS_task_S2_lam = lamBeijing(1,370:410)
Gp_PKUSIEMENS_task_S3_lam = lamBeijing(1,411:451)
Gp_PKUSIEMENS_task_S4_lam = lamBeijing(1,452:492)

Grad_lam = {Gp_IPCAS_rest_lam, Gp_IPCAS_task_S2_lam, Gp_IPCAS_task_S3_lam, Gp_IPCAS_task_S4_lam, Gp_PKUGE_rest_lam, Gp_PKUGE_task_S2_lam, Gp_PKUGE_task_S3_lam, Gp_PKUGE_task_S4_lam, Gp_PKUSIEMENS_rest_lam, Gp_PKUSIEMENS_task_S2_lam, Gp_PKUSIEMENS_task_S3_lam, Gp_PKUSIEMENS_task_S4_lam}

mkdir('/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/ExpRatio')

for i = 1:12
    GradExR = zeros(2,41);
    for j = 1:41
        for k = 1:2
            GradExR(k,j) = Grad_lam{i}{j}(k,1)
        end
    end
    GradExR = GradExR'
    save([GroupName{i},'_GradExR.mat'],'GradExR')
end

Gp_rest_lam = lamSuzhou(1,1:90)
Gp_sad_lam = lamSuzhou(1,91:179)
Gp_rumination_lam = lamSuzhou(1,180:270)
Gp_distraction_lam = lamSuzhou(1,271:361)

save('Gp_rest_lam.mat','Gp_rest_lam')
save('Gp_sad_lam.mat','Gp_sad_lam')
save('Gp_rumination_lam.mat','Gp_rumination_lam')
save('Gp_distraction_lam.mat','Gp_distraction_lam')

Grad_lam = {Gp_rest_lam,Gp_sad_lam,Gp_rumination_lam,Gp_distraction_lam}

% MDD_rumi
for j = 1:45
    for k = 1:2
        MDD_rumi_lam(k,j) = Gp_rumination_lam{j}(k,1)
    end
end
MDD_rumi_lam = MDD_rumi_lam'
save('MDD_rumi_GradExR.mat','MDD_rumi_lam')

% MDD_dist
for j = 1:45
    for k = 1:2
        MDD_dist_lam(k,j) = Gp_distraction_lam{j}(k,1)
    end
end
MDD_dist_lam = MDD_dist_lam'
save('MDD_dist_GradExR.mat','MDD_dist_lam')

% HC_rumi
for j = 1:46
    for k = 1:2
        HC_rumi_lam(k,j) = Gp_rumination_lam{j+45}(k,1)
    end
end
HC_rumi_lam = HC_rumi_lam'
save('HC_rumi_GradExR.mat','HC_rumi_lam')

% HC_dist
for j = 1:46
    for k = 1:2
        HC_dist_lam(k,j) = Gp_distraction_lam{j+45}(k,1)
    end
end
HC_dist_lam = HC_dist_lam'
save('HC_dist_GradExR.mat','HC_dist_lam')

%% Cal gradient range

Group = {Gp_IPCAS_rest,Gp_IPCAS_task_S2,Gp_IPCAS_task_S3,Gp_IPCAS_task_S4,Gp_PKUGE_rest,Gp_PKUGE_task_S2,Gp_PKUGE_task_S3,Gp_PKUGE_task_S4,Gp_PKUSIEMENS_rest,Gp_PKUSIEMENS_task_S2,Gp_PKUSIEMENS_task_S3,Gp_PKUSIEMENS_task_S4}

for i = 1:12
    for j = 1:2
        for k = 1:41
            range = max(-(Group{i}{k}(:,j)))-min(Group{i}{k}(:,j))
            GradR{i}(k,j) = range
        end
    end
end
save('GradRange_Beijing.mat','GradR')

Gp_MDD_rumi = GradSuzhou_rumination(1:45)
Gp_MDD_dist = GradSuzhou_distraction(1:45)
Gp_HC_rumi = GradSuzhou_rumination(46:91)
Gp_HC_dist = GradSuzhou_distraction(46:91)

GroupSuzhou = {Gp_MDD_rumi,Gp_MDD_dist,Gp_HC_rumi,Gp_HC_dist}

for i = 1:2
    for j = 1:2
        for k = 1:45
            range = max(-GroupSuzhou{i}{k}(:,j))-min(GroupSuzhou{i}{k}(:,j))
            GradRangeMDD{i}(k,j) = range
        end
    end
end
save('GradRange_MDD.mat','GradRangeMDD')

for i = 3:4
    for j = 1:2
        for k = 1:46
            range = max(-GroupSuzhou{i}{k}(:,j))-min(GroupSuzhou{i}{k}(:,j))
            GradRangeHC{i-2}(k,j) = range
        end
    end
end
save('GradRange_HC.mat','GradRangeHC')

%% Cal gradient Variance

for i = 1:12
    for j = 1
        for k = 1:41
            Variance = var(Group{1,i}{1,k}(:,j))
            GradVar{i}(k,j) = Variance
        end
    end
    for j = 2
        for k = 1:41
            Variance = var(Group{1,i}{1,k}(:,j))
            GradVar{i}(k,j) = Variance
        end
    end
end
save('GradVariance_Beijing.mat','GradVar')

for i = 1:2
    for j = 1:2
        for k = 1:45
            Variance = var(GroupSuzhou{1,i}{1,k}(:,j))
            GradVarMDD{i}(k,j) = Variance
        end
    end
end
save('GradVariance_MDD.mat','GradVarMDD')
for i = 3:4
    for j = 1:2
        for k = 1:46
            Variance = var(GroupSuzhou{1,i}{1,k}(:,j))
            GradVarHC{i-2}(k,j) = Variance
        end
    end
end
save('GradVariance_HC.mat','GradVarHC')
%% Cal gradient dispersion - Beijing
Gp_rumi_IPCAS_Mean_G1 = -GradIPCAS_rumi_Mean(:,1)
Gp_rumi_IPCAS_Mean_G2 = GradIPCAS_rumi_Mean(:,2)

Gp_rumi_PKUGE_Mean_G1 = -GradPKUGE_rumi_Mean(:,1)
Gp_rumi_PKUGE_Mean_G2 = GradPKUGE_rumi_Mean(:,2)

Gp_rumi_PKUSIEMENS_Mean_G1 = -GradPKUSIEMENS_rumi_Mean(:,1)
Gp_rumi_PKUSIEMENS_Mean_G2 = GradPKUSIEMENS_rumi_Mean(:,2)

GradIPCAS_ruminationDisp = Gp_IPCAS_task_S3
GradIPCAS_distractionDisp = Gp_IPCAS_task_S4

GradPKUGE_ruminationDisp = Gp_PKUGE_task_S3
GradPKUGE_distractionDisp = Gp_PKUGE_task_S4

GradPKUSIEMENS_ruminationDisp = Gp_PKUSIEMENS_task_S3
GradPKUSIEMENS_distractionDisp = Gp_PKUSIEMENS_task_S4

for j = 1:41
    GradIPCAS_ruminationDisp{1,j}(:,1) = -GradIPCAS_ruminationDisp{1,j}(:,1)
end
for j = 1:41
    GradIPCAS_distractionDisp{1,j}(:,1) = -GradIPCAS_distractionDisp{1,j}(:,1)
end
for j = 1:41
    GradPKUGE_ruminationDisp{1,j}(:,1) = -GradPKUGE_ruminationDisp{1,j}(:,1)
end
for j = 1:41
    GradPKUGE_distractionDisp{1,j}(:,1) = -GradPKUGE_distractionDisp{1,j}(:,1)
end
for j = 1:41
    GradPKUSIEMENS_ruminationDisp{1,j}(:,1) = -GradPKUSIEMENS_ruminationDisp{1,j}(:,1)
end
for j = 1:41
    GradPKUSIEMENS_distractionDisp{1,j}(:,1) = -GradPKUSIEMENS_distractionDisp{1,j}(:,1)
end

centroid_coordinate_IPCAS_rumi = zeros(41,2)
centroid_coordinate_PKUGE_rumi = zeros(41,2)
centroid_coordinate_PKUSIEMENS_rumi = zeros(41,2)
for k = 1:2
    for j = 1:41
        centroid_coordinate_IPCAS_rumi(j,k) = mean(GradIPCAS_ruminationDisp{1,j}(:,k))
    end
end
for k = 1:2
    for j = 1:41
        centroid_coordinate_PKUGE_rumi(j,k) = mean(GradPKUGE_ruminationDisp{1,j}(:,k))
    end
end
for k = 1:2
    for j = 1:41
        centroid_coordinate_PKUSIEMENS_rumi(j,k) = mean(GradPKUSIEMENS_ruminationDisp{1,j}(:,k))
    end
end

centroid_coordinate_IPCAS_dist = zeros(41,2)
centroid_coordinate_PKUGE_dist = zeros(41,2)
centroid_coordinate_PKUSIEMENS_dist = zeros(41,2)
for k = 1:2
    for j = 1:45
        centroid_coordinate_IPCAS_dist(j,k) = mean(GradIPCAS_distractionDisp{1,j}(:,k))
    end
end
for k = 1:2
    for j = 1:45
        centroid_coordinate_PKUGE_dist(j,k) = mean(GradPKUGE_distractionDisp{1,j}(:,k))
    end
end
for k = 1:2
    for j = 1:45
        centroid_coordinate_PKUSIEMENS_dist(j,k) = mean(GradPKUSIEMENS_distractionDisp{1,j}(:,k))
    end
end

% for rumination

distance_IPCAS_rumi = zeros(454,41)
distance_PKUGE_rumi = zeros(454,41)
distance_PKUSIEMENS_rumi = zeros(454,41)
for i = 1:454
    for j = 1:41
        distance_IPCAS_rumi(i,j) = sqrt((GradIPCAS_ruminationDisp{1,j}(i,1)-centroid_coordinate_IPCAS_rumi(j,1))^2+(GradIPCAS_ruminationDisp{1,j}(i,2)-centroid_coordinate_IPCAS_rumi(j,2))^2)
    end
end
for i = 1:454
    for j = 1:41
        distance_PKUGE_rumi(i,j) = sqrt((GradPKUGE_ruminationDisp{1,j}(i,1)-centroid_coordinate_PKUGE_rumi(j,1))^2+(GradPKUGE_ruminationDisp{1,j}(i,2)-centroid_coordinate_PKUGE_rumi(j,2))^2)
    end
end
for i = 1:454
    for j = 1:41
        distance_PKUSIEMENS_rumi(i,j) = sqrt((GradPKUSIEMENS_ruminationDisp{1,j}(i,1)-centroid_coordinate_PKUSIEMENS_rumi(j,1))^2+(GradPKUSIEMENS_ruminationDisp{1,j}(i,2)-centroid_coordinate_PKUSIEMENS_rumi(j,2))^2)
    end
end

dispersion_IPCAS_rumi = sum(distance_IPCAS_rumi,1)'
dispersion_PKUGE_rumi = sum(distance_PKUGE_rumi,1)'
dispersion_PKUSIEMENS_rumi = sum(distance_PKUSIEMENS_rumi,1)'

save('dispersion_IPCAS_rumi.mat','dispersion_IPCAS_rumi')
save('dispersion_PKUGE_rumi.mat','dispersion_PKUGE_rumi')
save('dispersion_PKUSIEMENS_rumi.mat','dispersion_PKUSIEMENS_rumi')

% for distraction

distance_IPCAS_dist = zeros(454,41)
distance_PKUGE_dist = zeros(454,41)
distance_PKUSIEMENS_dist = zeros(454,41)
for i = 1:454
    for j = 1:41
        distance_IPCAS_dist(i,j) = sqrt((GradIPCAS_distractionDisp{1,j}(i,1)-centroid_coordinate_IPCAS_dist(j,1))^2+(GradIPCAS_distractionDisp{1,j}(i,2)-centroid_coordinate_IPCAS_dist(j,2))^2)
    end
end
for i = 1:454
    for j = 1:41
        distance_PKUGE_dist(i,j) = sqrt((GradPKUGE_distractionDisp{1,j}(i,1)-centroid_coordinate_PKUGE_dist(j,1))^2+(GradPKUGE_distractionDisp{1,j}(i,2)-centroid_coordinate_PKUGE_dist(j,2))^2)
    end
end
for i = 1:454
    for j = 1:41
        distance_PKUSIEMENS_dist(i,j) = sqrt((GradPKUSIEMENS_distractionDisp{1,j}(i,1)-centroid_coordinate_PKUSIEMENS_dist(j,1))^2+(GradPKUSIEMENS_distractionDisp{1,j}(i,2)-centroid_coordinate_PKUSIEMENS_dist(j,2))^2)
    end
end

dispersion_IPCAS_dist = sum(distance_IPCAS_dist,1)'
dispersion_PKUGE_dist = sum(distance_PKUGE_dist,1)'
dispersion_PKUSIEMENS_dist = sum(distance_PKUSIEMENS_dist,1)'

save('dispersion_IPCAS_dist.mat','dispersion_IPCAS_dist')
save('dispersion_PKUGE_dist.mat','dispersion_PKUGE_dist')
save('dispersion_PKUSIEMENS_dist.mat','dispersion_PKUSIEMENS_dist')

%% Cal gradient dispersion - Suzhou

Gp_rumi_MDD_Mean_G1 = -GradMean_MDD_rumi(:,1)
Gp_rumi_MDD_Mean_G2 = GradMean_MDD_rumi(:,2)

Gp_rumi_HC_Mean_G1 = -GradMean_HC_rumi(:,1)
Gp_rumi_HC_Mean_G2 = GradMean_HC_rumi(:,2)

Gp_dist_MDD_Mean_G1 = -GradMean_MDD_dist(:,1)
Gp_dist_MDD_Mean_G2 = GradMean_MDD_dist(:,2)

Gp_dist_HC_Mean_G1 = -GradMean_HC_dist(:,1)
Gp_dist_HC_Mean_G2 = GradMean_HC_dist(:,2)

GradSuzhou_ruminationDisp = GradSuzhou_rumination
GradSuzhou_distractionDisp = GradSuzhou_distraction

for j = 1:91
    GradSuzhou_ruminationDisp{1,j}(:,1) = -GradSuzhou_ruminationDisp{1,j}(:,1)
end

for j = 1:91
    GradSuzhou_distractionDisp{1,j}(:,1) = -GradSuzhou_distractionDisp{1,j}(:,1)
end

centroid_coordinate_MDD_rumi = zeros(45,2)
centroid_coordinate_HC_rumi = zeros(46,2)
for k = 1:2
    for j = 1:45
        centroid_coordinate_MDD_rumi(j,k) = mean(GradSuzhou_ruminationDisp{1,j}(:,k))
    end
    for j = 46:91
        centroid_coordinate_HC_rumi(j-45,k) = mean(GradSuzhou_ruminationDisp{1,j}(:,k))
    end
end

centroid_coordinate_MDD_dist = zeros(45,2)
centroid_coordinate_HC_dist = zeros(46,2)
for k = 1:2
    for j = 1:45
        centroid_coordinate_MDD_dist(j,k) = mean(GradSuzhou_distractionDisp{1,j}(:,k))
    end
    for j = 46:91
        centroid_coordinate_HC_dist(j-45,k) = mean(GradSuzhou_distractionDisp{1,j}(:,k))
    end
end

% for rumination MDD & HC

distance_MDD_rumi = zeros(454,45)
distance_HC_rumi = zeros(454,46)
for i = 1:454
    for j = 1:45
        distance_MDD_rumi(i,j) = sqrt((GradSuzhou_ruminationDisp{1,j}(i,1)-centroid_coordinate_MDD_rumi(j,1))^2+(GradSuzhou_ruminationDisp{1,j}(i,2)-centroid_coordinate_MDD_rumi(j,2))^2)
    end
    for j = 46:91
        distance_HC_rumi(i,j-45) = sqrt((GradSuzhou_ruminationDisp{1,j}(i,1)-centroid_coordinate_HC_rumi(j-45,1))^2+(GradSuzhou_ruminationDisp{1,j}(i,2)-centroid_coordinate_HC_rumi(j-45,2))^2)
    end   
end

dispersion_MDD_rumi = sum(distance_MDD_rumi,1)'
dispersion_HC_rumi = sum(distance_HC_rumi,1)'

save('dispersion_MDD_rumi.mat','dispersion_MDD_rumi')
save('dispersion_MDD_rumi.mat','dispersion_MDD_rumi')

% for distraction MDD & HC

distance_MDD_dist = zeros(454,45)
distance_HC_dist = zeros(454,46)
for i = 1:454
    for j = 1:45
        distance_MDD_dist(i,j) = sqrt((GradSuzhou_distractionDisp{1,j}(i,1)-centroid_coordinate_MDD_dist(j,1))^2+(GradSuzhou_distractionDisp{1,j}(i,2)-centroid_coordinate_MDD_dist(j,2))^2)
    end
    for j = 46:91
        distance_HC_dist(i,j-45) = sqrt((GradSuzhou_distractionDisp{1,j}(i,1)-centroid_coordinate_HC_dist(j-45,1))^2+(GradSuzhou_distractionDisp{1,j}(i,2)-centroid_coordinate_HC_dist(j-45,2))^2)
    end   
end

dispersion_MDD_dist = sum(distance_MDD_dist,1)'
dispersion_HC_dist = sum(distance_HC_dist,1)'

save('dispersion_MDD_dist.mat','dispersion_MDD_dist')
save('dispersion_MDD_dist.mat','dispersion_MDD_dist')

%% Network Mean Grad
load('/Users/apurplespoon/Desktop/UCAS/YanLab/DPABI_V9.0_250415/DPABISurf/SurfTemplates/DPABISurf_Schaefer2018_400_Tian2020_54_Info.mat');
% Make masks
VISmask = zeros(454,1)
VISmask(find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork == 1)) = 1
SMNmask = zeros(454,1)
SMNmask(find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork == 2)) = 1
DANmask = zeros(454,1)
DANmask(find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork == 3)) = 1
VANmask = zeros(454,1)
VANmask(find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork == 4)) = 1
LNmask = zeros(454,1)
LNmask(find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork == 5)) = 1
FPNmask = zeros(454,1)
FPNmask(find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork == 6)) = 1
DMNmask = zeros(454,1)
DMNmask(find(DPABISurf_Schaefer2018_400_Tian2020_54_YeoNetwork == 7)) = 1

Group = {Gp_HC_rumi,Gp_HC_dist,Gp_MDD_rumi,Gp_MDD_dist}
GroupName = {'HC_rumi','HC_dist','MDD_rumi','MDD_dist'}
mask = {VISmask,SMNmask,DANmask,VANmask,LNmask,FPNmask,DMNmask}
maskName = {'VISmask','SMNmask','DANmask','VANmask','LNmask','FPNmask','DMNmask'}
NumGrad = {'G1','G2'}

Outdir = '/Users/apurplespoon/Desktop/UCAS/YanLab/Suzhou_Rumination/Revise/NetworkT/'
for i = 1:4
    for k = 1:2
        for l = 1:7
            mkdir([Outdir,GroupName{i},'/',NumGrad{k},'/',maskName{l}])
        end
    end
end

% HC_rumi&dist
SubGrad = zeros(454,1)
for i = 1:2
    for l = 1:7
        for k = 1
            for j = 1:46
                SubGrad = sum(Group{i}{j}(:,k).*mask{l})/nnz(mask{l})
                MeanGrad(j,1) = -SubGrad
            end
            save([Outdir,GroupName{i},'/',NumGrad{k},'/',maskName{l},'/','MeanGrad.mat'],'MeanGrad')
        end
    end
end

% HC SubCortex_G1
for i = 1:2
    for k = 1
        for j = 1:46
            SubGrad = sum(Group{i}{j}(401:454,k))/54
            MeanGrad(j,1) = -SubGrad
        end
        save([Outdir,GroupName{i},'/',NumGrad{k},'/SubCortex_MeanGrad.mat'],'MeanGrad')
    end
end


SubGrad = zeros(454,1)
for i = 1:2
    for l = 1:7
        for k = 2
            for j = 1:46
                SubGrad = sum(Group{i}{j}(:,k).*mask{l})/nnz(mask{l})
                MeanGrad(j,1) = SubGrad
            end
            save([Outdir,GroupName{i},'/',NumGrad{k},'/',maskName{l},'/','MeanGrad.mat'],'MeanGrad')
        end
    end
end

% HC SubCortex_G2
for i = 1:2
    for k = 2
        for j = 1:46
            SubGrad = sum(Group{i}{j}(401:454,k))/54
            MeanGrad(j,1) = SubGrad
        end
        save([Outdir,GroupName{i},'/',NumGrad{k},'/SubCortex_MeanGrad.mat'],'MeanGrad')
    end
end

% MDD_rumi&dist
SubGrad = zeros(454,1)
MeanGrad = zeros(45,1)
for i = 3:4
    for l = 1:7
        for k = 1
            for j = 1:45
                SubGrad = sum(Group{i}{j}(:,k).*mask{l})/nnz(mask{l})
                MeanGrad(j,1) = -SubGrad
            end
            save([Outdir,GroupName{i},'/',NumGrad{k},'/',maskName{l},'/','MeanGrad.mat'],'MeanGrad')
        end
    end
end


% MDD SubCortex_G1
for i = 3:4
    for k = 1
        for j = 1:45
            SubGrad = sum(Group{i}{j}(401:454,k))/54
            MeanGrad(j,1) = SubGrad
        end
        save([Outdir,GroupName{i},'/',NumGrad{k},'/SubCortex_MeanGrad.mat'],'MeanGrad')
    end
end


SubGrad = zeros(454,1)
for i = 3:4
    for l = 1:7
        for k = 2
            for j = 1:45
                SubGrad = sum(Group{i}{j}(:,k).*mask{l})/nnz(mask{l})
                MeanGrad(j,1) = SubGrad
            end
            save([Outdir,GroupName{i},'/',NumGrad{k},'/',maskName{l},'/','MeanGrad.mat'],'MeanGrad')
        end
    end
end

% MDD SubCortex_G2
for i = 3:4
    for k = 2
        for j = 1:45
            SubGrad = sum(Group{i}{j}(401:454,k))/54
            MeanGrad(j,1) = SubGrad
        end
        save([Outdir,GroupName{i},'/',NumGrad{k},'/SubCortex_MeanGrad.mat'],'MeanGrad')
    end
end