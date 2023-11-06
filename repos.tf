resource "github_repository" "repo" {
  for_each = {
    for repo in csvdecode(file("repos.csv")) :
    repo.name => repo
  }

  name = each.value.name
  description = "my awesome repo is awesome"
  visibility = "internal"
  has_issues = false
  has_projects = false
  has_wiki = false
  auto_init = true
  gitignore_template = "Node"
  license_template = "mit"
}
