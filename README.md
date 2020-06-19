# deployment-dns-hijacking
Docker deployment for DNS-hijacking.





## 0. Prepare

#### 为避免原有环境的影响，务必先行执行以下操作：

1. **清除 DNS 缓存；**
2. **添加本机最优先的 DNS 服务地址为 127.0.0.1，以访问搭载于本机之上的 DNSmasq。**



MacOS 执行以下指令清除 DNS 缓存： 

```shell
sudo killall -HUP mDNSResponder
sudo killall mDNSResponderHelper
sudo dscacheutil -flushcache
```

在 `系统偏好设置-网络-高级-DNS` 中设置 DNS 服务器 ` 127.0.0.1 ` 并将其置于首位。





## 1. Compose

 ` Nginx ` + `DNSmasq`

在当前目录执行  `docker-compose up`  即可开始环境部署。如需后台执行，请添加 `-d` 参数。

```shell
$ docker-compose up -d
```





## 2. Start

访问本机 `127.0.0.1:8080` 即可进入 DNSmasq 控制台。

 默认账号密码均为 `Kiki` 。





## 3. Advanced

配置更新：

1. 在控制台可快速修改 DNSmasq 配置，点击 `Save` 以快速重启并应用新配置。
2. Nginx 更新：执行 ` reload.sh `；

