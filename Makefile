PWD=$(shell pwd)
PROTOS_PATH=$(PWD)/
clear:
	rm -rf genprotos/*


gen-eater:
	protoc \
	--go_out=./genprotos \
	--go_opt=paths=import \
	--go-grpc_out=./genprotos \
	--go-grpc_opt=paths=import \
	-I=$(PROTOS_PATH)/eater \
	$(PROTOS_PATH)/eater/*.proto
	
