export OSTYPE = $(shell uname)

install: ## provision vm
	vagrant up

tunnel-01: ## tunel vm node01
	vagrant ssh node01

tunnel-02: ## tunel vm node01
	vagrant ssh node02

uninstall: ## destroy vm
	vagrant destroy --parallel

help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	| sort \
	| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
.DEFAULT_GOAL := help
