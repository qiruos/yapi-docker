FROM node:12-alpine as builder
WORKDIR /yapi
ENV VERSION=1.9.3
RUN wget https://github.com/YMFE/yapi/archive/tags/v${VERSION}.zip
RUN unzip v${VERSION}.zip && mv yapi-tags-v${VERSION} vendors
RUN cd /yapi/vendors && cp config_example.json ../config.json && npm install --production --registry https://registry.npmmirror.com

FROM node:12-alpine
LABEL MAINTAINER=kongle.duan@deeperse.com
ENV TZ="Asia/Shanghai"
WORKDIR /yapi/vendors
COPY --from=builder /yapi/vendors /yapi/vendors
EXPOSE 3000

