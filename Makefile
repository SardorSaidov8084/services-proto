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

gen-restaurant-staff:
	protoc \
	--go_out=./genprotos \
	--go_opt=paths=import \
	--go-grpc_out=./genprotos \
	--go-grpc_opt=paths=import \
	-I=$(PWD)restaurant_staff \
	$(PWD)restaurant_staff/*.proto

gen-restaurant-restaurant:
	protoc \
	--go_out=./genprotos \
	--go_opt=paths=import \
	--go-grpc_out=./genprotos \
	--go-grpc_opt=paths=import \
	-I=$(PWD)restaurant_restaurant \
	$(PWD)restaurant_restaurant/*.proto