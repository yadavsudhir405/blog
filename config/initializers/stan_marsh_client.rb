require 'stan_marsh_client'

StanMarshClient.configure do |config|
  config.stan_marsh_host = Figaro.env.stan_marsh_host
  config.client_id       = Figaro.env.stan_marsh_client_id
  config.pass_key        = Figaro.env.stan_marsh_pass_key
  config.enable_sentry   = Figaro.env.enable_sentry == 'true'
  config.enable_hystrix  = Figaro.env.enable_hystrix == 'true'

  #TODO: Aninda - configure hystrix properties
end
