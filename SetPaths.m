function set_paths(code_dir)
%��code_dirĿ¼�µ��ļ��к��ļ�����ӵ�����·����
%
%...���code_dir�Ƿ�ΪĿ¼...
if(~exist(code_dir,'dir'))
    error(['    [Directory of the Code Path',code_dir,'does not exist',...
        'Please check directory structure and spelling]']);
end
%...����add_subdir_to_path()������code_dir����ӵ�����·����ȥ...
add_subdir_to_path(code_dir);
disp(['    [Code directory has been added to path]']);

%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%...Function add_subdir_to_patch...
function add_subdir_to_path(root_path)
addpath(root_path);            %��root_path��ӵ�����·����ȥ
files=dir(root_path);          %ͳ��root_path�µ��ļ��к��ļ�
for i=1:numel(files)
    if(files(i).isdir==1)
        if (~strcmp(files(i).name,'.') && ~strcmp(files(i).name,'..'))
            add_subdir_to_path([root_path,'/',files(i).name]);
        end
    end
end
%...

