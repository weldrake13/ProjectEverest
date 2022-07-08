terraform {
  cloud {
    organization = "wsp-dev-poc"
    workspaces {
      tags = ["everest"]
    }
  }
}

resource "null_resource" "example1" {
  provisioner "local-exec" {
    command = "echo 'hello'"
  }
}

locals {
  current_time_value = {
    time = timestamp()
  }
  datajson = jsonencode(local.current_time_value)
}

resource "vault_generic_secret" "secret1" {
  path      = format("secrets/%s/some_secret". var.environment)
  data_json = local.datajson
}