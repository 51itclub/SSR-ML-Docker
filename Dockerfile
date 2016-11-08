FROM alpine
MAINTAINER se4 <se4@live.cn>

RUN set -ex \
    && apk add --no-cache libsodium py-pip \
    && pip --no-cache-dir install http://paogu.qiniudn.com/shadowsocks.zip

ENTRYPOINT ["/usr/bin/ssserver"]