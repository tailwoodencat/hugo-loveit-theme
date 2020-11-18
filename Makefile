.PHONY: dist test build
ENV_VERSION = 1.0.0
ENV_HUGO_BASE_URL ?= http://spf13.com/
ENV_HUGO_PORT ?= 51313

printInfo:
	@echo "=> Script Info version $(ENV_VERSION)"
	@echo ""
	@echo "theme use LoveIt https://github.com/dillonzq/LoveIt"
	@echo ""

init:
	@echo "=> this project use hugo more info: https://github.com/gohugoio/hugo"
	@echo "-> if not install just see https://gohugo.io/getting-started/"
	hugo version

debug:
	hugo serve --disableFastRender --port ${ENV_HUGO_PORT}

build:
	hugo

uglifyjs:
	npm install uglifyjs-folder -g
	uglifyjs-folder dev/js/ -o assets/js/index.min.js

help: printInfo
	@echo "Help of task"
	@echo "make init ~> init check"
	@echo "make debug ~> run at http://0.0.0.0:${ENV_HUGO_PORT}/"
	@echo ""
	@echo "=> new file as"
	@echo "rake post title='article name'"
	@echo "=> new assets for image as:"
	@echo "rake imgNewAssets"