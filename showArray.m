function [anno] = showArray(NoTX, NoRX, posTX, posRX, pos)
% NoTX = 3;
% NoRX = 4;
pos0 = [pos(1) pos(2)-100 pos(1)+20 pos(2)+10];
oneLambda = 40;
for ii = 1 : NoTX
    anno.TxLab(ii) = Simulink.Annotation([bdroot '/TX' num2str(ii)]);
    posT = pos0 + [oneLambda*posTX(ii) 0 oneLambda*posTX(ii) 0];
    set_param(anno.TxLab(ii).Handle, 'position', posT, 'FontSize', 12);
    anno.TxAnt(ii) = Simulink.Annotation([bdroot '/Y ']);
    posT = pos0 + [oneLambda*posTX(ii) 15 oneLambda*posTX(ii) 15];
    set_param(anno.TxAnt(ii).Handle, 'position', posT, 'FontSize', 20, 'FontWeight', 'bold', 'HorizontalAlignment', 'right');
end

for ii = 1 : NoRX
    anno.RxLab(ii) = Simulink.Annotation([bdroot '/RX' num2str(ii)]);
    posT = pos0 + [oneLambda*posRX(ii) 50 oneLambda*posRX(ii) 50];
    set_param(anno.RxLab(ii).Handle, 'position', posT, 'FontSize', 12);
    anno.RxAnt(ii) = Simulink.Annotation([bdroot '/Y ']);
    posT = pos0 + [oneLambda*posRX(ii) 65 oneLambda*posRX(ii) 65];
    set_param(anno.RxAnt(ii).Handle, 'position', posT, 'FontSize', 20, 'FontWeight', 'bold', 'HorizontalAlignment', 'right');
end

