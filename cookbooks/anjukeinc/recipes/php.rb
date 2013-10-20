# setup php

execute "install PHP" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}/#{node['anjukeinc']['php_tarball'].gsub('.tar.gz', '')}",
          "./configure --prefix=#{node['anjukeinc']['php_install_path']} --with-mysql=#{node['anjukeinc']['mysql_install_path']} --with-pdo-mysql=#{node['anjukeinc']['mysql_install_path']} --with-curl --enable-fpm",
          "make && make install"
         ]
  command (cmds.join " ; ")
end