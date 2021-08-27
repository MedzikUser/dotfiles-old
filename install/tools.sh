#!/usr/bin/bash

# Go
## Default tools
go install golang.org/x/tools/gopls@latest \
	github.com/go-delve/delve/cmd/dlv@latest \
	github.com/uudashr/gopkgs/cmd/gopkgs@v2 \
	github.com/fatih/gomodifytags@latest \
	github.com/josharian/impl@latest \
	honnef.co/go/tools/cmd/staticcheck@latest \
	github.com/ramya-rao-a/go-outline@latest

## Other tools
curl -sfL https://install.goreleaser.com/github.com/goreleaser/goreleaser.sh | sh

# Clean
go clean
rm -rf $GOPATH/src $GOPATH/pkg


# Node.js
yarn global add nodemon
