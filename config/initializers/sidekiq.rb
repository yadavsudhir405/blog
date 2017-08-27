Sidekiq.configure_server do |config|
  config.redis = { url: "redis://#{Figaro.env.sidekiq_redis_host}" }
end

Sidekiq.configure_client do |config|
  config.redis = { url: "redis://#{Figaro.env.sidekiq_redis_host}" }
end

