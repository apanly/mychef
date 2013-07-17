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
default['anjukeinc']['mysql_tarball_url'] = 'http://static.yyang.dev.anjuke.com/mysql-5.5.28.tar.gz'
default['anjukeinc']['mysql_install_path'] = '/usr/local/mysql'

# php
default['anjukeinc']['php_tarball'] = 'php-5.3.17.tar.gz'
default['anjukeinc']['php_tarball_url'] = 'http://www.php.net/get/php-5.3.17.tar.gz/from/ar2.php.net/mirror'
default['anjukeinc']['php_tarball_checksum'] = '002e02e36c2cbcada8c49a7e5956d787'
default['anjukeinc']['php_install_path'] = '/usr/local/php'

# rabbitmq-c
default['anjukeinc']['rabbitmq-repo'] = 'git://github.com/alanxz/rabbitmq-c.git'
# zeromq
default['anjukeinc']['zeromq_tarball'] = 'zeromq-2.2.0.tar.gz'
default['anjukeinc']['zeromq_tarball_url'] = 'http://download.zeromq.org/zeromq-2.2.0.tar.gz'
default['anjukeinc']['zeromq_install_path'] = '/usr/local/zeromq-2.2.0'

# php extension
default['anjukeinc']['php_amqp_tarball'] = 'amqp-0.2.2.tgz'
default['anjukeinc']['php_amqp_tarball_url'] = 'http://pecl.php.net/get/amqp-0.2.2.tgz'

default['anjukeinc']['php_apc_tarball'] = 'APC-3.1.9.tgz'
default['anjukeinc']['php_apc_tarball_url'] = 'http://pecl.php.net/get/APC-3.1.9.tgz'

default['anjukeinc']['php_memcache_tarball'] = 'memcache-2.2.7.tgz'
default['anjukeinc']['php_memcache_tarball_url'] = 'http://pecl.php.net/get/memcache-2.2.7.tgz'

default['anjukeinc']['php_msgpack_tarball'] = 'msgpack-0.5.5.tgz'
default['anjukeinc']['php_msgpack_tarball_url'] = 'http://pecl.php.net/get/msgpack-0.5.5.tgz'

default['anjukeinc']['php_redis_tarball'] = 'redis-2.2.3.tgz'
default['anjukeinc']['php_redis_tarball_url'] = 'http://pecl.php.net/get/redis-2.2.3.tgz'

default['anjukeinc']['php_zmq_repo'] = 'git://github.com/mkoppanen/php-zmq.git'

default['anjukeinc']['php_solr_tarball'] = 'solr-1.0.2.tgz'
default['anjukeinc']['php_solr_tarball_url'] = 'http://pecl.php.net/get/solr-1.0.2.tgz'

default['anjukeinc']['font_dir'] = '/usr/share/fonts'
default['anjukeinc']['font_arail_big'] = 'http://static.yyang.dev.anjuke.com/ARIAL.TTF'
default['anjukeinc']['font_share_arial_big'] = '/usr/share/fonts/ARIAL.TTF'
default['anjukeinc']['font_msyh'] = 'http://static.yyang.dev.anjuke.com/MSYH.TTF'
default['anjukeinc']['font_share_msyh'] = '/usr/share/fonts/MSYH.TTF'
default['anjukeinc']['font_simyou'] = 'http://static.yyang.dev.anjuke.com/SIMYOU.TTF'
default['anjukeinc']['font_share_simyou'] = '/usr/share/fonts/SIMYOU.TTF'
default['anjukeinc']['font_stxihei'] = 'http://static.yyang.dev.anjuke.com/STXIHEI.TTF'
default['anjukeinc']['font_share_stxihei'] = '/usr/share/fonts/STXIHEI.TTF'
default['anjukeinc']['font_arail_small'] = 'http://static.yyang.dev.anjuke.com/arial.ttf'
default['anjukeinc']['font_share_arial_small'] = '/usr/share/fonts/arial.ttf'
