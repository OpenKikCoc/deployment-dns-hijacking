# deployment-dns-hijacking
Docker deployment for DNS-hijacking.





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

2. Nginx 更新有两种方式：

   2.1 修改当前目录下 `./nginx/` 下的配置，随后 reload 容器中的 Nginx：**[ 推荐 ]**

   ```shell
   docker exec -i [nginx容器名/id] nginx -s reload
   ```

   2.2 修改当前目录下 `./nginx/` 下的配置，重新进行容器部署：

   ```shell
   # docker-compose up
   $ ctrl^c
   
   # docker-compose up -d
   docker-compose down
   ```

   

##  # ATTENTION

MacOS 执行以下指令清除 DNS 缓存： 

```shell
sudo killall -HUP mDNSResponder
sudo killall mDNSResponderHelper
sudo dscacheutil -flushcache
```