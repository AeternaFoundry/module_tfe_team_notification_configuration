variable "team_notification_configurations" {
  description = <<EOT
Map of team_notification_configurations, attributes below
Required:
    - destination_type
    - name
    - team_id
Optional:
    - email_addresses
    - email_user_ids
    - enabled
    - token
    - token_wo
    - token_wo_version
    - triggers
    - url
EOT

  type = map(object({
    destination_type = string
    name             = string
    team_id          = string
    email_addresses  = optional(set(string))
    email_user_ids   = optional(set(string))
    enabled          = optional(bool)
    token            = optional(string)
    token_wo         = optional(string)
    token_wo_version = optional(number)
    triggers         = optional(set(string))
    url              = optional(string)
  }))
}

