# make the directory workspace
directory node['anjuke']['home'] + '/www/' do
  owner node['anjuke']['username']
  group node['anjuke']['group_name']
  mode 00755
  action :create
end

# clone the indexes of php
execute "clone php indexes repo" do
  user node['anjuke']['username']
  cmds = [
          "cd /home/#{node['anjuke']['username']}/www",
          "git clone #{node['anjuke']['php_indexes_repo']} indexes"
  ]
  command (cmds.join " ; ")
end

# clone the config repo of php
execute "clone php config repo" do
  user node['anjuke']['username']
  cmds = [
          "cd /home/#{node['anjuke']['username']}/www",
          "git clone #{node['anjuke']['php_config_repo']} config"
  ]
  command (cmds.join " ; ")
end

# replace domain setting
execute "replace subdomain" do
  user node['anjuke']['username']
  cmds = [
          "cd /home/#{node['anjuke']['username']}/www/config",
          "echo \"\\\$ddnsName = '#{node['anjuke']['subdomain']}';\" > local_config.php"
  ]
  command (cmds.join " ; ")
end
