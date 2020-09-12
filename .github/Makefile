CONTAINER ?= avdteam/base:3.6
HOME_DIR = $(PWD)

.PHONY: shell
shell: ## Start docker to get a preconfigured shell
	docker pull $(CONTAINER) &&	docker run --rm -it -v $(HOME_DIR):/projects -v /etc/hosts:/etc/hosts  $(CONTAINER)
