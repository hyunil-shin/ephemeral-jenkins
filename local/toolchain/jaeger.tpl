# Default values for jaeger-operator.
# This is a YAML-formatted file.
# Declare variables to be passed into your templates.
image:
  repository: jaegertracing/jaeger-operator
  tag: 1.18.0
  pullPolicy: IfNotPresent
  imagePullSecrets: []

crd:
  install: true

jaeger:
  # Specifies whether Jaeger instance should be created
  create: false
  spec: {}

rbac:
  # Specifies whether RBAC resources should be created
  create: true
  pspEnabled: false
  clusterRole: false

serviceAccount:
  # Specifies whether a ServiceAccount should be created
  create: true
  # The name of the ServiceAccount to use.
  # If not set and create is true, a name is generated using the fullname template
  name:

resources: {}
  # limits:
  #  cpu: 100m
  #  memory: 128Mi
  # requests:
  #  cpu: 100m
  #  memory: 128Mi

nodeSelector: {}

tolerations: []

affinity: {}

securityContext: {}
