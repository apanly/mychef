# make the directory workspace
directory node['anjukeinc']['home'] + '/www/' do
  owner node['anjukeinc']['username']
  group node['anjukeinc']['group_name']
  mode 00755
  action :create
end

# clone the indexes of php
execute "clone php indexes repo" do
  user node['anjukeinc']['username']
  cmds = [
          "cd /home/#{node['anjukeinc']['username']}/www",
          "git clone #{node['anjukeinc']['php_indexes_repo']} indexes"
  ]
  command (cmds.join " ; ")
end

# clone the config repo of php
execute "clone php config repo" do
  user node['anjukeinc']['username']
  cmds = [
          "cd /code",
          "git clone #{node['anjukeinc']['php_config_repo']} config"
  ]
  command (cmds.join " ; ")
end

# replace domain setting
execute "replace subdomain" do
  user node['anjukeinc']['username']
  cmds = [
          "cd /code/config",
          "echo \"\<\?php \\\$ddnsName = '#{node['anjukeinc']['subdomain']}';\" > local_config.php"
  ]
  command (cmds.join " ; ")
end
