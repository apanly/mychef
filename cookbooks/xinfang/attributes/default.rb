# user and group
# user and group
default['xinfang']['username']  = 'developer'
default['xinfang']['group_name']  = 'developer'
default['xinfang']['home']  = '/home/developer'

default['xinfang']['repo']  = 'git@git.corp.anjuke.com:aifang/aifang-branch'
default['xinfang']['build_root'] = '/root/install'
default['xinfang']['mysql_install_path'] = '/usr/local/mysql'
default['xinfang']['php_install_path'] = '/usr/local/php_xf'
default['xinfang']['zeromq_install_path'] = '/usr/local/zeromq-2.2.0'

default['xinfang']['php_source'] = 'php-5.3.17'
default['xinfang']['php_apc_source'] = 'APC-3.1.9'
default['xinfang']['php_memcache_source'] = 'memcache-2.2.7'
default['xinfang']['php_msgpack_source'] = 'msgpack-0.5.5'

default['xinfang']['code_repo'] = 'git@git.corp.anjuke.com:aifang/aifang-branch'
default['xinfang']['page_repo'] = 'git@git.corp.anjuke.com:aifang/pages'
default['xinfang']['svn_user'] = 'devdeployer'
default['xinfang']['svn_pass'] = 'devdeployer'

default['xinfang']['subdomain'] = '{$USER}'
