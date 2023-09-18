PWD=$(shel pwd)
clear:
	rm -rf genprotos/*

gen-eater:
	protoc  \
	--go_out=./genprotos \
	--go_opt=paths=import \
	--go-grpc_out=./genprotos \
	--go-grpc_opt=path=import \
	-I=/user/local \
	-I=$(PWD)/eater \
	$(PWD)/eater/*.proto
