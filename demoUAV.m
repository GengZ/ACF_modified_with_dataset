close all;
imgNms = bbGt('getFiles',{'./test'});

for i = 1 : length(imgNms)

	% read image
	I = imread(imgNms{i}); 

	tic;
	bbs=acfDetect(I,detector);
	toc;

	bbs = bbs(find(bbs(:, 3) < 90), :);
	bbs = bbs(find(bbs(:, end) > 90), :);
	bbs = bbNms(bbs, 'overlap', .2, 'type', 'maxg');

	figure(i);
	im(I);

	bbApply('draw',bbs);

	% i = i + 1;
end
