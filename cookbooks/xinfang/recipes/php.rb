# setup php

execute "install PHP" do
  user 'root'
  cmds = [
          "cd #{node['xinfang']['build_root']}/#{node['xinfang']['php_source']}",
          "./configure --prefix=#{node['xinfang']['php_install_path']} --with-mysql=#{node['xinfang']['mysql_install_path']} --with-pdo-mysql=#{node['xinfang']['mysql_install_path']} --with-curl --enable-fpm",
          "make && make install"
         ]
  command (cmds.join " ; ")
end