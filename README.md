# 开发环境搭建

## 首次启动
把仓库拉下来

```
# git clone git@git.corp.anjuke.com:yyang/anjuke-dev-environment
```
```
# cd anjuke-dev-environment
```

执行引导程序

```
# ruby bootstrap.rb -d yyang -p /User/yangyong/Document/website
```

目前暂时需要自己clone代码到本地，代码目录如下：   
├── anjuke (_ajkrepopool/anjuke_feature)   
├── broker    
│   ├── biz (_ajkrepopool/ajk_feature)   
│   ├── common (_broker/3rd/common)   
│   ├── kernel (_broekr/3rd/kernel)   
│   └── system (_broker/3rd/system)   
├── haozu (_ajkrepopool/haozu_feature)   
├── haozu_pages (haozu/pages)   
├── jinpu (_ajkrepopool/jinpu_feature)   
├── jinpu_pages (jinpu/pages)   
├── pages (svn，你懂的)   
└── user (anjuke/v2-site)   

## 第二次启动
首次启动需要安装各种软件和配置，后面再启动时不需要再次安装和配置

```
# cd mychef
# vagrant up
```

## 常用命令
* 启动虚拟机
`# vagrant up`
* 关闭虚拟机
`# vagrant halt`
* 重启虚拟机
`# vagrant reload`
* 执行自动化配置
`# vagrant provision`
* 进入虚拟机
`# vagrant ssh`
