# clone the code repo of php
execute "clone php code repo" do
  user node['xinfang']['username']
  cmds = [
          "mkdir /code/xinfang",
          "cd /code/xinfang",
          "git clone #{node['xinfang']['code_repo']} biz"
  ]
  command (cmds.join " ; ")
end

execute "clone system code repo" do
  user node['xinfang']['username']
  cmds = [
          "cd /code/xinfang",
          "git clone #{node['xinfang']['sys_repo']} system"
  ]
  command (cmds.join " ; ")
end

execute "clone 3rd code repo" do
  user node['xinfang']['username']
  cmds = [
          "mkdir /code/xinfang/app-3rd",
          "cd /code/xinfang/app-3rd",
          "git clone #{node['xinfang']['common_repo']} app-common",
          "git clone #{node['xinfang']['api_share_repo']} app-api-shared",
          "git clone #{node['xinfang']['faq_share_repo']} app-faq-shared",
          "git clone #{node['xinfang']['member_share_repo']} app-member-public"
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