#!/usr/bin/bash

# Go
## Default tools
go install golang.org/x/tools/gopls@latest \
	github.com/go-delve/delve/cmd/dlv@latest \
	github.com/uudashr/gopkgs/cmd/gopkgs@v2 \
	github.com/fatih/gomodifytags@latest \
	github.com/josharian/impl@latest \
	honnef.co/go/tools/cmd/staticcheck@latest

# Clean
go clean
rm -rf $GOPATH/src $GOPATH/pkg

## Other tools
curl -sfL https://install.goreleaser.com/github.com/goreleaser/goreleaser.sh | sh


# Node.js
yarn global add nodemon
