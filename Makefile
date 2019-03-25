help:
	@echo "lint       Static source code analysis"
	@echo "test       Integration tests"


lint:
	@# Lint all Terraform files
	@echo "################################################################################"
	@echo "# Terraform fmt"
	@echo "################################################################################"
	@if docker run  --rm -v "$(PWD):/t:ro" hashicorp/terraform:light \
		fmt -check=true -diff=true -write=false -list=true /t; then \
		echo "OK"; \
	else \
		echo "Failed"; \
		exit 1; \
	fi;
	@echo


test:
	@# Run apply and destroy
	@echo "################################################################################"
	@echo "# Terraform apply & destroy"
	@echo "################################################################################"
	@if docker run --rm -v "$(PWD):/t" -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e TF_IN_AUTOMATION -w /t/examples/simple hashicorp/terraform:light \
		init; then \
		echo "Init OK"; \
	else \
		echo "Init Failed"; \
		exit 1; \
		fi;
	@if docker run --rm -v "$(PWD):/t" -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e TF_IN_AUTOMATION -w /t/examples/simple hashicorp/terraform:light \
		apply -auto-approve; then \
		echo "Apply OK"; \
	else \
		echo "Apply Failed"; \
		exit 1; \
	fi;
	@if docker run --rm -v "$(PWD):/t" -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e TF_IN_AUTOMATION -w /t/examples/simple hashicorp/terraform:light \
		destroy -auto-approve; then \
		echo "Destroy OK"; \
	else \
		echo "Destroy Failed"; \
		exit 1; \
	fi;
	@echo
