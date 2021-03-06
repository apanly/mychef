
template "nginx.conf" do
    path "/etc/nginx/nginx.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:nginxuser => node['anjukeinc']['username'], :docuser => node['anjukeinc']['username'], :subdomain => node['anjukeinc']['subdomain'])
end

template "anjuke.nginx.conf" do
    path "/etc/nginx/conf.d/anjuke.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:subdomain => node['anjukeinc']['subdomain'], :docuser => node['anjukeinc']['username'])
end

template "user.nginx.conf" do
    path "/etc/nginx/conf.d/user.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:subdomain => node['anjukeinc']['subdomain'], :docuser => node['anjukeinc']['username'])
end

template "haozu.nginx.conf" do
    path "/etc/nginx/conf.d/haozu.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:subdomain => node['anjukeinc']['subdomain'], :docuser => node['anjukeinc']['username'])
end

template "jinpu.nginx.conf" do
    path "/etc/nginx/conf.d/jinpu.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:subdomain => node['anjukeinc']['subdomain'], :docuser => node['anjukeinc']['username'])
end

template "member.nginx.conf" do
    path "/etc/nginx/conf.d/member.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:subdomain => node['anjukeinc']['subdomain'], :docuser => node['anjukeinc']['username'])
end

template "mendian.nginx.conf" do
    path "/etc/nginx/conf.d/mendian.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:subdomain => node['anjukeinc']['subdomain'], :docuser => node['anjukeinc']['username'])
end

template "xinfang.nginx.conf" do
    path "/etc/nginx/conf.d/xinfang.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:subdomain => node['anjukeinc']['subdomain'], :docuser => node['anjukeinc']['username'])
end

template "php-fpm.conf" do
    path "#{node['anjukeinc']['php_install_path']}/etc/php-fpm.conf"
    owner "root"
    group "root"
    mode "0644"
end

execute "reload nginx" do
  user 'root'
  cmds = [
          "/etc/init.d/nginx restart"
         ]
  command (cmds.join " ; ")
end