%
% translate fig to pdf files
%

addpath /home/motteler/matlab/export_fig

clear all
close all
  textfont = 10;
  axisfont = 9;;
flist =  dir('*.fig');

for i = 1 : length(flist)
  [~,fname] = fileparts(flist(i).name);
  open([fname,'.fig'])
  set(gcf, 'Units','pixels', 'Position', [200, 650, 560, 420])
  set(findall(gcf,'type','axes'), 'fontsize', axisfont)
  set(findall(gcf,'type','text'), 'fontSize', textfont)
  export_fig([fname,'.pdf'], '-transparent') 
  pause(2)
  close all
end

