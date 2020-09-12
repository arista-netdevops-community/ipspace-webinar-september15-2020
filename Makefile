# Makefile for ipSpace Webinar

CONTAINER ?= avdteam/base:3.6
HOME_DIR = $(PWD)

.PHONY: help
help: ## Display help message (*: main entry points / []: part of an entry point)
	@grep -E '^[0-9a-zA-Z_-]+\.*[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

#######################
#   Summary Commands  #
#######################

.PHONY: dc-build
dc-build: dc1-build dc2-build ## Build configuration for all DCs

.PHONY: dc-deploy-eapi
dc-deploy-eapi: dc1-deploy-eapi dc2-deploy-eapi ## Deploy configuration using eAPI protocol for both DCs

.PHONY: dc-deploy-cvp
dc-deploy-cvp: dc1-deploy-cvp dc2-deploy-cvp ## Deploy configuration using CVP with REST APIs for both DCs

.PHONY: dc-fabric-backup
dc-fabric-backup: dc1-fabric-backup dc2-fabric-backup ## Backup Fabric

.PHONY: dc-validate-state
dc-validate-state: dc1-validate-state dc2-validate-state ## Audit Fabric State

.PHONY: dc-reset-cvp
dc-reset-cvp: dc1-reset-cvp dc2-reset-cvp ## DANGEROUS ! Reset CVP provisioning and all devices to ZTP for all DCs

######################################
#		Demo configuration			 #
######################################

.PHONY: install
install: ## Install Ansible collections
	git clone https://github.com/aristanetworks/ansible-avd.git ../
	git clone https://github.com/aristanetworks/ansible-cvp.git ../

.PHONY: shell
shell: ## Start docker to get a preconfigured shell
	docker pull $(CONTAINER) && \
	docker run --rm -it \
		-v $(HOME_DIR)/:/projects \
		-v /etc/hosts:/etc/hosts $(CONTAINER)

#################
#   DC1 Fabric  #
#################

.PHONY: dc1-build
dc1-build: ## Run ansible playbook to build EVPN Fabric configuration with DC1 and CV
	ansible-playbook playbooks/dc1-fabric-deploy-cvp.yml --tags build -i inventories/DC1/inventory.yml

.PHONY: dc1-deploy-eapi
dc1-deploy-eapi: ## Run ansible playbook to deploy EVPN Fabric using EOS eAPI.
	ansible-playbook playbooks/dc1-fabric-deploy-eapi.yml --tags provision -i inventories/DC1/inventory.yml

.PHONY: dc1-deploy-cvp
dc1-deploy-cvp: ## Run ansible playbook to deploy EVPN Fabric using CVP.
	ansible-playbook playbooks/dc1-fabric-deploy-cvp.yml --tags provision -i inventories/DC1/inventory.yml

.PHONY: dc1-fabric-backup
dc1-fabric-backup: ## Run ansible playbook to bacup Fabric.
	ansible-playbook playbooks/dc1-fabric-backup.yml -i inventories/DC1/inventory.yml

.PHONY: dc1-validate-state
dc1-validate-state: ## Run ansible playbook to validate EVPN Fabric State.
	ansible-playbook playbooks/dc1-fabric-validate-state.yml -i inventories/DC1/inventory.yml

.PHONY: dc1-reset-cvp
dc1-reset-cvp: ## DANGEROUS ! Reset CVP provisioning and all devices to ZTP for DC1
	ansible-playbook playbooks/dc1-fabric-reset-cvp.yml -i inventories/DC1/inventory.yml


#################
#   DC2 Fabric  #
#################

.PHONY: dc2-build
dc2-build: ## Run ansible playbook to build EVPN Fabric configuration with dc2 and CV
	ansible-playbook playbooks/dc2-fabric-deploy-cvp.yml --tags build -i inventories/DC2/inventory.yml

.PHONY: dc2-deploy-eapi
dc2-deploy-eapi: ## Run ansible playbook to deploy EVPN Fabric using EOS eAPI.
	ansible-playbook playbooks/dc2-fabric-deploy-eapi.yml --tags provision -i inventories/DC2/inventory.yml

.PHONY: dc2-deploy-cvp
dc2-deploy-cvp: ## Run ansible playbook to deploy EVPN Fabric using CVP.
	ansible-playbook playbooks/dc2-fabric-deploy-cvp.yml --tags provision -i inventories/DC2/inventory.yml

.PHONY: dc2-fabric-backup
dc2-fabric-backup: ## Run ansible playbook to bacup Fabric.
	ansible-playbook playbooks/dc2-fabric-backup.yml -i inventories/DC2/inventory.yml

.PHONY: dc2-validate-state
dc2-validate-state: ## Run ansible playbook to validate EVPN Fabric State.
	ansible-playbook playbooks/dc2-fabric-validate-state.yml -i inventories/DC2/inventory.yml

.PHONY: dc2-reset-cvp
dc2-reset-cvp: ## ## DANGEROUS ! Reset CVP provisioning and all devices to ZTP for DC2
	ansible-playbook playbooks/dc2-fabric-reset-cvp.yml -i inventories/DC2/inventory.yml


#################
#   CI Command  #
#################

.PHONY: ci-build
ci-build: ## Run ansible playbook during Github Action to build configurations
	ansible-playbook playbooks/github-fabric-build.yml -i inventories/DC1/inventory.yml
	ansible-playbook playbooks/github-fabric-build.yml -i inventories/DC2/inventory.yml

.PHONY: ci-install
ci-install:
	git clone https://github.com/aristanetworks/ansible-avd.git
	git clone https://github.com/aristanetworks/ansible-cvp.git