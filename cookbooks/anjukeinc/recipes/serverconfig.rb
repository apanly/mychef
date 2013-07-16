
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
    variables(:subdomain => "#{node['anjukeinc']['subdomain']}", :docuser => "#{node['anjukeinc']['username']}")
end

template "haozu.nginx.conf" do
    path "/etc/nginx/conf.d/haozu.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:subdomain => "#{node['anjukeinc']['subdomain']}", :docuser => "#{node['anjukeinc']['username']}")
end

template "jinpu.nginx.conf" do
    path "/etc/nginx/conf.d/jinpu.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:subdomain => "#{node['anjukeinc']['subdomain']}", :docuser => "#{node['anjukeinc']['username']}")
end

template "member.nginx.conf" do
    path "/etc/nginx/conf.d/member.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:subdomain => "#{node['anjukeinc']['subdomain']}", :docuser => "#{node['anjukeinc']['username']}")
end

template "mendian.nginx.conf" do
    path "/etc/nginx/conf.d/mendian.conf"
    owner "root"
    group "root"
    mode "0644"
    variables(:subdomain => "#{node['anjukeinc']['subdomain']}", :docuser => "#{node['anjukeinc']['username']}")
end

execute "reload nginx" do
  user 'root'
  cmds = [
          "/etc/init.d/nginx reload"
         ]
  command (cmds.join " ; ")
end