### setup php
include_recipe "haozu::php"

### setup php extensions
include_recipe "haozu::php-extension"

### setup php serverconfig
include_recipe "haozu::serverconfig"

### checkout code
include_recipe "haozu::code"