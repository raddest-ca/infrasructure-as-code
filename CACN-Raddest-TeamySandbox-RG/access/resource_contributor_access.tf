data "azuread_users" "contributor_members" {
  user_principal_names = [
    "teamy@raddest.ca"
  ]
}
data "azuread_users" "contributor_owners" {
  user_principal_names = [
    "teamy@raddest.ca"
  ]
}
resource "azuread_group" "contributor" {
  display_name     = "CACN-Raddest-TeamySandbox-RG Contributor"
  mail_enabled     = false
  security_enabled = true
  members          = data.azuread_users.contributor_members.object_ids
  owners           = data.azuread_users.contributor_owners.object_ids
}
resource "azurerm_role_assignment" "contributor" {
  scope                = data.azurerm_resource_group.main.id
  role_definition_name = "Contributor"
  principal_id         = azuread_group.contributor.object_id
}
