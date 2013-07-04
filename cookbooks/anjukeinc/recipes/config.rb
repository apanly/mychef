template "php.ini" do
    path "#{default['anjukeinc']['php_install_path']}/lib/php.ini"
    user root
    group root
    mode 00755
end

template "php-extension.conf" do
    path "#{default['anjukeinc']['php_install_path']}/lib/php-ext.ini"
    user root
    group root
    mode 00755
end

template "php-fpm.conf" do
    path "#{default['anjukeinc']['php_install_path']}/etc/php-fpm.conf"
    user root
    group root
    mode 00755
end

template "nginx.conf" do
    path "/etc/nginx/nginx.conf"
    user root
    group root
    mode 00755
end

template "anjuke.nginx.conf" do
    path "/etc/nginx/conf.d/anjuke.conf"
    user root
    group root
    mode 00755
end

template "haozu.nginx.conf" do
    path "/etc/nginx/conf.d/haozu.conf"
    user root
    group root
    mode 00755
end

template "jinpu.nginx.conf" do
    path "/etc/nginx/conf.d/jinpu.conf"
    user root
    group root
    mode 00755
end

template "member.nginx.conf" do
    path "/etc/nginx/conf.d/member.conf"
    user root
    group root
    mode 00755
end

template "mendian.nginx.conf" do
    path "/etc/nginx/conf.d/mendian.conf"
    user root
    group root
    mode 00755
end

