template "php.ini" do
    path "#{node['xinfang']['php_install_path']}/lib/php.ini"
    owner "root"
    group "root"
    mode "0644"
end

template "php-fpm.conf" do
    path "#{node['xinfang']['php_install_path']}/etc/php-fpm.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:phpuser => "#{node['xinfang']['username']}", :phpgroup => "#{node['xinfang']['group_name']}")
end

execute "run php-fpm" do
    user 'root'
    cmds = [
        "#{node['xinfang']['php_install_path']}/sbin/php-fpm"
    ]
    command (cmds.join " ; ")
end