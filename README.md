## Usage

### Create .envrc from .envrc.example
```shell
cp .envrc.example .envrc
```

### Create orgs
```shell
terraform init
terraform plan -target=github_enterprise_organization.org
terraform apply -target=github_enterprise_organization.org
```

### Create repos
```shell
terraform init
terraform plan -target=github_repository.repo
terraform apply -target=github_repository.repo
```
