all:

build-front:
	npm run build

build:
	go build -o dist/surfing main.go

develop:
	./node_modules/.bin/vue-cli-service serve --open

buildss:
	npm run build

sass:
	./node_modules/.bin/sass --no-source-map src/assets/scss/2048.scss src/assets/css/2048.css
