CONTAINER ?= avdteam/base:3.6
HOME_DIR = /Users/tgrimonet/Projects/arista-ansible/ipspace-webinar-september15-2020

.PHONY: shell
shell: ## Start docker to get a preconfigured shell
	docker pull  &&	docker run --rm -it -v /:/projects -v /etc/hosts:/etc/hosts 
