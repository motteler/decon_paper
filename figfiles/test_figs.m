%
% translate fig to pdf figures
%

% example:
% set(findall(gcf,'type','text'),'FontSize',12,fontWeight','bold')

addpath /home/motteler/matlab/export_fig

clear all
close all
% textfont = 18;
% axisfont = 18;
  textfont = 10;
  axisfont = 9;

flist =  {'a2cris_regr_MW', 'a2cris_regr_SW'};

for i = 1 : length(flist)
  fname = flist{i};
  open([fname,'.fig'])
  set(gcf, 'Units','pixels', 'Position', [200, 650, 560, 420])
% set(gcf, 'Units','pixels', 'Position', [100, 100, 2*560, 2*420])
  set(findall(gcf,'type','axes'), 'fontsize', axisfont)
  set(findall(gcf,'type','text'), 'fontSize', textfont)
  export_fig([fname,'.pdf'], '-transparent') 
  pause(2)
  close all
end

