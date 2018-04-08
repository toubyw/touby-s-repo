b=get_param('untitled/yoursubsystem','PortConnectivity')
n=numel(b) % number of blocks connected to block1;
out={};
for k=1:n
  s=get(b(k).SrcBlock);  % search for source blocks
  if ~isempty(s)
      out(end+1,1)={'Source'}
      out{end,2}=s.BlockType;
      out{end,3}=s.Name
 end
end

 % model1 : your model  Name
 % sub1: your  subsystem name
tailx=50;taily=25;
x0=50;y0=50;yy0=y0;
for k=1:n
    x=x0+tailx ;y=y0+taily
    inp=['model1/input' num2str(k)]
    add_block('Simulink/Sources/In1',inp)
    set_param(inp,'Position',[x0 y0 x y ])
    add_line('model1',['input' num2str(k) '/1'],['sub1/'  num2str(k)],'autorouting','on' )
    y0=y+20
end

for ii = 1 : 5
     
    Simulink.Annotation([bdroot '/TX1' str{1}]);
end

text(0.5, 0.5, {'a= ','$$\ \frac{b}{c}$$'}, 'interpreter', 'latex');
text(0.5, 0.5, ['a= ' char(10) '$$\ \frac{b}{c}$$'], 'interpreter', 'latex');


dim = [0.4 0.1 0.2 0.1];
str = {'test', ['<Mean>=',num2str(7.89,'%.2f')], ['<CutOff>=',num2str(4.68,'%.2f')]};
str{1} = ['\bf ', str{1}, ' \rm'];  %\bf to set to bold, \rm to reset back to normal afterward

str{1} = ['\bf\color{red} ', str{1}, ' \rm\color{black}'];
annotation('textbox',dim,'String',str,'FitBoxToText','on', 'BackgroundColor',[0 0 0.7], 'FaceAlpha',0.2,'Units','normalized','HorizontalAlignment','left','FontSize',12);
Simulink.Annotation('textbox',dim,'String',str,'FitBoxToText','on', 'BackgroundColor',[0 0 0.7], 'FaceAlpha',0.2,'Units','normalized','HorizontalAlignment','left','FontSize',12);


localVariableInCallback = evalin('base','nameOfVariableInWorkspace');  %Execute MATLAB expression in specified workspace
assignin(ws,var,val)  %Assign value to variable in specified workspace

hws = get_param(bdroot, 'modelworkspace');

gcb
gcs