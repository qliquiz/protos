.PHONY: proto

# protoc -I proto proto/sso/sso.proto --go_out=./gen/go --go_opt=paths=source_relative --go-grpc_out=./gen/go --go-grpc_opt=paths=source_relative
proto:
	@echo "generating proto files..."
	@protoc \
		-I proto \
		proto/sso/sso.proto \
		--go_out=./gen/go \
		--go_opt=paths=source_relative \
		--go-grpc_out=./gen/go \
		--go-grpc_opt=paths=source_relative
	@echo "proto files generated successfully."

clean:
	@echo "cleaning up..."
	@rm -rf ./gen
