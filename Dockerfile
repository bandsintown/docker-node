#
# Node JS image
#

FROM 1science/alpine:3.1

# Node and NPM version
ENV NODE_VERSION=4.2.2 NPM_VERSION=3.4.1

# Install Node and NPM
RUN apk update && apk-install make gcc g++ python linux-headers paxctl libgcc libstdc++ && \
  curl -sSL https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}.tar.gz | tar -xz && \
  cd /node-v${NODE_VERSION} && \
  ./configure --prefix=/usr && \
  make -j$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1) && \
  make install && \
  paxctl -cm /usr/bin/node && \
  npm install -g npm@${NPM_VERSION} && \
  apk del make gcc g++ python linux-headers paxctl libgcc libstdc+ && \
  find /usr/lib/node_modules/npm -name test -o -name .bin -type d | xargs rm -rf && \
  rm -rf /node-v${NODE_VERSION} \
    /usr/share/man /tmp/* /var/cache/apk/* /root/.npm \
    /usr/lib/node_modules/npm/man /usr/lib/node_modules/npm/doc /usr/lib/node_modules/npm/html && \
  echo -ne "- with Node.js `node --version" >> /root/.built

CMD [ "bash" ]