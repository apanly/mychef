### setup php
include_recipe "jinpu::php"

### setup php extensions
include_recipe "jinpu::php-extension"

### setup php serverconfig
include_recipe "jinpu::serverconfig"

### checkout code
include_recipe "jinpu::code"