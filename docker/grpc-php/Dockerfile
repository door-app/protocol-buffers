FROM php:7.2-cli

# Install basics, grpc, protobuf
RUN apt-get update \
 && apt-get install -y vim git zip wget automake libtool libz-dev \
 && pecl install grpc && pecl install protobuf

# Install protoc
RUN wget https://github.com/protocolbuffers/protobuf/releases/download/v3.6.1/protoc-3.6.1-linux-x86_64.zip \
 && unzip protoc-3.6.1-linux-x86_64.zip -d protoc \
 && cd protoc \
 && mv bin/protoc /usr/bin

# Install grpc_php_plugin
RUN git clone -b $(curl -L https://grpc.io/release) https://github.com/grpc/grpc \
 && cd grpc \
 && git submodule update --init \
 && make grpc_php_plugin