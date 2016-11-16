#单用户版(支持免流)(支持Manyuser)
##Onekey Start:
```sudo su```

```wget -N --no-check-certificate https://raw.githubusercontent.com/se4/SSR-ML-Docker/master/onekey_install_ssr.sh && chmod +x *.sh && bash onekey_install_ssr.sh```



===================
'根据提示输入需要创建的帐号密码，移动请使用137或者138端口，联通使用除50外的端口，空中卡使用53端口'

###客户端配置
协议：auth_sha1
混淆方式：http_simple
混淆参数：移动：wap.xx.10086.cn（XX改为当地区域缩写，比如广东那么就是gd）

启动：/etc/init.d/shadowsocks start
停止：/etc/init.d/shadowsocks stop
重启：/etc/init.d/shadowsocks restart
状态：/etc/init.d/shadowsocks status
卸载：./shadowsocksR.sh uninstall
 
配置文件路径：/etc/shadowsocks.json
日志文件路径：/var/log/shadowsocks.log
代码安装目录：/usr/local/shadowsocks



==============

##Docker start:
This image uses ENTRYPOINT to run the containers as an executable.

```docker run -d -p 8388:8388/tcp -p 8388:8388/udp se4/SSR-ML-Docker -s 0.0.0.0 -p 8388 -k mypassword -m aes-256-cfb -o tls1.2_ticket_auth_compatible -O auth_sha1_v2_compatible```

###More Options
docker更多变量参数: [here](https://github.com/smounives/ShadowsocksR-Docker/blob/master/README.md)

多用户: [here](https://github.com/se4/SSR-ML-Docker/tree/master/Manyuser)

===================
SS:@clowwindy，SSR:@breakwa11，免流:@alphabrock，Docker化:@smounives
