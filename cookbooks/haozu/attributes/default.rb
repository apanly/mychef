# user and group
default['haozu']['username']  = 'developer'
default['haozu']['group_name']  = 'developer'
default['haozu']['home']  = '/home/developer'

default['haozu']['repo']  = 'git@git.corp.anjuke.com:haozu/haozu-site'
default['haozu']['build_root'] = '/root/install'
default['haozu']['mysql_install_path'] = '/usr/local/mysql'
default['haozu']['php_install_path'] = '/usr/local/php_zufang'
default['haozu']['zeromq_install_path'] = '/usr/local/zeromq-2.2.0'

default['haozu']['php_source'] = 'php-5.3.17'
default['haozu']['php_apc_source'] = 'APC-3.1.9'
default['haozu']['php_memcache_source'] = 'memcache-2.2.7'
default['haozu']['php_msgpack_source'] = 'msgpack-0.5.5'
default['haozu']['php_solr_source'] = 'solr-1.0.2'
default['haozu']['php_redis_source'] = 'redis-2.2.3'

default['haozu']['code_repo'] = 'git@git.corp.anjuke.com:haozu/haozu-site'
default['haozu']['page_repo'] = 'git@git.corp.anjuke.com:haozu/pages'

default['haozu']['subdomain'] = '{$USER}'
