# label.tf

resource "random_string" "suffix" {
  length  = 4
  upper   = false
  lower   = true
  number  = false
  special = false
}

### frigga naming rule
locals {
  name         = join("-", compact(list(var.name, var.stack, var.detail, random_string.suffix.result)))
  cluster-name = local.name
  cluster-id   = local.name
}
