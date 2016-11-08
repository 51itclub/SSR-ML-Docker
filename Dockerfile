FROM alpine
MAINTAINER se4 <se4@live.cn>

RUN set -ex \
    && apk add --no-cache libsodium py-pip \
    && pip --no-cache-dir install https://github.com/se4/SSR-ML-Docker/blob/master/shadowsocks.zip?raw=true

ENTRYPOINT ["/usr/bin/ssserver"]
