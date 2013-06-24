# 开发环境搭建

## 首次启动
把仓库拉下来
```
$ git clone git@github.com:eyong4736/mychef.git
$ cd mychef
```
执行引导程序
```
$ ./bootstrap.sh yyang
```

## 第二次启动
首次启动需要安装各种软件和配置，后面再启动时不需要再次安装和配置

```
$ cd mychef
$ vagrant up
```

## 常用命令
* 启动虚拟机
`$ vagrant up`
* 关闭虚拟机
`$ vagrant halt`
* 重启虚拟机
`$ vagrant reload`
* 执行自动化配置
`$ vagrant provision`
* 进入虚拟机
`$ vagrant ssh`
