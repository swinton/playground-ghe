# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

provider "github" {}

data "github_enterprise" "snyk" {
  slug = "synk"
}
