.PHONY: dist test build
ENV_VERSION = 1.0.0
ENV_HUGO_BASE_URL ?= http://spf13.com/
ENV_HUGO_PORT ?= 51313
ENV_HUGO_DESTINATION_PATH ?= public
ENV_HUGO_GITHUB_PAGES ?= docs
ENV_HUGO_GITHUB_BASE_URL ?= https://tailwoodencat.github.io/hugo-loveit-theme/

utils:
	@echo "install hugo see documentation: https://gohugo.io/getting-started/installing/"
	npm install generate-manifest -g
	npm install uglifyjs-folder -g

printInfo:
	@echo "=> Script Info version $(ENV_VERSION)"
	@echo ""
	@echo "theme use LoveIt https://github.com/dillonzq/LoveIt"
	@echo ""

init:
	@echo "=> this project use hugo more info: https://github.com/gohugoio/hugo"
	@echo "-> if not install just see https://gohugo.io/getting-started/"
	hugo version
	# or use git clone --recurse-submodules
	git submodule init
	git submodule update

debug:
	hugo serve --disableFastRender --buildDrafts --port ${ENV_HUGO_PORT}

build:
	hugo

cleanDestinationPath:
	@if [ -d ${ENV_HUGO_DESTINATION_PATH} ]; \
	then rm -rf ${ENV_HUGO_DESTINATION_PATH} && echo "~> cleaned ${ENV_HUGO_DESTINATION_PATH}"; \
	else echo "~> has cleaned ${ENV_HUGO_DESTINATION_PATH}"; \
	fi

destination: cleanDestinationPath
	hugo -d ${ENV_HUGO_DESTINATION_PATH} --baseUrl ${ENV_HUGO_BASE_URL} --gc
	cp static/favicon.ico ${ENV_HUGO_DESTINATION_PATH}
	cd public && generate-manifest --url=${ENV_HUGO_BASE_URL}

uglifyjs:
	uglifyjs-folder dev/js/ -o assets/js/index.min.js

cleanGithubPages:
	@if [ -d ${ENV_HUGO_GITHUB_PAGES} ]; \
	then rm -rf ${ENV_HUGO_GITHUB_PAGES} && echo "~> cleaned ${ENV_HUGO_GITHUB_PAGES}"; \
	else echo "~> has cleaned ${ENV_HUGO_GITHUB_PAGES}"; \
	fi

githubPages: cleanGithubPages
	hugo -d ${ENV_HUGO_GITHUB_PAGES} --baseUrl ${ENV_HUGO_GITHUB_BASE_URL}
	cp static/favicon.ico ${ENV_HUGO_GITHUB_PAGES}

help: printInfo
	@echo "Help of task"
	@echo "make init           ~> init check"
	@echo "make utils          ~> install utils of this"
	@echo "make debug          ~> run at http://0.0.0.0:${ENV_HUGO_PORT}/"
	@echo "make destination    ~> build hugo destination at path: ${ENV_HUGO_DESTINATION_PATH}"
	@echo ""
	@echo "=> new file as"
	@echo "rake posts title='article name'"
	@echo "=> new assets for image as:"
	@echo "rake imgNewAssets"