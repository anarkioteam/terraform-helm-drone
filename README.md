# terraform-helm-drone

A Terraform module for deploying [Drone](https://drone.io/) via Helm.

## Requirements

| Name      | Version   |
| --------- | --------- |
| terraform | ~> 0.12.0 |
| helm      | ~> 1.1    |
| template  | ~> 2.1    |

## Providers

| Name | Version |
| ---- | ------- |
| helm | ~> 1.1  |

## Inputs

| Name                           | Description                                                                                           | Type     | Default        | Required |
| ------------------------------ | ----------------------------------------------------------------------------------------------------- | -------- | -------------- | :------: |
| drone_github_client_id         | GitHub OAuth application client id (see Drone installation guide)                                     | `string` | n/a            |   yes    |
| drone_github_client_secret     | GitHub OAuth application client secret (see Drone installation guide)                                 | `string` | n/a            |   yes    |
| drone_helm_chart_version       | Drone helm chart version to use                                                                       | `string` | `""`           |    no    |
| drone_ingress_class            | Ingress class to use for Drone                                                                        | `string` | `"nginx"`      |    no    |
| drone_ingress_enabled          | Enable/disable Drone ingress                                                                          | `bool`   | `true`         |    no    |
| drone_ingress_tls_acme_enabled | Enable/disable acme TLS for ingress                                                                   | `string` | `"true"`       |    no    |
| drone_ingress_tls_secret_name  | Secret name for Drone TLS cert                                                                        | `string` | `"drone-cert"` |    no    |
| drone_namespace                | Namespace to release Drone into                                                                       | `string` | `"drone"`      |    no    |
| drone_rpc_secret               | Unique shared secret (see Drone installation guide)                                                   | `string` | n/a            |   yes    |
| drone_server_host              | Hostname for Drone (will be utilised in ingress if enabled)                                           | `string` | n/a            |   yes    |
| drone_server_proto             | Protocol for Drone (Either http or https)                                                             | `string` | `"https"`      |    no    |
| drone_user_create              | Primary admin account to create (see Drone administrators guide)                                      | `string` | n/a            |   yes    |
| drone_user_filter              | Filter scope for permitted registrations, i.e. your organisation name (see Drone registrations guide) | `string` | n/a            |   yes    |

## Outputs

No output.
