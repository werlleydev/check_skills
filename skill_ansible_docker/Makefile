.PHONY: setup
setup: configure-server deploy-prod
	@echo "Setup server..."

.PHONY: configure-server
configure-server:
	@echo "Configuring server..."
	@ansible-playbook playbook.yml 

.PHONY: deploy-prod
deploy-prod:
	@echo "Deploy services..."
	@ansible-playbook deploy.yml 
