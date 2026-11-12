output "clients_id" {
  description = "Map of id values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.id }
}
output "clients_addons" {
  description = "Map of addons values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => one(v.addons) }
  sensitive   = true
}
output "clients_allowed_clients" {
  description = "Map of allowed_clients values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.allowed_clients }
}
output "clients_allowed_logout_urls" {
  description = "Map of allowed_logout_urls values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.allowed_logout_urls }
}
output "clients_allowed_origins" {
  description = "Map of allowed_origins values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.allowed_origins }
}
output "clients_anonymous_sessions" {
  description = "Map of anonymous_sessions values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => one(v.anonymous_sessions) }
}
output "clients_app_type" {
  description = "Map of app_type values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.app_type }
}
output "clients_async_approval_notification_channels" {
  description = "Map of async_approval_notification_channels values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.async_approval_notification_channels }
}
output "clients_b2b_integration_configuration" {
  description = "Map of b2b_integration_configuration values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => one(v.b2b_integration_configuration) }
}
output "clients_callbacks" {
  description = "Map of callbacks values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.callbacks }
}
output "clients_client_aliases" {
  description = "Map of client_aliases values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.client_aliases }
}
output "clients_client_id" {
  description = "Map of client_id values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.client_id }
}
output "clients_client_metadata" {
  description = "Map of client_metadata values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.client_metadata }
}
output "clients_compliance_level" {
  description = "Map of compliance_level values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.compliance_level }
}
output "clients_cross_origin_auth" {
  description = "Map of cross_origin_auth values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.cross_origin_auth }
}
output "clients_cross_origin_loc" {
  description = "Map of cross_origin_loc values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.cross_origin_loc }
}
output "clients_custom_login_page" {
  description = "Map of custom_login_page values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.custom_login_page }
}
output "clients_custom_login_page_on" {
  description = "Map of custom_login_page_on values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.custom_login_page_on }
}
output "clients_default_organization" {
  description = "Map of default_organization values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => one(v.default_organization) }
}
output "clients_description" {
  description = "Map of description values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.description }
}
output "clients_encryption_key" {
  description = "Map of encryption_key values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.encryption_key }
}
output "clients_express_configuration" {
  description = "Map of express_configuration values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => one(v.express_configuration) }
}
output "clients_external_client_id" {
  description = "Map of external_client_id values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.external_client_id }
}
output "clients_external_metadata_created_by" {
  description = "Map of external_metadata_created_by values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.external_metadata_created_by }
}
output "clients_external_metadata_type" {
  description = "Map of external_metadata_type values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.external_metadata_type }
}
output "clients_fedcm_login" {
  description = "Map of fedcm_login values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => one(v.fedcm_login) }
}
output "clients_form_template" {
  description = "Map of form_template values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.form_template }
}
output "clients_grant_types" {
  description = "Map of grant_types values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.grant_types }
}
output "clients_identity_assertion_authorization_grant" {
  description = "Map of identity_assertion_authorization_grant values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => one(v.identity_assertion_authorization_grant) }
}
output "clients_initiate_login_uri" {
  description = "Map of initiate_login_uri values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.initiate_login_uri }
}
output "clients_is_first_party" {
  description = "Map of is_first_party values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.is_first_party }
}
output "clients_is_token_endpoint_ip_header_trusted" {
  description = "Map of is_token_endpoint_ip_header_trusted values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.is_token_endpoint_ip_header_trusted }
}
output "clients_jwks_uri" {
  description = "Map of jwks_uri values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.jwks_uri }
}
output "clients_jwt_configuration" {
  description = "Map of jwt_configuration values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => one(v.jwt_configuration) }
}
output "clients_logo_uri" {
  description = "Map of logo_uri values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.logo_uri }
}
output "clients_mobile" {
  description = "Map of mobile values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => one(v.mobile) }
}
output "clients_my_organization_configuration" {
  description = "Map of my_organization_configuration values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => one(v.my_organization_configuration) }
}
output "clients_name" {
  description = "Map of name values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.name }
}
output "clients_native_social_login" {
  description = "Map of native_social_login values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => one(v.native_social_login) }
}
output "clients_oidc_backchannel_logout_urls" {
  description = "Map of oidc_backchannel_logout_urls values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.oidc_backchannel_logout_urls }
}
output "clients_oidc_conformant" {
  description = "Map of oidc_conformant values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.oidc_conformant }
}
output "clients_oidc_logout" {
  description = "Map of oidc_logout values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => one(v.oidc_logout) }
}
output "clients_organization_discovery_methods" {
  description = "Map of organization_discovery_methods values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.organization_discovery_methods }
}
output "clients_organization_require_behavior" {
  description = "Map of organization_require_behavior values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.organization_require_behavior }
}
output "clients_organization_usage" {
  description = "Map of organization_usage values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.organization_usage }
}
output "clients_redirection_policy" {
  description = "Map of redirection_policy values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.redirection_policy }
}
output "clients_refresh_token" {
  description = "Map of refresh_token values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => one(v.refresh_token) }
}
output "clients_require_proof_of_possession" {
  description = "Map of require_proof_of_possession values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.require_proof_of_possession }
}
output "clients_require_pushed_authorization_requests" {
  description = "Map of require_pushed_authorization_requests values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.require_pushed_authorization_requests }
}
output "clients_resource_server_identifier" {
  description = "Map of resource_server_identifier values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.resource_server_identifier }
}
output "clients_session_transfer" {
  description = "Map of session_transfer values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => one(v.session_transfer) }
}
output "clients_signing_keys" {
  description = "Map of signing_keys values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.signing_keys }
  sensitive   = true
}
output "clients_skip_non_verifiable_callback_uri_confirmation_prompt" {
  description = "Map of skip_non_verifiable_callback_uri_confirmation_prompt values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.skip_non_verifiable_callback_uri_confirmation_prompt }
}
output "clients_sso" {
  description = "Map of sso values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.sso }
}
output "clients_sso_disabled" {
  description = "Map of sso_disabled values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.sso_disabled }
}
output "clients_third_party_security_mode" {
  description = "Map of third_party_security_mode values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.third_party_security_mode }
}
output "clients_token_exchange" {
  description = "Map of token_exchange values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => one(v.token_exchange) }
}
output "clients_token_quota" {
  description = "Map of token_quota values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => one(v.token_quota) }
}
output "clients_web_origins" {
  description = "Map of web_origins values across all clients, keyed the same as var.clients"
  value       = { for k, v in auth0_client.clients : k => v.web_origins }
}

