#如何开启多用户版(manyuser)

##修改shadowsocks配置
1.使用一键包安装本项目：见主说明Readme.md

2.进入shadowsocks目录：
cd /usr/local/shadowsocks

3.配置数据库数据：
cp mysql.json usermysql.json
vi usermysql.json

"host": "127.0.0.1", #若数据库在本地服务器上不用修改，否则改为数据库所在服务IP
"port": 3306,    #默认端口
"user": "ss",    #数据库账号，默认root
"password": "pass",  #数据库密码
"db": "shadowsocks",  #数据库名称
    
4.文件config.json复制一份到user-config.json，然后编辑：
cp /root/shadowsocks/config.json /root/shadowsocks/user-config.json
vi user-config.json

"method":"aes-256-cfb", #加密方式
"protocol": "auth_sha1_compatible", //协议插件名称
"obfs": "tls1.0_session_auth_compatible", //混淆插件名称


##修改系统防火墙配置
vi /etc/sysconfig/iptables
-A INPUT -p tcp -m state --state NEW -m tcp --dport 10000:10300 -j ACCEPT  #端口10000-10300可根据实际情况修改
/etc/init.d/iptables restart  #重启防火墙

(在数据库中导入sql.zip中的sql信息，部署ss-panel，并在前后端配置文件中修改好数据库链接信息)