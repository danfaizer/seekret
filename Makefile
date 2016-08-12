package = github.com/danfaizer/seekret/cmd/seekret

.PHONY: release

release:
  mkdir -p release
  GOOS=linux GOARCH=amd64 go build -o release/seekret-linux-amd64 $(package)
  GOOS=linux GOARCH=386 go build -o release/seekret-linux-386 $(package)
  GOOS=linux GOARCH=arm go build -o release/seekret-linux-arm $(package)
