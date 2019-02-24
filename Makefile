#
# grpc出力サンプル
#
helloworld:
	docker run --rm -v `pwd`:`pwd` -w `pwd` znly/protoc:0.4.0 \
	--go_out=plugins=grpc:./out/go/sample \
	--js_out=import_style=commonjs,binary:./out/js/sample \
	--grpc-web_out=import_style=commonjs,mode=grpcweb:./out/js/sample \
	-I./proto/sample helloworld.proto
