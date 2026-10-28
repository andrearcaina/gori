.PHONY: default build run install tidy fmt vet test check clean

default:
	@echo "GoRI (Go Runtime Inspector)"

build:
	mkdir -p ./bin
	go build -o ./bin/gori .

run: build
	./bin/gori

install:
	go install .

tidy:
	go mod tidy

fmt:
	go fmt ./...

vet:
	go vet ./...

test:
	go test ./...

check: fmt tidy vet test build

clean:
	rm -rf ./bin/**