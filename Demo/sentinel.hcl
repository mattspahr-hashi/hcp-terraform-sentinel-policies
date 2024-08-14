module "tfplan-functions" {
  source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "./aws-functions/aws-functions.sentinel"
}

policy "enforce-mandatory-tags"{
  source = "./enforce-mandatory-tags.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "limit-cost-by-workspace-name"{
  source = "./limit-cost-by-workspace-name.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "validate-providers-from-desired-regions"{
  source = "./validate-providers-from-desired-regions.sentinel"
  enforcement_level = "soft-mandatory"
}