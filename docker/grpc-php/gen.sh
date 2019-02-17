protoc \
    -I /proto/sample \
    /proto/sample/helloworld.proto \
    --php_out=plugins=grpc:/out/php \
    --grpc_out=/out/php \
    --plugin=protoc-gen-grpc=/grpc/bins/opt/grpc_php_plugin