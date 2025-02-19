binary = hey

# default target
all:
	go build -o ./$(binary)

release:
	GOOS=windows GOARCH=amd64 go build -o ./bin/$(binary)_windows_amd64
	GOOS=linux GOARCH=amd64 go build -o ./bin/$(binary)_linux_amd64
	GOOS=darwin GOARCH=amd64 go build -o ./bin/$(binary)_darwin_amd64
	GOOS=darwin GOARCH=arm64 go build -o ./bin/$(binary)_darwin_arm64

