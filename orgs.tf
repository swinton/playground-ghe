resource "github_enterprise_organization" "org" {
  for_each = {
    for org in csvdecode(file("orgs.csv")) :
    org.name => org
  }

  enterprise_id = data.github_enterprise.snyk.id
  name          = each.value.name
  billing_email = "swinton@snyk.io"
  admin_logins  = [
    "swinton", "ghe", "foo", "bar", "baz"
  ]
}
