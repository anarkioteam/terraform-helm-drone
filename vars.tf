variable "drone_server_host" {
  description = "Hostname for Drone (will be utilised in ingress if enabled)"
  type        = string
}

variable "drone_server_proto" {
  description = "Protocol for Drone (Either http or https)"
  type        = string
  default     = "https"
}

variable "drone_rpc_secret" {
  description = "Unique shared secret (see Drone installation guide)"
  type        = string
}

variable "drone_github_client_id" {
  description = "GitHub OAuth application client id (see Drone installation guide)"
  type        = string
}

variable "drone_github_client_secret" {
  description = "GitHub OAuth application client secret (see Drone installation guide)"
  type        = string
}

variable "drone_user_create" {
  description = "Primary admin account to create (see Drone administrators guide)"
  type        = string
}

variable "drone_user_filter" {
  description = "Filter scope for permitted registrations, i.e. your organisation name (see Drone registrations guide)"
  type        = string
}

variable "drone_ingress_class" {
  description = "Ingress class to use for Drone"
  type        = string
  default     = "nginx"
}

variable "drone_ingress_enabled" {
  description = "Enable/disable Drone ingress"
  type        = bool
  default     = true
}

variable "drone_ingress_tls_acme_enabled" {
  description = "Enable/disable acme TLS for ingress"
  type        = string
  default     = "true"
}

variable "drone_ingress_tls_secret_name" {
  description = "Secret name for Drone TLS cert"
  type        = string
  default     = "drone-cert"
}
