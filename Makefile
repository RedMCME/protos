compile-go:
	rm -rf ./go/player ./go/teams
	protoc -I ./protos/teams -I ./protos/player \
    	--go_out=./go \
			--go-grpc_out=./go \
			--go_opt=module=github.com/redmcme/rpc-go \
			--go-grpc_opt=module=github.com/redmcme/rpc-go \
			./protos/*/**

