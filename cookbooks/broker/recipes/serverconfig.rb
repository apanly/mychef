template "fpm.broker.conf" do
    path "/usr/local/php/etc/fpm.d/fpm.broker.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:phpuser => "#{node['broker']['username']}", :phpgroup => "#{node['broker']['group_name']}")
end

execute "start php service" do
  user 'root'
  group 'root'
  command (" cat /usr/local/php/var/run/php-fpm.pid | xargs kill -USR2; ")
end