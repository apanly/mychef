# clone the code repo of php
execute "clone php code repo" do
  user node['haozu']['username']
  cmds = [
          "cd /code",
          "git clone #{node['haozu']['code_repo']} haozu"
  ]
  command (cmds.join " ; ")
end

# checkout pages files
execute "clone pages repo" do
  user node['haozu']['username']
  cmds = [
          "cd /code",
          "git clone #{node['haozu']['page_repo']} haozu_pages"
  ]
  command (cmds.join " ; ")
end
