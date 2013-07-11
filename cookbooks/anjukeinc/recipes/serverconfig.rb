template "php.ini" do
    path "#{node['anjukeinc']['php_install_path']}/lib/php.ini"
    owner "root"
    group "root"
    mode "0644"
end

template "php-extension.conf" do
    path "#{node['anjukeinc']['php_install_path']}/lib/php-ext.ini"
    owner "root"
    group "root"
    mode "0644"
end

template "php-fpm.conf" do
    path "#{node['anjukeinc']['php_install_path']}/etc/php-fpm.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:phpuser => "#{node['anjukeinc']['username']}", :phpgroup => "#{node['anjukeinc']['username']}")
end

template "nginx.conf" do
    path "/etc/nginx/nginx.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:nginxuser => "#{node['anjukeinc']['username']}")
end

template "anjuke.nginx.conf" do
    path "/etc/nginx/conf.d/anjuke.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:subdomain => "#{node['anjukeinc']['subdomain']}")
end

template "haozu.nginx.conf" do
    path "/etc/nginx/conf.d/haozu.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:subdomain => "#{node['anjukeinc']['subdomain']}")
end

template "jinpu.nginx.conf" do
    path "/etc/nginx/conf.d/jinpu.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:subdomain => "#{node['anjukeinc']['subdomain']}")
end

template "member.nginx.conf" do
    path "/etc/nginx/conf.d/member.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:subdomain => "#{node['anjukeinc']['subdomain']}")
end

template "mendian.nginx.conf" do
    path "/etc/nginx/conf.d/mendian.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:subdomain => "#{node['anjukeinc']['subdomain']}")
end

