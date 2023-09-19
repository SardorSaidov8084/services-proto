PWD=$(shell pwd)
clear:
	rm -rf genprotos/*


gen-eater:
	protoc \
	--go_out=./genprotos \
	--go_opt=paths=import \
	--go-grpc_out=./genprotos \
	--go-grpc_opt=paths=import \
	-I=$(PWD)eater \
	$(PWD)eater/*.proto