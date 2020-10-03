format:
	terraform12 format
	
init:
	terraform12 init 


plan:
	terraform12 plan -out demo.tfplan

apply:
	time terraform12 apply "demo.tfplan"

destroy:
	terraform12 destroy -auto-approve

clean:
	rm -rf .terraform 
	rm -f demo.tfplan
	rm -f terraform.tfstate
	rm -f terraform.tfstate.backup 
