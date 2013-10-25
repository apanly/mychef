template "fpm.member.conf" do
    path "/usr/local/php/etc/fpm.d/fpm.member.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:phpuser => "#{node['member']['username']}", :phpgroup => "#{node['member']['group_name']}")
end

execute "start php service" do
  user 'root'
  group 'root'
  command (" cat /usr/local/php/var/run/php-fpm.pid | xargs kill -USR2; ")
end