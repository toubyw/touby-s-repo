load_system('test');
find_system(gcs,'LookUnderMasks','on','FollowLinks','on');
blocks = find_system(gcs,'BlockType','SubSystem');

mmic = find_system(gcs,'FollowLinks','on','ReferenceBlock','RXSLib/RXS8160PL');
antennas = find_system(gcs,'FollowLinks','on','ReferenceBlock','RXSLib/antArray');

b=get_param('your_model/block1','PortConnectivity')
block = find_system(gcb, 'LookUnderMasks', 'on');
find_system(get_param(gcb, 'Parent'), 'FindAll', 'on', 'type', 'annotation')

for k=1:n
   s=get(b(k).SrcBlock);
   f='Source';
   if isempty(s)
        s=get(b(k).DstBlock);
   f='Destinataion';
end
out{k,1}=f;  
out{k,2}=s.BlockType;
out{k,3}=s.Name
end
disp(out)  % the first column indicate if a block is a source or a destination, the second indicate the type, and the third is the name.
k = strfind(str,pattern)
blocks = find_system(gcs,'FollowLinks','on','ReferenceBlock','RXSLib/RXS8160PL');
blocks = find_system(gcs,'FollowLinks','on','ReferenceBlock','RXSLib/antArray');
