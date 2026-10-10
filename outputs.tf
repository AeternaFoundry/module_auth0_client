output "clients_id" {
  description = "Map of id values across all clients, keyed the same as var.clients except keys with no id are omitted"
  value       = { for k, v in auth0_client.clients : k => v.id if v.id != null && length(v.id) > 0 }
}
output "clients_addons" {
  description = "Map of addons values across all clients, keyed the same as var.clients except keys with no addons are omitted"
  value       = { for k, v in auth0_client.clients : k => one(v.addons) if v.addons != null && length(v.addons) > 0 }
  sensitive   = true
}
output "clients_allowed_clients" {
  description = "Map of allowed_clients values across all clients, keyed the same as var.clients except keys with no allowed_clients are omitted"
  value       = { for k, v in auth0_client.clients : k => v.allowed_clients if v.allowed_clients != null && length(v.allowed_clients) > 0 }
}
output "clients_allowed_logout_urls" {
  description = "Map of allowed_logout_urls values across all clients, keyed the same as var.clients except keys with no allowed_logout_urls are omitted"
  value       = { for k, v in auth0_client.clients : k => v.allowed_logout_urls if v.allowed_logout_urls != null && length(v.allowed_logout_urls) > 0 }
}
output "clients_allowed_origins" {
  description = "Map of allowed_origins values across all clients, keyed the same as var.clients except keys with no allowed_origins are omitted"
  value       = { for k, v in auth0_client.clients : k => v.allowed_origins if v.allowed_origins != null && length(v.allowed_origins) > 0 }
}
output "clients_anonymous_sessions" {
  description = "Map of anonymous_sessions values across all clients, keyed the same as var.clients except keys with no anonymous_sessions are omitted"
  value       = { for k, v in auth0_client.clients : k => one(v.anonymous_sessions) if v.anonymous_sessions != null && length(v.anonymous_sessions) > 0 }
}
output "clients_app_type" {
  description = "Map of app_type values across all clients, keyed the same as var.clients except keys with no app_type are omitted"
  value       = { for k, v in auth0_client.clients : k => v.app_type if v.app_type != null && length(v.app_type) > 0 }
}
output "clients_async_approval_notification_channels" {
  description = "Map of async_approval_notification_channels values across all clients, keyed the same as var.clients except keys with no async_approval_notification_channels are omitted"
  value       = { for k, v in auth0_client.clients : k => v.async_approval_notification_channels if v.async_approval_notification_channels != null && length(v.async_approval_notification_channels) > 0 }
}
output "clients_b2b_integration_configuration" {
  description = "Map of b2b_integration_configuration values across all clients, keyed the same as var.clients except keys with no b2b_integration_configuration are omitted"
  value       = { for k, v in auth0_client.clients : k => one(v.b2b_integration_configuration) if v.b2b_integration_configuration != null && length(v.b2b_integration_configuration) > 0 }
}
output "clients_callbacks" {
  description = "Map of callbacks values across all clients, keyed the same as var.clients except keys with no callbacks are omitted"
  value       = { for k, v in auth0_client.clients : k => v.callbacks if v.callbacks != null && length(v.callbacks) > 0 }
}
output "clients_client_aliases" {
  description = "Map of client_aliases values across all clients, keyed the same as var.clients except keys with no client_aliases are omitted"
  value       = { for k, v in auth0_client.clients : k => v.client_aliases if v.client_aliases != null && length(v.client_aliases) > 0 }
}
output "clients_client_id" {
  description = "Map of client_id values across all clients, keyed the same as var.clients except keys with no client_id are omitted"
  value       = { for k, v in auth0_client.clients : k => v.client_id if v.client_id != null && length(v.client_id) > 0 }
}
output "clients_client_metadata" {
  description = "Map of client_metadata values across all clients, keyed the same as var.clients except keys with no client_metadata are omitted"
  value       = { for k, v in auth0_client.clients : k => v.client_metadata if v.client_metadata != null && length(v.client_metadata) > 0 }
}
output "clients_compliance_level" {
  description = "Map of compliance_level values across all clients, keyed the same as var.clients except keys with no compliance_level are omitted"
  value       = { for k, v in auth0_client.clients : k => v.compliance_level if v.compliance_level != null && length(v.compliance_level) > 0 }
}
output "clients_cross_origin_auth" {
  description = "Map of cross_origin_auth values across all clients, keyed the same as var.clients except keys with no cross_origin_auth are omitted"
  value       = { for k, v in auth0_client.clients : k => v.cross_origin_auth if v.cross_origin_auth != null }
}
output "clients_cross_origin_loc" {
  description = "Map of cross_origin_loc values across all clients, keyed the same as var.clients except keys with no cross_origin_loc are omitted"
  value       = { for k, v in auth0_client.clients : k => v.cross_origin_loc if v.cross_origin_loc != null && length(v.cross_origin_loc) > 0 }
}
output "clients_custom_login_page" {
  description = "Map of custom_login_page values across all clients, keyed the same as var.clients except keys with no custom_login_page are omitted"
  value       = { for k, v in auth0_client.clients : k => v.custom_login_page if v.custom_login_page != null && length(v.custom_login_page) > 0 }
}
output "clients_custom_login_page_on" {
  description = "Map of custom_login_page_on values across all clients, keyed the same as var.clients except keys with no custom_login_page_on are omitted"
  value       = { for k, v in auth0_client.clients : k => v.custom_login_page_on if v.custom_login_page_on != null }
}
output "clients_default_organization" {
  description = "Map of default_organization values across all clients, keyed the same as var.clients except keys with no default_organization are omitted"
  value       = { for k, v in auth0_client.clients : k => one(v.default_organization) if v.default_organization != null && length(v.default_organization) > 0 }
}
output "clients_description" {
  description = "Map of description values across all clients, keyed the same as var.clients except keys with no description are omitted"
  value       = { for k, v in auth0_client.clients : k => v.description if v.description != null && length(v.description) > 0 }
}
output "clients_encryption_key" {
  description = "Map of encryption_key values across all clients, keyed the same as var.clients except keys with no encryption_key are omitted"
  value       = { for k, v in auth0_client.clients : k => v.encryption_key if v.encryption_key != null && length(v.encryption_key) > 0 }
}
output "clients_express_configuration" {
  description = "Map of express_configuration values across all clients, keyed the same as var.clients except keys with no express_configuration are omitted"
  value       = { for k, v in auth0_client.clients : k => one(v.express_configuration) if v.express_configuration != null && length(v.express_configuration) > 0 }
}
output "clients_external_client_id" {
  description = "Map of external_client_id values across all clients, keyed the same as var.clients except keys with no external_client_id are omitted"
  value       = { for k, v in auth0_client.clients : k => v.external_client_id if v.external_client_id != null && length(v.external_client_id) > 0 }
}
output "clients_external_metadata_created_by" {
  description = "Map of external_metadata_created_by values across all clients, keyed the same as var.clients except keys with no external_metadata_created_by are omitted"
  value       = { for k, v in auth0_client.clients : k => v.external_metadata_created_by if v.external_metadata_created_by != null && length(v.external_metadata_created_by) > 0 }
}
output "clients_external_metadata_type" {
  description = "Map of external_metadata_type values across all clients, keyed the same as var.clients except keys with no external_metadata_type are omitted"
  value       = { for k, v in auth0_client.clients : k => v.external_metadata_type if v.external_metadata_type != null && length(v.external_metadata_type) > 0 }
}
output "clients_fedcm_login" {
  description = "Map of fedcm_login values across all clients, keyed the same as var.clients except keys with no fedcm_login are omitted"
  value       = { for k, v in auth0_client.clients : k => one(v.fedcm_login) if v.fedcm_login != null && length(v.fedcm_login) > 0 }
}
output "clients_form_template" {
  description = "Map of form_template values across all clients, keyed the same as var.clients except keys with no form_template are omitted"
  value       = { for k, v in auth0_client.clients : k => v.form_template if v.form_template != null && length(v.form_template) > 0 }
}
output "clients_grant_types" {
  description = "Map of grant_types values across all clients, keyed the same as var.clients except keys with no grant_types are omitted"
  value       = { for k, v in auth0_client.clients : k => v.grant_types if v.grant_types != null && length(v.grant_types) > 0 }
}
output "clients_identity_assertion_authorization_grant" {
  description = "Map of identity_assertion_authorization_grant values across all clients, keyed the same as var.clients except keys with no identity_assertion_authorization_grant are omitted"
  value       = { for k, v in auth0_client.clients : k => one(v.identity_assertion_authorization_grant) if v.identity_assertion_authorization_grant != null && length(v.identity_assertion_authorization_grant) > 0 }
}
output "clients_initiate_login_uri" {
  description = "Map of initiate_login_uri values across all clients, keyed the same as var.clients except keys with no initiate_login_uri are omitted"
  value       = { for k, v in auth0_client.clients : k => v.initiate_login_uri if v.initiate_login_uri != null && length(v.initiate_login_uri) > 0 }
}
output "clients_is_first_party" {
  description = "Map of is_first_party values across all clients, keyed the same as var.clients except keys with no is_first_party are omitted"
  value       = { for k, v in auth0_client.clients : k => v.is_first_party if v.is_first_party != null }
}
output "clients_is_token_endpoint_ip_header_trusted" {
  description = "Map of is_token_endpoint_ip_header_trusted values across all clients, keyed the same as var.clients except keys with no is_token_endpoint_ip_header_trusted are omitted"
  value       = { for k, v in auth0_client.clients : k => v.is_token_endpoint_ip_header_trusted if v.is_token_endpoint_ip_header_trusted != null }
}
output "clients_jwks_uri" {
  description = "Map of jwks_uri values across all clients, keyed the same as var.clients except keys with no jwks_uri are omitted"
  value       = { for k, v in auth0_client.clients : k => v.jwks_uri if v.jwks_uri != null && length(v.jwks_uri) > 0 }
}
output "clients_jwt_configuration" {
  description = "Map of jwt_configuration values across all clients, keyed the same as var.clients except keys with no jwt_configuration are omitted"
  value       = { for k, v in auth0_client.clients : k => one(v.jwt_configuration) if v.jwt_configuration != null && length(v.jwt_configuration) > 0 }
}
output "clients_logo_uri" {
  description = "Map of logo_uri values across all clients, keyed the same as var.clients except keys with no logo_uri are omitted"
  value       = { for k, v in auth0_client.clients : k => v.logo_uri if v.logo_uri != null && length(v.logo_uri) > 0 }
}
output "clients_mobile" {
  description = "Map of mobile values across all clients, keyed the same as var.clients except keys with no mobile are omitted"
  value       = { for k, v in auth0_client.clients : k => one(v.mobile) if v.mobile != null && length(v.mobile) > 0 }
}
output "clients_my_organization_configuration" {
  description = "Map of my_organization_configuration values across all clients, keyed the same as var.clients except keys with no my_organization_configuration are omitted"
  value       = { for k, v in auth0_client.clients : k => one(v.my_organization_configuration) if v.my_organization_configuration != null && length(v.my_organization_configuration) > 0 }
}
output "clients_name" {
  description = "Map of name values across all clients, keyed the same as var.clients except keys with no name are omitted"
  value       = { for k, v in auth0_client.clients : k => v.name if v.name != null && length(v.name) > 0 }
}
output "clients_native_social_login" {
  description = "Map of native_social_login values across all clients, keyed the same as var.clients except keys with no native_social_login are omitted"
  value       = { for k, v in auth0_client.clients : k => one(v.native_social_login) if v.native_social_login != null && length(v.native_social_login) > 0 }
}
output "clients_oidc_backchannel_logout_urls" {
  description = "Map of oidc_backchannel_logout_urls values across all clients, keyed the same as var.clients except keys with no oidc_backchannel_logout_urls are omitted"
  value       = { for k, v in auth0_client.clients : k => v.oidc_backchannel_logout_urls if v.oidc_backchannel_logout_urls != null && length(v.oidc_backchannel_logout_urls) > 0 }
}
output "clients_oidc_conformant" {
  description = "Map of oidc_conformant values across all clients, keyed the same as var.clients except keys with no oidc_conformant are omitted"
  value       = { for k, v in auth0_client.clients : k => v.oidc_conformant if v.oidc_conformant != null }
}
output "clients_oidc_logout" {
  description = "Map of oidc_logout values across all clients, keyed the same as var.clients except keys with no oidc_logout are omitted"
  value       = { for k, v in auth0_client.clients : k => one(v.oidc_logout) if v.oidc_logout != null && length(v.oidc_logout) > 0 }
}
output "clients_organization_discovery_methods" {
  description = "Map of organization_discovery_methods values across all clients, keyed the same as var.clients except keys with no organization_discovery_methods are omitted"
  value       = { for k, v in auth0_client.clients : k => v.organization_discovery_methods if v.organization_discovery_methods != null && length(v.organization_discovery_methods) > 0 }
}
output "clients_organization_require_behavior" {
  description = "Map of organization_require_behavior values across all clients, keyed the same as var.clients except keys with no organization_require_behavior are omitted"
  value       = { for k, v in auth0_client.clients : k => v.organization_require_behavior if v.organization_require_behavior != null && length(v.organization_require_behavior) > 0 }
}
output "clients_organization_usage" {
  description = "Map of organization_usage values across all clients, keyed the same as var.clients except keys with no organization_usage are omitted"
  value       = { for k, v in auth0_client.clients : k => v.organization_usage if v.organization_usage != null && length(v.organization_usage) > 0 }
}
output "clients_redirection_policy" {
  description = "Map of redirection_policy values across all clients, keyed the same as var.clients except keys with no redirection_policy are omitted"
  value       = { for k, v in auth0_client.clients : k => v.redirection_policy if v.redirection_policy != null && length(v.redirection_policy) > 0 }
}
output "clients_refresh_token" {
  description = "Map of refresh_token values across all clients, keyed the same as var.clients except keys with no refresh_token are omitted"
  value       = { for k, v in auth0_client.clients : k => one(v.refresh_token) if v.refresh_token != null && length(v.refresh_token) > 0 }
}
output "clients_require_proof_of_possession" {
  description = "Map of require_proof_of_possession values across all clients, keyed the same as var.clients except keys with no require_proof_of_possession are omitted"
  value       = { for k, v in auth0_client.clients : k => v.require_proof_of_possession if v.require_proof_of_possession != null }
}
output "clients_require_pushed_authorization_requests" {
  description = "Map of require_pushed_authorization_requests values across all clients, keyed the same as var.clients except keys with no require_pushed_authorization_requests are omitted"
  value       = { for k, v in auth0_client.clients : k => v.require_pushed_authorization_requests if v.require_pushed_authorization_requests != null }
}
output "clients_resource_server_identifier" {
  description = "Map of resource_server_identifier values across all clients, keyed the same as var.clients except keys with no resource_server_identifier are omitted"
  value       = { for k, v in auth0_client.clients : k => v.resource_server_identifier if v.resource_server_identifier != null && length(v.resource_server_identifier) > 0 }
}
output "clients_session_transfer" {
  description = "Map of session_transfer values across all clients, keyed the same as var.clients except keys with no session_transfer are omitted"
  value       = { for k, v in auth0_client.clients : k => one(v.session_transfer) if v.session_transfer != null && length(v.session_transfer) > 0 }
}
output "clients_signing_keys" {
  description = "Map of signing_keys values across all clients, keyed the same as var.clients except keys with no signing_keys are omitted"
  value       = { for k, v in auth0_client.clients : k => v.signing_keys if v.signing_keys != null && length(v.signing_keys) > 0 }
  sensitive   = true
}
output "clients_skip_non_verifiable_callback_uri_confirmation_prompt" {
  description = "Map of skip_non_verifiable_callback_uri_confirmation_prompt values across all clients, keyed the same as var.clients except keys with no skip_non_verifiable_callback_uri_confirmation_prompt are omitted"
  value       = { for k, v in auth0_client.clients : k => v.skip_non_verifiable_callback_uri_confirmation_prompt if v.skip_non_verifiable_callback_uri_confirmation_prompt != null && length(v.skip_non_verifiable_callback_uri_confirmation_prompt) > 0 }
}
output "clients_sso" {
  description = "Map of sso values across all clients, keyed the same as var.clients except keys with no sso are omitted"
  value       = { for k, v in auth0_client.clients : k => v.sso if v.sso != null }
}
output "clients_sso_disabled" {
  description = "Map of sso_disabled values across all clients, keyed the same as var.clients except keys with no sso_disabled are omitted"
  value       = { for k, v in auth0_client.clients : k => v.sso_disabled if v.sso_disabled != null }
}
output "clients_third_party_security_mode" {
  description = "Map of third_party_security_mode values across all clients, keyed the same as var.clients except keys with no third_party_security_mode are omitted"
  value       = { for k, v in auth0_client.clients : k => v.third_party_security_mode if v.third_party_security_mode != null && length(v.third_party_security_mode) > 0 }
}
output "clients_token_exchange" {
  description = "Map of token_exchange values across all clients, keyed the same as var.clients except keys with no token_exchange are omitted"
  value       = { for k, v in auth0_client.clients : k => one(v.token_exchange) if v.token_exchange != null && length(v.token_exchange) > 0 }
}
output "clients_token_quota" {
  description = "Map of token_quota values across all clients, keyed the same as var.clients except keys with no token_quota are omitted"
  value       = { for k, v in auth0_client.clients : k => one(v.token_quota) if v.token_quota != null && length(v.token_quota) > 0 }
}
output "clients_web_origins" {
  description = "Map of web_origins values across all clients, keyed the same as var.clients except keys with no web_origins are omitted"
  value       = { for k, v in auth0_client.clients : k => v.web_origins if v.web_origins != null && length(v.web_origins) > 0 }
}

