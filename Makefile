export GO_VERSION=go1.17
export GOFLAGS=-gcflags=-G=3

export PATH := $(shell go env GOPATH)/bin:/usr/local/go/bin:${PATH}

all: download run
.PHONY: download run

.PHONY: run
run:
	${GO_VERSION} run cmd/main.go

# @if ! command -v ${GO_VERSION} version >/dev/null 2>&1; then \

.PHONY: download
download:
	@if ! command -v ${GO_VERSION} version >/dev/null 2>&1; then \
			go get golang.org/dl/${GO_VERSION}; \
			${GO_VERSION} download; \
			${GO_VERSION} version; \
		else \
			${GO_VERSION} version; \
		fi

# git commit -C HEAD --no-edit

.PHONY: commit
commit:
	git commit --reuse-message=HEAD --no-edit

.PHONY: www
www:
	cd www/al-susi.com && yarn dev
