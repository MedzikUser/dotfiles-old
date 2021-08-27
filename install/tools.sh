#!/usr/bin/bash

# Go
## Default tools
go install golang.org/x/tools/gopls@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install github.com/uudashr/gopkgs/cmd/gopkgs@v2
go install github.com/fatih/gomodifytags@latest
go install github.com/josharian/impl@latest
go install honnef.co/go/tools/cmd/staticcheck@latest
go install github.com/ramya-rao-a/go-outline@latest

## Other tools
curl -sfL https://install.goreleaser.com/github.com/goreleaser/goreleaser.sh | sh

# Clean
go clean
rm -rf $GOPATH/src $GOPATH/pkg


# Node.js
yarn global add nodemon

