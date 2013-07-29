# clone the code repo of php
execute "clone php code repo" do
  user node['xinfang']['username']
  cmds = [
          "cd /code",
          "git clone #{node['xinfang']['code_repo']} xinfang"
  ]
  command (cmds.join " ; ")
end

# checkout pages files
execute "clone pages repo" do
  user node['xinfang']['username']
  cmds = [
          "cd /code",
          "git clone #{node['xinfang']['page_repo']} xinfang_pages"
  ]
  command (cmds.join " ; ")
end