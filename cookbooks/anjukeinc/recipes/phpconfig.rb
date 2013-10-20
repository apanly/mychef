
# execute "install php index repo" do
#   user node['anjukeinc']['username']
#   group node['anjukeinc']['group_name']
#   cmds = [
#           "cd #{node['anjukeinc']['home']}",
#           "git clone #{node['anjukeinc']['php_indexes_repo']} indexes"
#   ]
#   command (cmds.join " ; ")
# end

# execute "install php config repo" do
#   user node['anjukeinc']['username']
#   group node['anjukeinc']['group_name']
#   cmds = [
#           "cd #{node['anjukeinc']['home']}",
#           "git clone #{node['anjukeinc']['php_config_repo']} config",
#           "cd config",
#           "echo \"<?php \\$ddnsName='#{node['anjukeinc']['subdomain']}';\" > local_config.php",
          
#   ]
#   command (cmds.join " ; ")
# end

execute "install PHP" do
  user 'root'
  group 'root'
  cmds = [
          "mkdir #{node['anjukeinc']['php_install_path']}/etc/fpm.d",
          "touch #{node['anjukeinc']['php_install_path']}/etc/fpm.d/test.conf",
          "#{node['anjukeinc']['php_install_path']}/sbin/php-fpm"
         ]
  command (cmds.join " ; ")
end