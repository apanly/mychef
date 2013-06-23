## setup mysql

execute "install mysql server" do
  user 'root'
  cmds = [
          "cd #{node['anjukeinc']['build_root']}",
          "tar zxvf #{node['anjukeinc']['mysql_tarball']}",
          "cd #{node['anjukeinc']['build_root']}/#{node['anjukeinc']['mysql_tarball'].gsub('.tar.gz', '')}",
          "cmake -DCMAKE_INSTALL_PREFIX=#{node['anjukeinc']['mysql_install_path']}",
          "make && make install"
         ]
  command (cmds.join " ; ")
end
