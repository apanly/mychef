# user and group
# user and group
default['anjuke']['username']  = 'developer'
default['anjuke']['group_name']  = 'developer'
default['anjuke']['home']  = '/home/developer'

default['anjuke']['repo']  = 'git@git.corp.anjuke.com:jinpu/jinpu-site'
default['anjuke']['build_root'] = '/root/install'
default['anjuke']['mysql_install_path'] = '/usr/local/mysql'
default['anjuke']['php_install_path'] = '/usr/local/php_jinpu'
default['anjuke']['zeromq_install_path'] = '/usr/local/zeromq-2.2.0'

default['anjuke']['php_source'] = 'php-5.3.17'
default['anjuke']['php_apc_source'] = 'APC-3.1.9'
default['anjuke']['php_memcache_source'] = 'memcache-2.2.7'
default['anjuke']['php_msgpack_source'] = 'msgpack-0.5.5'
default['anjuke']['php_solr_source'] = 'solr-1.0.2'
default['anjuke']['php_amqp_source'] = 'amqp-0.2.2'

default['anjuke']['code_repo'] = 'git@git.corp.anjuke.com:jinpu/jinpu-site'
default['anjuke']['page_repo'] = 'git@git.corp.anjuke.com:jinpu/pages'

default['anjuke']['subdomain'] = '{$USER}'
