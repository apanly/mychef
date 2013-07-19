# clone the code repo of php
execute "clone php code repo" do
  user node['anjuke']['username']
  cmds = [
          "cd /code",
          "git clone #{node['anjuke']['code_repo']} anjuke"
  ]
  command (cmds.join " ; ")
end

# checkout pages files
execute "clone pages repo" do
  user node['anjuke']['username']
  cmds = [
  	      "LC_ALL=\"zh_CN.UTF-8\"",
          "cd /code",
          "svn checkout #{node['anjuke']['page_repo']} --username=#{node['anjuke']['svn_user']} --password=#{node['anjuke']['svn_pass']} pages"
  ]
  command (cmds.join " ; ")
end