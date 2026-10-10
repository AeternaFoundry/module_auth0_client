variable "clients" {
  description = <<EOT
Map of clients, attributes below
Required:
    - name
Optional:
    - allowed_clients
    - allowed_logout_urls
    - allowed_origins
    - app_type
    - async_approval_notification_channels
    - callbacks
    - client_aliases
    - client_id
    - client_metadata
    - compliance_level
    - cross_origin_auth
    - cross_origin_loc
    - custom_login_page
    - custom_login_page_on
    - description
    - encryption_key
    - form_template
    - grant_types
    - initiate_login_uri
    - is_first_party
    - is_token_endpoint_ip_header_trusted
    - logo_uri
    - oidc_backchannel_logout_urls
    - oidc_conformant
    - organization_discovery_methods
    - organization_require_behavior
    - organization_usage
    - redirection_policy
    - require_proof_of_possession
    - require_pushed_authorization_requests
    - resource_server_identifier
    - skip_non_verifiable_callback_uri_confirmation_prompt
    - sso
    - sso_disabled
    - third_party_security_mode
    - web_origins
    - addons (block):
        - aws (optional, block):
            - lifetime_in_seconds (optional)
            - principal (optional)
            - role (optional)
        - azure_blob (optional, block):
            - account_name (optional)
            - blob_delete (optional)
            - blob_name (optional)
            - blob_read (optional)
            - blob_write (optional)
            - container_delete (optional)
            - container_list (optional)
            - container_name (optional)
            - container_read (optional)
            - container_write (optional)
            - expiration (optional)
            - signed_identifier (optional)
            - storage_access_key (optional)
        - azure_sb (optional, block):
            - entity_path (optional)
            - expiration (optional)
            - namespace (optional)
            - sas_key (optional)
            - sas_key_name (optional)
        - box (optional, block):
        - cloudbees (optional, block):
        - concur (optional, block):
        - dropbox (optional, block):
        - echosign (optional, block):
            - domain (optional)
        - egnyte (optional, block):
            - domain (optional)
        - firebase (optional, block):
            - client_email (optional)
            - lifetime_in_seconds (optional)
            - private_key (optional)
            - private_key_id (optional)
            - secret (optional)
        - layer (optional, block):
            - expiration (optional)
            - key_id (required)
            - principal (optional)
            - private_key (required)
            - provider_id (required)
        - mscrm (optional, block):
            - url (optional)
        - newrelic (optional, block):
            - account (optional)
        - office365 (optional, block):
            - connection (optional)
            - domain (optional)
        - rms (optional, block):
            - url (optional)
        - salesforce (optional, block):
            - entity_id (optional)
        - salesforce_api (optional, block):
            - client_id (optional)
            - community_name (optional)
            - community_url_section (optional)
            - principal (optional)
        - salesforce_sandbox_api (optional, block):
            - client_id (optional)
            - community_name (optional)
            - community_url_section (optional)
            - principal (optional)
        - samlp (optional, block):
            - audience (optional)
            - authn_context_class_ref (optional)
            - binding (optional)
            - create_upn_claim (optional)
            - destination (optional)
            - digest_algorithm (optional)
            - flexible_mappings (optional)
            - include_attribute_name_format (optional)
            - issuer (optional)
            - lifetime_in_seconds (optional)
            - logout (optional, block):
                - callback (optional)
                - slo_enabled (optional)
            - map_identities (optional)
            - map_unknown_claims_as_is (optional)
            - mappings (optional)
            - name_identifier_format (optional)
            - name_identifier_probes (optional)
            - passthrough_claims_with_no_mapping (optional)
            - recipient (optional)
            - sign_response (optional)
            - signature_algorithm (optional)
            - signing_cert (optional)
            - typed_attributes (optional)
        - sap_api (optional, block):
            - client_id (optional)
            - name_identifier_format (optional)
            - scope (optional)
            - service_password (optional)
            - token_endpoint_url (optional)
            - username_attribute (optional)
        - sentry (optional, block):
            - base_url (optional)
            - org_slug (optional)
        - sharepoint (optional, block):
            - external_url (optional)
            - url (optional)
        - slack (optional, block):
            - team (optional)
        - springcm (optional, block):
            - acs_url (optional)
        - sso_integration (optional, block):
            - name (optional)
            - version (optional)
        - wams (optional, block):
            - master_key (optional)
        - wsfed (optional, block):
        - zendesk (optional, block):
            - account_name (optional)
        - zoom (optional, block):
            - account (optional)
    - anonymous_sessions (block):
        - active (required)
    - b2b_integration_configuration (block):
        - integration_type (optional)
        - sso_profiles (optional)
    - default_organization (block):
        - disable (optional)
        - flows (optional)
        - organization_id (optional)
    - express_configuration (block):
        - admin_login_domain (optional)
        - connection_profile_id (optional)
        - enable_client (optional)
        - enable_organization (optional)
        - initiate_login_uri_template (optional)
        - linked_clients (optional, block):
            - client_id (optional)
        - okta_oin_client_id (optional)
        - user_attribute_profile_id (optional)
    - fedcm_login (block):
        - google (required, block):
            - is_enabled (required)
    - identity_assertion_authorization_grant (block):
        - active (required)
    - jwt_configuration (block):
        - alg (optional)
        - lifetime_in_seconds (optional)
        - scopes (optional)
        - secret_encoded (optional)
    - mobile (block):
        - android (optional, block):
            - app_package_name (optional)
            - sha256_cert_fingerprints (optional)
        - ios (optional, block):
            - app_bundle_identifier (optional)
            - team_id (optional)
    - my_organization_configuration (block):
        - allowed_strategies (optional)
        - connection_deletion_behavior (optional)
        - connection_profile_id (optional)
        - enforce_permission_ceiling (optional)
        - enforce_self_assignment_restriction (optional)
        - invitation_landing_client_id (optional)
        - third_party_client_access (optional, block):
            - allowed_values (required)
        - user_attribute_profile_id (optional)
    - native_social_login (block):
        - apple (optional, block):
            - enabled (optional)
        - facebook (optional, block):
            - enabled (optional)
        - google (optional, block):
            - enabled (optional)
    - oidc_logout (block):
        - backchannel_logout_initiators (optional, block):
            - mode (required)
            - selected_initiators (optional)
        - backchannel_logout_session_metadata (optional, block):
            - include (required)
        - backchannel_logout_urls (required)
    - refresh_token (block):
        - expiration_type (required)
        - idle_token_lifetime (optional)
        - infinite_idle_token_lifetime (optional)
        - infinite_token_lifetime (optional)
        - leeway (optional)
        - policies (optional, block):
            - audience (required)
            - scope (required)
        - rotation_type (required)
        - token_lifetime (optional)
    - session_transfer (block):
        - allow_refresh_token (optional)
        - allowed_authentication_methods (optional)
        - can_create_session_transfer_token (optional)
        - delegation (optional, block):
            - allow_delegated_access (optional)
            - enforce_device_binding (optional)
        - enforce_cascade_revocation (optional)
        - enforce_device_binding (optional)
        - enforce_online_refresh_tokens (optional)
    - token_exchange (block):
        - allow_any_profile_of_type (required)
    - token_quota (block):
        - client_credentials (required, block):
            - enforce (optional)
            - per_day (optional)
            - per_hour (optional)
EOT

  type = map(object({
    name                                                 = string
    allowed_clients                                      = optional(list(string))
    allowed_logout_urls                                  = optional(list(string))
    allowed_origins                                      = optional(list(string))
    app_type                                             = optional(string)
    async_approval_notification_channels                 = optional(list(string))
    callbacks                                            = optional(list(string))
    client_aliases                                       = optional(list(string))
    client_id                                            = optional(string)
    client_metadata                                      = optional(map(string))
    compliance_level                                     = optional(string)
    cross_origin_auth                                    = optional(bool)
    cross_origin_loc                                     = optional(string)
    custom_login_page                                    = optional(string)
    custom_login_page_on                                 = optional(bool)
    description                                          = optional(string)
    encryption_key                                       = optional(map(string))
    form_template                                        = optional(string)
    grant_types                                          = optional(list(string))
    initiate_login_uri                                   = optional(string)
    is_first_party                                       = optional(bool)
    is_token_endpoint_ip_header_trusted                  = optional(bool)
    logo_uri                                             = optional(string)
    oidc_backchannel_logout_urls                         = optional(set(string))
    oidc_conformant                                      = optional(bool)
    organization_discovery_methods                       = optional(list(string))
    organization_require_behavior                        = optional(string)
    organization_usage                                   = optional(string)
    redirection_policy                                   = optional(string)
    require_proof_of_possession                          = optional(bool)
    require_pushed_authorization_requests                = optional(bool)
    resource_server_identifier                           = optional(string)
    skip_non_verifiable_callback_uri_confirmation_prompt = optional(string)
    sso                                                  = optional(bool)
    sso_disabled                                         = optional(bool)
    third_party_security_mode                            = optional(string)
    web_origins                                          = optional(list(string))
    addons = optional(object({
      aws = optional(object({
        lifetime_in_seconds = optional(number)
        principal           = optional(string)
        role                = optional(string)
      }))
      azure_blob = optional(object({
        account_name       = optional(string)
        blob_delete        = optional(bool)
        blob_name          = optional(string)
        blob_read          = optional(bool)
        blob_write         = optional(bool)
        container_delete   = optional(bool)
        container_list     = optional(bool)
        container_name     = optional(string)
        container_read     = optional(bool)
        container_write    = optional(bool)
        expiration         = optional(number)
        signed_identifier  = optional(string)
        storage_access_key = optional(string)
      }))
      azure_sb = optional(object({
        entity_path  = optional(string)
        expiration   = optional(number)
        namespace    = optional(string)
        sas_key      = optional(string)
        sas_key_name = optional(string)
      }))
      box = optional(object({
      }))
      cloudbees = optional(object({
      }))
      concur = optional(object({
      }))
      dropbox = optional(object({
      }))
      echosign = optional(object({
        domain = optional(string)
      }))
      egnyte = optional(object({
        domain = optional(string)
      }))
      firebase = optional(object({
        client_email        = optional(string)
        lifetime_in_seconds = optional(number)
        private_key         = optional(string)
        private_key_id      = optional(string)
        secret              = optional(string)
      }))
      layer = optional(object({
        expiration  = optional(number)
        key_id      = string
        principal   = optional(string)
        private_key = string
        provider_id = string
      }))
      mscrm = optional(object({
        url = optional(string)
      }))
      newrelic = optional(object({
        account = optional(string)
      }))
      office365 = optional(object({
        connection = optional(string)
        domain     = optional(string)
      }))
      rms = optional(object({
        url = optional(string)
      }))
      salesforce = optional(object({
        entity_id = optional(string)
      }))
      salesforce_api = optional(object({
        client_id             = optional(string)
        community_name        = optional(string)
        community_url_section = optional(string)
        principal             = optional(string)
      }))
      salesforce_sandbox_api = optional(object({
        client_id             = optional(string)
        community_name        = optional(string)
        community_url_section = optional(string)
        principal             = optional(string)
      }))
      samlp = optional(object({
        audience                      = optional(string)
        authn_context_class_ref       = optional(string)
        binding                       = optional(string)
        create_upn_claim              = optional(bool)
        destination                   = optional(string)
        digest_algorithm              = optional(string)
        flexible_mappings             = optional(string)
        include_attribute_name_format = optional(bool)
        issuer                        = optional(string)
        lifetime_in_seconds           = optional(number)
        logout = optional(object({
          callback    = optional(string)
          slo_enabled = optional(bool)
        }))
        map_identities                     = optional(bool)
        map_unknown_claims_as_is           = optional(bool)
        mappings                           = optional(map(string))
        name_identifier_format             = optional(string)
        name_identifier_probes             = optional(list(string))
        passthrough_claims_with_no_mapping = optional(bool)
        recipient                          = optional(string)
        sign_response                      = optional(bool)
        signature_algorithm                = optional(string)
        signing_cert                       = optional(string)
        typed_attributes                   = optional(bool)
      }))
      sap_api = optional(object({
        client_id              = optional(string)
        name_identifier_format = optional(string)
        scope                  = optional(string)
        service_password       = optional(string)
        token_endpoint_url     = optional(string)
        username_attribute     = optional(string)
      }))
      sentry = optional(object({
        base_url = optional(string)
        org_slug = optional(string)
      }))
      sharepoint = optional(object({
        external_url = optional(list(string))
        url          = optional(string)
      }))
      slack = optional(object({
        team = optional(string)
      }))
      springcm = optional(object({
        acs_url = optional(string)
      }))
      sso_integration = optional(object({
        name    = optional(string)
        version = optional(string)
      }))
      wams = optional(object({
        master_key = optional(string)
      }))
      wsfed = optional(object({
      }))
      zendesk = optional(object({
        account_name = optional(string)
      }))
      zoom = optional(object({
        account = optional(string)
      }))
    }))
    anonymous_sessions = optional(object({
      active = bool
    }))
    b2b_integration_configuration = optional(object({
      integration_type = optional(string)
      sso_profiles     = optional(list(string))
    }))
    default_organization = optional(object({
      disable         = optional(bool)
      flows           = optional(list(string))
      organization_id = optional(string)
    }))
    express_configuration = optional(object({
      admin_login_domain          = optional(string)
      connection_profile_id       = optional(string)
      enable_client               = optional(bool)
      enable_organization         = optional(bool)
      initiate_login_uri_template = optional(string)
      linked_clients = optional(list(object({
        client_id = optional(string)
      })))
      okta_oin_client_id        = optional(string)
      user_attribute_profile_id = optional(string)
    }))
    fedcm_login = optional(object({
      google = object({
        is_enabled = bool
      })
    }))
    identity_assertion_authorization_grant = optional(object({
      active = bool
    }))
    jwt_configuration = optional(object({
      alg                 = optional(string)
      lifetime_in_seconds = optional(number)
      scopes              = optional(map(string))
      secret_encoded      = optional(bool)
    }))
    mobile = optional(object({
      android = optional(object({
        app_package_name         = optional(string)
        sha256_cert_fingerprints = optional(list(string))
      }))
      ios = optional(object({
        app_bundle_identifier = optional(string)
        team_id               = optional(string)
      }))
    }))
    my_organization_configuration = optional(object({
      allowed_strategies                  = optional(list(string))
      connection_deletion_behavior        = optional(string)
      connection_profile_id               = optional(string)
      enforce_permission_ceiling          = optional(bool)
      enforce_self_assignment_restriction = optional(bool)
      invitation_landing_client_id        = optional(string)
      third_party_client_access = optional(object({
        allowed_values = list(string)
      }))
      user_attribute_profile_id = optional(string)
    }))
    native_social_login = optional(object({
      apple = optional(object({
        enabled = optional(bool)
      }))
      facebook = optional(object({
        enabled = optional(bool)
      }))
      google = optional(object({
        enabled = optional(bool)
      }))
    }))
    oidc_logout = optional(object({
      backchannel_logout_initiators = optional(object({
        mode                = string
        selected_initiators = optional(set(string))
      }))
      backchannel_logout_session_metadata = optional(object({
        include = bool
      }))
      backchannel_logout_urls = set(string)
    }))
    refresh_token = optional(object({
      expiration_type              = string
      idle_token_lifetime          = optional(number)
      infinite_idle_token_lifetime = optional(bool)
      infinite_token_lifetime      = optional(bool)
      leeway                       = optional(number)
      policies = optional(list(object({
        audience = string
        scope    = list(string)
      })))
      rotation_type  = string
      token_lifetime = optional(number)
    }))
    session_transfer = optional(object({
      allow_refresh_token               = optional(bool)
      allowed_authentication_methods    = optional(set(string))
      can_create_session_transfer_token = optional(bool)
      delegation = optional(object({
        allow_delegated_access = optional(bool)
        enforce_device_binding = optional(string)
      }))
      enforce_cascade_revocation    = optional(bool)
      enforce_device_binding        = optional(string)
      enforce_online_refresh_tokens = optional(bool)
    }))
    token_exchange = optional(object({
      allow_any_profile_of_type = list(string)
    }))
    token_quota = optional(object({
      client_credentials = object({
        enforce  = optional(bool)
        per_day  = optional(number)
        per_hour = optional(number)
      })
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.description == null || (length(v.description) >= 0 && length(v.description) <= 140)
      )
    ])
    error_message = "must be between 0 and 140 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.third_party_security_mode == null || (contains(["strict", "permissive"], v.third_party_security_mode))
      )
    ])
    error_message = "must be one of: \"strict\", \"permissive\""
  }
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.redirection_policy == null || (contains(["allow_always", "open_redirect_protection"], v.redirection_policy))
      )
    ])
    error_message = "must be one of: \"allow_always\", \"open_redirect_protection\""
  }
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.async_approval_notification_channels == null || (alltrue([for x in v.async_approval_notification_channels : contains(["guardian-push", "email", "my-account"], x)]))
      )
    ])
    error_message = "must be one of: \"guardian-push\", \"email\", \"my-account\""
  }
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.organization_usage == null || (contains(["deny", "allow", "require"], v.organization_usage))
      )
    ])
    error_message = "must be one of: \"deny\", \"allow\", \"require\""
  }
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.organization_require_behavior == null || (contains(["no_prompt", "pre_login_prompt", "post_login_prompt"], v.organization_require_behavior))
      )
    ])
    error_message = "must be one of: \"no_prompt\", \"pre_login_prompt\", \"post_login_prompt\""
  }
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.organization_discovery_methods == null || (alltrue([for x in v.organization_discovery_methods : contains(["email", "organization_name"], x)]))
      )
    ])
    error_message = "must be one of: \"email\", \"organization_name\""
  }
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.jwt_configuration == null || (v.jwt_configuration.alg == null || (contains(["HS256", "RS256", "PS256"], v.jwt_configuration.alg)))
      )
    ])
    error_message = "must be one of: \"HS256\", \"RS256\", \"PS256\""
  }
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.refresh_token == null || (contains(["rotating", "non-rotating"], v.refresh_token.rotation_type))
      )
    ])
    error_message = "must be one of: \"rotating\", \"non-rotating\""
  }
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.refresh_token == null || (contains(["expiring", "non-expiring"], v.refresh_token.expiration_type))
      )
    ])
    error_message = "must be one of: \"expiring\", \"non-expiring\""
  }
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.addons == null || (v.addons.aws == null || (v.addons.aws.lifetime_in_seconds == null || (v.addons.aws.lifetime_in_seconds >= 900 && v.addons.aws.lifetime_in_seconds <= 43200)))
      )
    ])
    error_message = "must be between 900 and 43200"
  }
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.addons == null || (v.addons.azure_blob == null || (v.addons.azure_blob.expiration == null || (v.addons.azure_blob.expiration >= 0)))
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.addons == null || (v.addons.azure_sb == null || (v.addons.azure_sb.expiration == null || (v.addons.azure_sb.expiration >= 0)))
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.addons == null || (v.addons.layer == null || (v.addons.layer.expiration == null || (v.addons.layer.expiration >= 0)))
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.addons == null || (v.addons.samlp == null || (v.addons.samlp.flexible_mappings == null || (can(jsondecode(v.addons.samlp.flexible_mappings)))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.compliance_level == null || (contains(["none", "fapi1_adv_pkj_par", "fapi1_adv_mtls_par"], v.compliance_level))
      )
    ])
    error_message = "must be one of: \"none\", \"fapi1_adv_pkj_par\", \"fapi1_adv_mtls_par\""
  }
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.oidc_logout == null || (v.oidc_logout.backchannel_logout_initiators == null || (contains(["all", "custom"], v.oidc_logout.backchannel_logout_initiators.mode)))
      )
    ])
    error_message = "must be one of: \"all\", \"custom\""
  }
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.session_transfer == null || (v.session_transfer.allowed_authentication_methods == null || (alltrue([for x in v.session_transfer.allowed_authentication_methods : contains(["cookie", "query"], x)])))
      )
    ])
    error_message = "must be one of: \"cookie\", \"query\""
  }
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.session_transfer == null || (v.session_transfer.enforce_device_binding == null || (contains(["ip", "asn", "none"], v.session_transfer.enforce_device_binding)))
      )
    ])
    error_message = "must be one of: \"ip\", \"asn\", \"none\""
  }
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.session_transfer == null || (v.session_transfer.delegation == null || (v.session_transfer.delegation.enforce_device_binding == null || (contains(["ip", "asn"], v.session_transfer.delegation.enforce_device_binding))))
      )
    ])
    error_message = "must be one of: \"ip\", \"asn\""
  }
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.skip_non_verifiable_callback_uri_confirmation_prompt == null || (contains(["true", "false", "null"], v.skip_non_verifiable_callback_uri_confirmation_prompt))
      )
    ])
    error_message = "must be one of: \"true\", \"false\", \"null\""
  }
  validation {
    condition = alltrue([
      for k, v in var.clients : (
        v.my_organization_configuration == null || (v.my_organization_configuration.connection_deletion_behavior == null || (contains(["allow", "allow_if_empty"], v.my_organization_configuration.connection_deletion_behavior)))
      )
    ])
    error_message = "must be one of: \"allow\", \"allow_if_empty\""
  }
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

