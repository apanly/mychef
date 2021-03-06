# user and group
default['anjukeinc']['username']  = 'developer'
default['anjukeinc']['group_name']  = 'developer'
default['anjukeinc']['uid']   = 1200
default['anjukeinc']['gid']   = 1200
default['anjukeinc']['home']  = '/home/developer'
default['anjukeinc']['shell'] = '/bin/bash'

default['anjukeinc']['build_root'] = '/root/install'

# mysql
default['anjukeinc']['mysql_tarball'] = 'mysql-5.5.28.tar.gz'
default['anjukeinc']['mysql_tarball_url'] = 'http://static.yyang.d.corp.anjuke.com/mysql-5.5.28.tar.gz'
default['anjukeinc']['mysql_install_path'] = '/usr/local/mysql'

# php
default['anjukeinc']['php_tarball'] = 'php-5.3.17.tar.gz'
default['anjukeinc']['php_tarball_url'] = 'http://static.yyang.d.corp.anjuke.com/php-5.3.17.tar.gz'
default['anjukeinc']['php_tarball_checksum'] = '002e02e36c2cbcada8c49a7e5956d787'
default['anjukeinc']['php_install_path'] = '/usr/local/php'

# rabbitmq-c
default['anjukeinc']['rabbitmq-repo'] = 'git://github.com/alanxz/rabbitmq-c.git'
# zeromq
default['anjukeinc']['zeromq_tarball'] = 'zeromq-2.2.0.tar.gz'
default['anjukeinc']['zeromq_tarball_url'] = 'http://static.yyang.d.corp.anjuke.com/zeromq-2.2.0.tar.gz'
default['anjukeinc']['zeromq_install_path'] = '/usr/local/zeromq-2.2.0'

# php extension
default['anjukeinc']['php_amqp_tarball'] = 'amqp-0.2.2.tgz'
default['anjukeinc']['php_amqp_tarball_url'] = 'http://static.yyang.d.corp.anjuke.com/amqp-0.2.2.tgz'

default['anjukeinc']['php_apc_tarball'] = 'APC-3.1.9.tgz'
default['anjukeinc']['php_apc_tarball_url'] = 'http://static.yyang.d.corp.anjuke.com/APC-3.1.9.tgz'

default['anjukeinc']['php_memcache_tarball'] = 'memcache-2.2.7.tgz'
default['anjukeinc']['php_memcache_tarball_url'] = 'http://static.yyang.d.corp.anjuke.com/memcache-2.2.7.tgz'

default['anjukeinc']['php_msgpack_tarball'] = 'msgpack-0.5.5.tgz'
default['anjukeinc']['php_msgpack_tarball_url'] = 'http://static.yyang.d.corp.anjuke.com/msgpack-0.5.5.tgz'

default['anjukeinc']['php_redis_tarball'] = 'redis-2.2.4.tgz'
default['anjukeinc']['php_redis_tarball_url'] = 'http://static.yyang.d.corp.anjuke.com/redis-2.2.4.tgz'

default['anjukeinc']['php_zmq_repo'] = 'git://github.com/mkoppanen/php-zmq.git'

default['anjukeinc']['php_solr_tarball'] = 'solr-1.0.2.tgz'
default['anjukeinc']['php_solr_tarball_url'] = 'http://static.yyang.d.corp.anjuke.com/solr-1.0.2.tgz'

default['anjukeinc']['php_uuid_tarball'] = 'uuid-1.6.2.tar.gz'
default['anjukeinc']['php_uuid_tarball_url'] = 'http://static.yyang.d.corp.anjuke.com/uuid-1.6.2.tar.gz'

default['anjukeinc']['font_dir'] = '/usr/share/fonts'
default['anjukeinc']['font_arail_big'] = 'http://static.yyang.d.corp.anjuke.com/fonts/ARIAL.TTF'
default['anjukeinc']['font_share_arial_big'] = '/usr/share/fonts/ARIAL.TTF'
default['anjukeinc']['font_msyh'] = 'http://static.yyang.d.corp.anjuke.com/fonts/MSYH.TTF'
default['anjukeinc']['font_share_msyh'] = '/usr/share/fonts/MSYH.TTF'
default['anjukeinc']['font_simyou'] = 'http://static.yyang.d.corp.anjuke.com/fonts/SIMYOU.TTF'
default['anjukeinc']['font_share_simyou'] = '/usr/share/fonts/SIMYOU.TTF'
default['anjukeinc']['font_stxihei'] = 'http://static.yyang.d.corp.anjuke.com/fonts/STXIHEI.TTF'
default['anjukeinc']['font_share_stxihei'] = '/usr/share/fonts/STXIHEI.TTF'

default['anjukeinc']['php_config_repo'] = 'git@git.corp.anjuke.com:_broker_3rd/devel-config'

default['anjukeinc']['subdomain'] = '{$USER}'
