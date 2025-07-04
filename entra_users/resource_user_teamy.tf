resource "azuread_user" "teamy" {
  user_principal_name   = "teamy@raddest.ca"
  display_name          = "Teamy"
  account_enabled       = true
  password              = random_password.teamy.result
  force_password_change = false
}

resource "random_password" "teamy" {
  length  = 64
  special = true
}

output "teamy" {
    sensitive = true
    value = {
        user_principal_name = azuread_user.teamy.user_principal_name
        password = random_password.teamy.result
    }
}