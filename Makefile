PWD=$(shell pwd)
clear:
	rm -rf genprotos/*


gen-eater:
	protoc \
	--go_out=./genprotos \
	--go_opt=paths=source_relative \
	--go-grpc_out=./genprotos \
	--go-grpc_opt=paths=source_relative \
	-I=$(PWD)/eater \
	$(PWD)/eater/*.proto

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
	--go_opt=paths=source_relative \
	--go-grpc_out=./genprotos \
	--go-grpc_opt=paths=source_relative \
	-I=$(PWD)/restaurant_restaurant \
	$(PWD)/restaurant_restaurant/*.proto

gen-restaurant-support:
	protoc \
	--go_out=./genprotos \
	--go_opt=paths=import \
	--go-grpc_out=./genprotos \
	--go-grpc_opt=paths=import \
	-I=$(PWD)restaurant_support \
	$(PWD)restaurant_support/*.proto

gen-restaurant-payment:
	protoc \
	--go_out=./genprotos \
	--go_opt=paths=import \
	--go-grpc_out=./genprotos \
	--go-grpc_opt=paths=import \
	-I=$(PWD)restaurant_payment \
	$(PWD)restaurant_payment/*.proto

gen-logistics-staff:
	protoc \
	--go_out=./genprotos \
	--go_opt=paths=import \
	--go-grpc_out=./genprotos \
	--go-grpc_opt=paths=import \
	-I=$(PWD)/logistics_staff \
	$(PWD)/logistics_staff/*.proto

gen-logistics-vehicle:
	protoc \
	--go_out=./genprotos \
	--go_opt=paths=import \
	--go-grpc_out=./genprotos \
	--go-grpc_opt=paths=import \
	-I=$(PWD)/logistics_vehicle \
	$(PWD)/logistics_vehicle/*.proto

gen-logistics-support:
	protoc \
	--go_out=./genprotos \
	--go_opt=paths=import \
	--go-grpc_out=./genprotos \
	--go-grpc_opt=paths=import \
	-I=$(PWD)/logistics_support \
	$(PWD)/logistics_support/*.proto