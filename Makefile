PWD=$(shell pwd)
PROTO_DIRS=eater \
	restaurant_staff \
	restaurant_restaurant \
	restaurant_payment \
	restaurant_support \
	logistics_staff \
	logistics_vehicle \
	logistics_support
clear:
	rm -rf genprotos/*


gen-restaurant-staff:
	protoc \
	--go_out=./gen \
	--go_opt=paths=import \
	--go-grpc_out=./gen \
	--go-grpc_opt=paths=import \
	-I=$(PWD)restaurant_staff \
	$(PWD)restaurant_staff/*.proto

gen-protos:
	@for dir in $(PROTO_DIRS); do \
        echo "Generating $$dir protos"; \
		protoc \
			--go_out=./gen/$$dir \
			--go_opt=paths=source_relative \
    		--go-grpc_out=./gen/$$dir \
			--go-grpc_opt=paths=source_relative \
			-I=$(PWD) \
   			$(PWD)/$$dir/*.proto; \
	done
