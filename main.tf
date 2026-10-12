resource "tfe_team_notification_configuration" "team_notification_configurations" {
  for_each = var.team_notification_configurations

  destination_type = each.value.destination_type
  name             = each.value.name
  team_id          = each.value.team_id
  email_addresses  = each.value.email_addresses
  email_user_ids   = each.value.email_user_ids
  enabled          = each.value.enabled
  token            = each.value.token
  token_wo         = each.value.token_wo
  token_wo_version = each.value.token_wo_version
  triggers         = each.value.triggers
  url              = each.value.url
}

