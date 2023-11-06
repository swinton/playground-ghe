## Usage

### Grab `direnv`
> https://direnv.net/

### Create .envrc from .envrc.example
```shell
cp .envrc.example .envrc  # and make sure to populate the variables in your .envrc
```

### Create orgs
```shell
terraform init
terraform plan -target=github_enterprise_organization.org
terraform apply -target=github_enterprise_organization.org
```

### Create repos
Modify the `GITHUB_OWNER` value in your `.envrc`, this is will be the owner of the repos being created next...

```shell
terraform init
terraform plan -target=github_repository.repo
terraform apply -target=github_repository.repo
```
