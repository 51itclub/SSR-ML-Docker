FROM alpine
MAINTAINER se4 <se4@live.cn>

RUN set -ex \
    && if [ $(wget -qO- ipinfo.io/country) == CN ]; then echo "http://mirrors.aliyun.com/alpine/latest-stable/main/" > /etc/apk/repositories ;fi \
    && apk add --no-cache libsodium py-pip \
    && pip --no-cache-dir install http://7ls08n.com1.z0.glb.clouddn.com/shadowsocks.zip

ENTRYPOINT ["/usr/bin/ssserver"]