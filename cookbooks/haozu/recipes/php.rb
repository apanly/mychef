# setup php

execute "install PHP" do
  user 'root'
  cmds = [
          "cd #{node['haozu']['build_root']}/#{node['haozu']['php_source']}",
          "make clean",
          "./configure --prefix=#{node['haozu']['php_install_path']} --with-mysql=#{node['haozu']['mysql_install_path']} --with-pdo-mysql=#{node['haozu']['mysql_install_path']} --with-curl --enable-fpm",
          "make && make install"
         ]
  command (cmds.join " ; ")
end