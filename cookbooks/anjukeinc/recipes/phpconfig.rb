# clone the indexes of php
execute "clone php indexes repo" do
  user 'vagrant'
  cmds = [
          "mkdir /home/vagrant/www",
          "cd /home/vagrant/www",
          "git clone #{node['anjukeinc']['php_indexes_repo']} indexes"
  ]
  command (cmds.join " ; ")
end

# clone the config repo of php
execute "clone php config repo" do
  user 'vagrant'
  cmds = [
          "cd /home/vagrant/www",
          "git clone #{node['anjukeinc']['php_config_repo']} config"
  ]
  command (cmds.join " ; ")
end

# replace domain setting
execute "replace subdomain" do
  user 'vagrant'
  cmds = [
          "cd /home/vagrant/www/config",
          "sed 's/local/#{node['anjukeinc']['subdomain']}/' *"
  ]
  command (cmds.join " ; ")
end
