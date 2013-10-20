# clone the code repo of anjuke
execute "clone anjuke code repo" do
  user node['broker']['username']
  group node['broker']['user_group']
  cmds = [
          "cd /code",
          "git clone #{node['broker']['repo1']} anjuke"
  ]
  command (cmds.join " ; ")
end

# clone the code repo of haozu
execute "clone haozu code repo" do
  user node['broker']['username']
  group node['broker']['user_group']
  cmds = [
          "cd /code",
          "git clone #{node['broker']['repo2']} haozu",
          "git clone #{node['broker']['hz_page_repo']} haozu_pages"
  ]
  command (cmds.join " ; ")
end

# clone the code repo of php
execute "clone jinpu code repo" do
  user node['broker']['username']
  group node['broker']['user_group']
  cmds = [
          "cd /code",
          "git clone #{node['broker']['repo3']} jinpu",
          "git clone #{node['broker']['jp_page_repo']} jinpu_pages"
  ]
  command (cmds.join " ; ")
end

# clone the code repo of php
execute "clone broker code repo" do
  user node['broker']['username']
  group node['broker']['user_group']
  cmds = [
  		  "mkdir /code/broker",
          "cd /code/broker",
          "git clone #{node['broker']['repo4']} biz",
          "git clone #{node['broker']['repo_common']} common",
          "git clone #{node['broker']['repo_kernel']} kernel",
          "git clone #{node['broker']['repo_system']} system"
  ]
  command (cmds.join " ; ")
end