PROGRAM=gini
build:
	go build
run:
	go run $(PROGRAM)
clean:
	rm ./$(PROGRAM)


