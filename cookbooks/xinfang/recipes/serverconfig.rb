template "php.ini" do
    path "#{node['anjuke']['php_install_path']}/lib/php.ini"
    owner "root"
    group "root"
    mode "0644"
end

template "php-fpm.conf" do
    path "#{node['anjuke']['php_install_path']}/etc/php-fpm.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:phpuser => "#{node['anjuke']['username']}", :phpgroup => "#{node['anjuke']['group_name']}")
end

execute "run php-fpm" do
    user 'root'
    cmds = [
        "/usr/local/php_ajk/sbin/php-fpm"
    ]
    command (cmds.join " ; ")
end