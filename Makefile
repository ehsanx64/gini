PROGRAM=gini
.DEFAULT_GOAL := build
fmt:
	go fmt ./...

lint: fmt
	golint ./...

vet: fmt
	go vet ./...

build: vet
	go build

run: 
	go run $(PROGRAM)

clean:
	rm ./$(PROGRAM)


