%% set up opts for training detector (see acfTrain)
opts=acfTrain(); opts.modelDs=[100 41]; opts.modelDsPad=[128 64];
%opts.posGtDir=['./uav']; opts.nWeak=[32 128 512 2048 8192];
opts.posGtDir=['./uav']; opts.nWeak=[32 128 512 2048];
opts.posImgDir=['./uav']; 
% pJitter ?
opts.pJitter=struct('flip',1);
% ?
opts.pBoost.pTree.fracFtrs=1/16;
opts.pLoad={'squarify',{3,.41}, 'format', 1}; % opts.name='models/Phantom4';


% start training 
detector = acfTrain(opts);

%% modify detector (see acfModify)
pModify=struct('cascThr',-1,'cascCal',.01);
detector=acfModify(detector,pModify);