%
% translate fig to pdf figures
%
% export fig notes
%
%  - '-m2' doesn't seem to do anything with pdf files
%
%  - why the ugly checked background with the png output?
%
%  - '-transparent' kills the grey background with pdf
%
%  - set(gcf,'color','none') sets the background to black?
%
%  - doubling font and window size, and scaling the whole thing 
%    back down with a figure browser or with latex seems to work 
%    more or less as expected
%
% example wiht findall
%
%   set(findall(gcf,'type','text'),'FontSize',12,fontWeight','bold')

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
% set(gcf,'color','none')
  set(gcf, 'Units','pixels', 'Position', [200, 650, 560, 420])
% set(gcf, 'Units','pixels', 'Position', [100, 100, 2*560, 2*420])
  set(findall(gcf,'type','axes'), 'fontsize', axisfont)
  set(findall(gcf,'type','text'), 'fontSize', textfont)
  export_fig([fname,'1.png'], '-transparent')  % for PDF
% export_fig([fname,'1.png'])
  pause(2)
  close all
end

