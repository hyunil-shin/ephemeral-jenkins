module "product-a" {
  source = "../modules/jenkins"

  product_name = "product-a"

  pipelines = [
    {
      repo = "springtrader-marketsummary",
      org  = "liatrio"
    }
  ]

  plugins = [
    "job-dsl:1.77"
  ]
}

module "product-b" {
  source = "../modules/jenkins"

  product_name = "product-b"

  pipelines = [
    {
      repo = "sample-app-api",
      org  = "liatrio"
    }
  ]

  plugins = [
    "job-dsl:1.77",
    "blueocean:1.24.0"
  ]
}
