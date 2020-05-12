### Makefile for zetta-proto

CURDIR := $(shell pwd)

export PATH := $(CURDIR)/bin/:$(PATH)

all: go

go:
	# Standalone GOPATH
	./generate_go.sh
	GO111MODULE=on go build ./pkg/...

clean:
	rm -rf ./pkg/*

.PHONY: all
