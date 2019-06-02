include .env
export $(shell sed 's/=.*//' .env)

# terraform init:
# 	cd terraform && terrafrom init && cd -

# terraform plan:
# 	cd terraform && terraform plan && cd -

# terraform apply:
# 	cd terraform && terraform apply && cd -

docker-build-packer:
	cd packer && \
	docker build -t sandjaie\packer . 

packer-build:
	cd packer && \
	packer build template-ubuntu.json && \
	cd -
