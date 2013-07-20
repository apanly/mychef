# setup php

execute "install PHP" do
  user 'root'
  cmds = [
          "cd #{node['jinpu']['build_root']}/#{node['jinpu']['php_source']}",
          "make clean",
          "./configure --prefix=#{node['jinpu']['php_install_path']} --with-mysql=#{node['jinpu']['mysql_install_path']} --with-pdo-mysql=#{node['jinpu']['mysql_install_path']} --with-curl --enable-fpm",
          "make && make install"
         ]
  command (cmds.join " ; ")
end