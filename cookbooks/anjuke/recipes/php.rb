# setup php

execute "install PHP" do
  user 'root'
  cmds = [
          "cd #{node['anjuke']['build_root']}/#{node['anjuke']['php_source']}",
          "make clean",
          "./configure --prefix=#{node['anjuke']['php_install_path']} --with-mysql=#{node['anjuke']['mysql_install_path']} --with-pdo-mysql=#{node['anjuke']['mysql_install_path']} --with-curl --enable-fpm",
          "make && make install"
         ]
  command (cmds.join " ; ")
  not_if "ls #{node['anjuke']['php_install_path']}"
end