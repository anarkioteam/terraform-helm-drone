env:
  DRONE_SERVER_HOST: ${ drone_server_host }
  DRONE_SERVER_PROTO: ${ drone_server_proto }
  DRONE_USER_CREATE: ${ drone_user_create }
  DRONE_USER_FILTER: ${ drone_user_filter }

ingress:
  enabled: ${ drone_ingress_enabled }
  annotations:
    kubernetes.io/ingress.class: ${ drone_ingress_class }
    kubernetes.io/tls-acme: "${ drone_ingress_tls_acme_enabled }"
  hosts:
    - host: ${ drone_server_host }
      paths:
        - "/"
  tls:
    - secretName: ${ drone_ingress_tls_secret_name }
      hosts:
        - ${ drone_server_host }
