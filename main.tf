resource "auth0_client" "clients" {
  for_each = var.clients

  name                                                 = each.value.name
  allowed_clients                                      = each.value.allowed_clients
  allowed_logout_urls                                  = each.value.allowed_logout_urls
  allowed_origins                                      = each.value.allowed_origins
  app_type                                             = each.value.app_type
  async_approval_notification_channels                 = each.value.async_approval_notification_channels
  callbacks                                            = each.value.callbacks
  client_aliases                                       = each.value.client_aliases
  client_id                                            = each.value.client_id
  client_metadata                                      = each.value.client_metadata
  compliance_level                                     = each.value.compliance_level
  cross_origin_auth                                    = each.value.cross_origin_auth
  cross_origin_loc                                     = each.value.cross_origin_loc
  custom_login_page                                    = each.value.custom_login_page
  custom_login_page_on                                 = each.value.custom_login_page_on
  description                                          = each.value.description
  encryption_key                                       = each.value.encryption_key
  form_template                                        = each.value.form_template
  grant_types                                          = each.value.grant_types
  initiate_login_uri                                   = each.value.initiate_login_uri
  is_first_party                                       = each.value.is_first_party
  is_token_endpoint_ip_header_trusted                  = each.value.is_token_endpoint_ip_header_trusted
  logo_uri                                             = each.value.logo_uri
  oidc_backchannel_logout_urls                         = each.value.oidc_backchannel_logout_urls
  oidc_conformant                                      = each.value.oidc_conformant
  organization_discovery_methods                       = each.value.organization_discovery_methods
  organization_require_behavior                        = each.value.organization_require_behavior
  organization_usage                                   = each.value.organization_usage
  redirection_policy                                   = each.value.redirection_policy
  require_proof_of_possession                          = each.value.require_proof_of_possession
  require_pushed_authorization_requests                = each.value.require_pushed_authorization_requests
  resource_server_identifier                           = each.value.resource_server_identifier
  skip_non_verifiable_callback_uri_confirmation_prompt = each.value.skip_non_verifiable_callback_uri_confirmation_prompt
  sso                                                  = each.value.sso
  sso_disabled                                         = each.value.sso_disabled
  third_party_security_mode                            = each.value.third_party_security_mode
  web_origins                                          = each.value.web_origins

  dynamic "addons" {
    for_each = each.value.addons != null ? [each.value.addons] : []
    content {
      dynamic "aws" {
        for_each = addons.value.aws != null ? [addons.value.aws] : []
        content {
          lifetime_in_seconds = aws.value.lifetime_in_seconds
          principal           = aws.value.principal
          role                = aws.value.role
        }
      }
      dynamic "azure_blob" {
        for_each = addons.value.azure_blob != null ? [addons.value.azure_blob] : []
        content {
          account_name       = azure_blob.value.account_name
          blob_delete        = azure_blob.value.blob_delete
          blob_name          = azure_blob.value.blob_name
          blob_read          = azure_blob.value.blob_read
          blob_write         = azure_blob.value.blob_write
          container_delete   = azure_blob.value.container_delete
          container_list     = azure_blob.value.container_list
          container_name     = azure_blob.value.container_name
          container_read     = azure_blob.value.container_read
          container_write    = azure_blob.value.container_write
          expiration         = azure_blob.value.expiration
          signed_identifier  = azure_blob.value.signed_identifier
          storage_access_key = azure_blob.value.storage_access_key
        }
      }
      dynamic "azure_sb" {
        for_each = addons.value.azure_sb != null ? [addons.value.azure_sb] : []
        content {
          entity_path  = azure_sb.value.entity_path
          expiration   = azure_sb.value.expiration
          namespace    = azure_sb.value.namespace
          sas_key      = azure_sb.value.sas_key
          sas_key_name = azure_sb.value.sas_key_name
        }
      }
      dynamic "box" {
        for_each = addons.value.box != null ? [addons.value.box] : []
        content {
        }
      }
      dynamic "cloudbees" {
        for_each = addons.value.cloudbees != null ? [addons.value.cloudbees] : []
        content {
        }
      }
      dynamic "concur" {
        for_each = addons.value.concur != null ? [addons.value.concur] : []
        content {
        }
      }
      dynamic "dropbox" {
        for_each = addons.value.dropbox != null ? [addons.value.dropbox] : []
        content {
        }
      }
      dynamic "echosign" {
        for_each = addons.value.echosign != null ? [addons.value.echosign] : []
        content {
          domain = echosign.value.domain
        }
      }
      dynamic "egnyte" {
        for_each = addons.value.egnyte != null ? [addons.value.egnyte] : []
        content {
          domain = egnyte.value.domain
        }
      }
      dynamic "firebase" {
        for_each = addons.value.firebase != null ? [addons.value.firebase] : []
        content {
          client_email        = firebase.value.client_email
          lifetime_in_seconds = firebase.value.lifetime_in_seconds
          private_key         = firebase.value.private_key
          private_key_id      = firebase.value.private_key_id
          secret              = firebase.value.secret
        }
      }
      dynamic "layer" {
        for_each = addons.value.layer != null ? [addons.value.layer] : []
        content {
          expiration  = layer.value.expiration
          key_id      = layer.value.key_id
          principal   = layer.value.principal
          private_key = layer.value.private_key
          provider_id = layer.value.provider_id
        }
      }
      dynamic "mscrm" {
        for_each = addons.value.mscrm != null ? [addons.value.mscrm] : []
        content {
          url = mscrm.value.url
        }
      }
      dynamic "newrelic" {
        for_each = addons.value.newrelic != null ? [addons.value.newrelic] : []
        content {
          account = newrelic.value.account
        }
      }
      dynamic "office365" {
        for_each = addons.value.office365 != null ? [addons.value.office365] : []
        content {
          connection = office365.value.connection
          domain     = office365.value.domain
        }
      }
      dynamic "rms" {
        for_each = addons.value.rms != null ? [addons.value.rms] : []
        content {
          url = rms.value.url
        }
      }
      dynamic "salesforce" {
        for_each = addons.value.salesforce != null ? [addons.value.salesforce] : []
        content {
          entity_id = salesforce.value.entity_id
        }
      }
      dynamic "salesforce_api" {
        for_each = addons.value.salesforce_api != null ? [addons.value.salesforce_api] : []
        content {
          client_id             = salesforce_api.value.client_id
          community_name        = salesforce_api.value.community_name
          community_url_section = salesforce_api.value.community_url_section
          principal             = salesforce_api.value.principal
        }
      }
      dynamic "salesforce_sandbox_api" {
        for_each = addons.value.salesforce_sandbox_api != null ? [addons.value.salesforce_sandbox_api] : []
        content {
          client_id             = salesforce_sandbox_api.value.client_id
          community_name        = salesforce_sandbox_api.value.community_name
          community_url_section = salesforce_sandbox_api.value.community_url_section
          principal             = salesforce_sandbox_api.value.principal
        }
      }
      dynamic "samlp" {
        for_each = addons.value.samlp != null ? [addons.value.samlp] : []
        content {
          audience                      = samlp.value.audience
          authn_context_class_ref       = samlp.value.authn_context_class_ref
          binding                       = samlp.value.binding
          create_upn_claim              = samlp.value.create_upn_claim
          destination                   = samlp.value.destination
          digest_algorithm              = samlp.value.digest_algorithm
          flexible_mappings             = samlp.value.flexible_mappings
          include_attribute_name_format = samlp.value.include_attribute_name_format
          issuer                        = samlp.value.issuer
          lifetime_in_seconds           = samlp.value.lifetime_in_seconds
          dynamic "logout" {
            for_each = samlp.value.logout != null ? [samlp.value.logout] : []
            content {
              callback    = logout.value.callback
              slo_enabled = logout.value.slo_enabled
            }
          }
          map_identities                     = samlp.value.map_identities
          map_unknown_claims_as_is           = samlp.value.map_unknown_claims_as_is
          mappings                           = samlp.value.mappings
          name_identifier_format             = samlp.value.name_identifier_format
          name_identifier_probes             = samlp.value.name_identifier_probes
          passthrough_claims_with_no_mapping = samlp.value.passthrough_claims_with_no_mapping
          recipient                          = samlp.value.recipient
          sign_response                      = samlp.value.sign_response
          signature_algorithm                = samlp.value.signature_algorithm
          signing_cert                       = samlp.value.signing_cert
          typed_attributes                   = samlp.value.typed_attributes
        }
      }
      dynamic "sap_api" {
        for_each = addons.value.sap_api != null ? [addons.value.sap_api] : []
        content {
          client_id              = sap_api.value.client_id
          name_identifier_format = sap_api.value.name_identifier_format
          scope                  = sap_api.value.scope
          service_password       = sap_api.value.service_password
          token_endpoint_url     = sap_api.value.token_endpoint_url
          username_attribute     = sap_api.value.username_attribute
        }
      }
      dynamic "sentry" {
        for_each = addons.value.sentry != null ? [addons.value.sentry] : []
        content {
          base_url = sentry.value.base_url
          org_slug = sentry.value.org_slug
        }
      }
      dynamic "sharepoint" {
        for_each = addons.value.sharepoint != null ? [addons.value.sharepoint] : []
        content {
          external_url = sharepoint.value.external_url
          url          = sharepoint.value.url
        }
      }
      dynamic "slack" {
        for_each = addons.value.slack != null ? [addons.value.slack] : []
        content {
          team = slack.value.team
        }
      }
      dynamic "springcm" {
        for_each = addons.value.springcm != null ? [addons.value.springcm] : []
        content {
          acs_url = springcm.value.acs_url
        }
      }
      dynamic "sso_integration" {
        for_each = addons.value.sso_integration != null ? [addons.value.sso_integration] : []
        content {
          name    = sso_integration.value.name
          version = sso_integration.value.version
        }
      }
      dynamic "wams" {
        for_each = addons.value.wams != null ? [addons.value.wams] : []
        content {
          master_key = wams.value.master_key
        }
      }
      dynamic "wsfed" {
        for_each = addons.value.wsfed != null ? [addons.value.wsfed] : []
        content {
        }
      }
      dynamic "zendesk" {
        for_each = addons.value.zendesk != null ? [addons.value.zendesk] : []
        content {
          account_name = zendesk.value.account_name
        }
      }
      dynamic "zoom" {
        for_each = addons.value.zoom != null ? [addons.value.zoom] : []
        content {
          account = zoom.value.account
        }
      }
    }
  }

  dynamic "anonymous_sessions" {
    for_each = each.value.anonymous_sessions != null ? [each.value.anonymous_sessions] : []
    content {
      active = anonymous_sessions.value.active
    }
  }

  dynamic "b2b_integration_configuration" {
    for_each = each.value.b2b_integration_configuration != null ? [each.value.b2b_integration_configuration] : []
    content {
      integration_type = b2b_integration_configuration.value.integration_type
      sso_profiles     = b2b_integration_configuration.value.sso_profiles
    }
  }

  dynamic "default_organization" {
    for_each = each.value.default_organization != null ? [each.value.default_organization] : []
    content {
      disable         = default_organization.value.disable
      flows           = default_organization.value.flows
      organization_id = default_organization.value.organization_id
    }
  }

  dynamic "express_configuration" {
    for_each = each.value.express_configuration != null ? [each.value.express_configuration] : []
    content {
      admin_login_domain          = express_configuration.value.admin_login_domain
      connection_profile_id       = express_configuration.value.connection_profile_id
      enable_client               = express_configuration.value.enable_client
      enable_organization         = express_configuration.value.enable_organization
      initiate_login_uri_template = express_configuration.value.initiate_login_uri_template
      dynamic "linked_clients" {
        for_each = express_configuration.value.linked_clients != null ? express_configuration.value.linked_clients : []
        content {
          client_id = linked_clients.value.client_id
        }
      }
      okta_oin_client_id        = express_configuration.value.okta_oin_client_id
      user_attribute_profile_id = express_configuration.value.user_attribute_profile_id
    }
  }

  dynamic "fedcm_login" {
    for_each = each.value.fedcm_login != null ? [each.value.fedcm_login] : []
    content {
      google {
        is_enabled = fedcm_login.value.google.is_enabled
      }
    }
  }

  dynamic "identity_assertion_authorization_grant" {
    for_each = each.value.identity_assertion_authorization_grant != null ? [each.value.identity_assertion_authorization_grant] : []
    content {
      active = identity_assertion_authorization_grant.value.active
    }
  }

  dynamic "jwt_configuration" {
    for_each = each.value.jwt_configuration != null ? [each.value.jwt_configuration] : []
    content {
      alg                 = jwt_configuration.value.alg
      lifetime_in_seconds = jwt_configuration.value.lifetime_in_seconds
      scopes              = jwt_configuration.value.scopes
      secret_encoded      = jwt_configuration.value.secret_encoded
    }
  }

  dynamic "mobile" {
    for_each = each.value.mobile != null ? [each.value.mobile] : []
    content {
      dynamic "android" {
        for_each = mobile.value.android != null ? [mobile.value.android] : []
        content {
          app_package_name         = android.value.app_package_name
          sha256_cert_fingerprints = android.value.sha256_cert_fingerprints
        }
      }
      dynamic "ios" {
        for_each = mobile.value.ios != null ? [mobile.value.ios] : []
        content {
          app_bundle_identifier = ios.value.app_bundle_identifier
          team_id               = ios.value.team_id
        }
      }
    }
  }

  dynamic "my_organization_configuration" {
    for_each = each.value.my_organization_configuration != null ? [each.value.my_organization_configuration] : []
    content {
      allowed_strategies                  = my_organization_configuration.value.allowed_strategies
      connection_deletion_behavior        = my_organization_configuration.value.connection_deletion_behavior
      connection_profile_id               = my_organization_configuration.value.connection_profile_id
      enforce_permission_ceiling          = my_organization_configuration.value.enforce_permission_ceiling
      enforce_self_assignment_restriction = my_organization_configuration.value.enforce_self_assignment_restriction
      invitation_landing_client_id        = my_organization_configuration.value.invitation_landing_client_id
      dynamic "third_party_client_access" {
        for_each = my_organization_configuration.value.third_party_client_access != null ? [my_organization_configuration.value.third_party_client_access] : []
        content {
          allowed_values = third_party_client_access.value.allowed_values
        }
      }
      user_attribute_profile_id = my_organization_configuration.value.user_attribute_profile_id
    }
  }

  dynamic "native_social_login" {
    for_each = each.value.native_social_login != null ? [each.value.native_social_login] : []
    content {
      dynamic "apple" {
        for_each = native_social_login.value.apple != null ? [native_social_login.value.apple] : []
        content {
          enabled = apple.value.enabled
        }
      }
      dynamic "facebook" {
        for_each = native_social_login.value.facebook != null ? [native_social_login.value.facebook] : []
        content {
          enabled = facebook.value.enabled
        }
      }
      dynamic "google" {
        for_each = native_social_login.value.google != null ? [native_social_login.value.google] : []
        content {
          enabled = google.value.enabled
        }
      }
    }
  }

  dynamic "oidc_logout" {
    for_each = each.value.oidc_logout != null ? [each.value.oidc_logout] : []
    content {
      dynamic "backchannel_logout_initiators" {
        for_each = oidc_logout.value.backchannel_logout_initiators != null ? [oidc_logout.value.backchannel_logout_initiators] : []
        content {
          mode                = backchannel_logout_initiators.value.mode
          selected_initiators = backchannel_logout_initiators.value.selected_initiators
        }
      }
      dynamic "backchannel_logout_session_metadata" {
        for_each = oidc_logout.value.backchannel_logout_session_metadata != null ? [oidc_logout.value.backchannel_logout_session_metadata] : []
        content {
          include = backchannel_logout_session_metadata.value.include
        }
      }
      backchannel_logout_urls = oidc_logout.value.backchannel_logout_urls
    }
  }

  dynamic "refresh_token" {
    for_each = each.value.refresh_token != null ? [each.value.refresh_token] : []
    content {
      expiration_type              = refresh_token.value.expiration_type
      idle_token_lifetime          = refresh_token.value.idle_token_lifetime
      infinite_idle_token_lifetime = refresh_token.value.infinite_idle_token_lifetime
      infinite_token_lifetime      = refresh_token.value.infinite_token_lifetime
      leeway                       = refresh_token.value.leeway
      dynamic "policies" {
        for_each = refresh_token.value.policies != null ? refresh_token.value.policies : []
        content {
          audience = policies.value.audience
          scope    = policies.value.scope
        }
      }
      rotation_type  = refresh_token.value.rotation_type
      token_lifetime = refresh_token.value.token_lifetime
    }
  }

  dynamic "session_transfer" {
    for_each = each.value.session_transfer != null ? [each.value.session_transfer] : []
    content {
      allow_refresh_token               = session_transfer.value.allow_refresh_token
      allowed_authentication_methods    = session_transfer.value.allowed_authentication_methods
      can_create_session_transfer_token = session_transfer.value.can_create_session_transfer_token
      dynamic "delegation" {
        for_each = session_transfer.value.delegation != null ? [session_transfer.value.delegation] : []
        content {
          allow_delegated_access = delegation.value.allow_delegated_access
          enforce_device_binding = delegation.value.enforce_device_binding
        }
      }
      enforce_cascade_revocation    = session_transfer.value.enforce_cascade_revocation
      enforce_device_binding        = session_transfer.value.enforce_device_binding
      enforce_online_refresh_tokens = session_transfer.value.enforce_online_refresh_tokens
    }
  }

  dynamic "token_exchange" {
    for_each = each.value.token_exchange != null ? [each.value.token_exchange] : []
    content {
      allow_any_profile_of_type = token_exchange.value.allow_any_profile_of_type
    }
  }

  dynamic "token_quota" {
    for_each = each.value.token_quota != null ? [each.value.token_quota] : []
    content {
      client_credentials {
        enforce  = token_quota.value.client_credentials.enforce
        per_day  = token_quota.value.client_credentials.per_day
        per_hour = token_quota.value.client_credentials.per_hour
      }
    }
  }
}

