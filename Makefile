.DEFAULT_GOAL := up

up: create helm

helm:
	@helmfile apply

create:
	@kind create cluster --config ./kind-config.yml

destroy:
	@kind delete cluster

passwd:
	@echo "Jenkins Password:"
	@kubectl get secret -n jenkins jenkins -ojson | jq -r '.data."jenkins-admin-password"' | base64 -d

	@echo -e "\nGitea:"
	@echo "r8sA8CPHD9!bt6d"

	@echo "ArgoCD Password: "
	@kubectl get secret -n argo argocd-initial-admin-secret -ojson | jq -r ".data.password" | base64 -d