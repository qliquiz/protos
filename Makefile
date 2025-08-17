.PHONY: proto

proto:
	@echo "generating proto files..."
	@mkdir -p gen
	@protoc \
     		-I proto \
     		--go_out=gen --go_opt=module=github.com/qliquiz/protos/gen \
     		--go-grpc_out=gen --go-grpc_opt=module=github.com/qliquiz/protos/gen \
     		proto/*.proto
	@echo "proto files generated successfully."

clean:
	@echo "cleaning up..."
	@rm -rf ./gen
