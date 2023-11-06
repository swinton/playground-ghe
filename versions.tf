# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.41.0"
    }
  }

  required_version = "~> 1.0.5"
}
