% 
% translate fig to pdf figures
%

% example:
% set(findall(gcf,'type','text'),'FontSize',12, fontWeight','bold')

addpath /home/motteler/matlab/export_fig

clear all
close all
textfont = 13;
axisfont = 13;
flist =  dir('*.fig');

for i = 1 : length(flist)
  [~,fname] = fileparts(flist(i).name);
  open([fname,'.fig'])
  set(gcf, 'Units','centimeters', 'Position', [4, 10, 24, 16])
  set(findall(gcf,'type','axes'), 'fontsize', axisfont)
  set(findall(gcf,'type','text'), 'fontSize', textfont)
  export_fig([fname,'.pdf']) 
  export_fig([fname,'.pdf'], '-transparent') 
  pause(5)
  close all
end

