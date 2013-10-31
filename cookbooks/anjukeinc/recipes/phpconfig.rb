
execute "install php config repo" do
  user node['anjukeinc']['username']
  group node['anjukeinc']['group_name']
  cmds = [
          "cd #{node['anjukeinc']['home']}",
          "git clone #{node['anjukeinc']['php_config_repo']} www",
          "cd www/config",
          "echo \"<?php \\$ddnsName='#{node['anjukeinc']['subdomain']}';\" > local_config.php",
          
  ]
  command (cmds.join " ; ")
end

directory node['anjukeinc']['php_install_path'] + '/etc/fpm.d/' do
  owner "root"
  group "root"
  mode "0644"
  action :create
end

template "fpm.www.conf" do
    path "#{node['anjukeinc']['php_install_path']}/etc/fpm.d/fpm.www.conf"
    owner "root"
    group "root"
    mode "0644"
end

template "php.ini" do
    path "#{node['anjukeinc']['php_install_path']}/lib/php.ini"
    owner "root"
    group "root"
    mode "0644"
end

execute "start PHP" do
  user 'root'
  group 'root'
  command ("#{node['anjukeinc']['php_install_path']}/sbin/php-fpm")
end