# PATH := ./node_modules/.bin:$PATH
SHELL := /bin/bash

.PHONY: build

all:

build: clean
	node build/yaml.js; \
	./node_modules/.bin/vue-cli-service build

clean:
	rm -rf dist

develop:
	node build/yaml.js; \
	./node_modules/.bin/vue-cli-service serve --open
