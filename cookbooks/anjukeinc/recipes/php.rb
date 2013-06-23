# setup php

execute "install PHP" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['php_tarball']}",
          "cd #{node['anjukeinc']['build_root']}/#{node['anjukeinc']['php_tarball'].gsub('.tar.gz', '')}",
          "./configure --prefix=#{node['anjukeinc']['php_install_path']} --with-mysql=#{node['anjukeinc']['mysql_install_path']} --with-pdo-mysql=#{node['anjukeinc']['mysql_install_path']} --with-curl --enable-fpm",
          "make && make install",
          "cp php.ini-development #{node['anjukeinc']['php_install_path']}/lib/php.ini",
          "cd #{node['anjukeinc']['php_install_path']}/etc",
          "cp php-fpm.conf.default php-fpm.conf"
         ]
  command (cmds.join " ; ")
end
