# copy font to directory

directory node['anjukeinc']['font_dir'] + '/' do
  owner 'root'
  group 'root'
  mode 00755
  action :create
end

remote_file node['anjukeinc']['font_share_arial_big'] do
  source node['anjukeinc']['font_arail_big']
  owner 'root'
  group 'root'
  mode "0755"
  action :create
end

remote_file node['anjukeinc']['font_share_msyh'] do
  source node['anjukeinc']['font_msyh']
  owner 'root'
  group 'root'
  mode "0755"
  action :create
end

remote_file node['anjukeinc']['font_share_simyou'] do
  source node['anjukeinc']['font_simyou']
  owner 'root'
  group 'root'
  mode "0755"
  action :create
end

remote_file node['anjukeinc']['font_share_stxihei'] do
  source node['anjukeinc']['font_stxihei']
  owner 'root'
  group 'root'
  mode "0755"
  action :create
end

remote_file node['anjukeinc']['font_share_arial_small'] do
  source node['anjukeinc']['font_arail_small']
  owner 'root'
  group 'root'
  mode "0755"
  action :create
end