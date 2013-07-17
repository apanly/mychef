# clone the code repo of php
execute "clone php config repo" do
  user "vagrant"
  cmds = [
          "cd /code",
          "git clone #{node['anjuke']['code_repo']} anjuke"
  ]
  command (cmds.join " ; ")
end

# checkout pages files
execute "clone php config repo" do
  user "vagrant"
  cmds = [
          "cd /code",
          "svn checkout #{node['anjuke']['page_repo']} --username=#{node['anjuke']['svn_user']} --password=#{node['anjuke']['svn_pass']} pages"
  ]
  command (cmds.join " ; ")
end