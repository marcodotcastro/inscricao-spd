Sidekiq.configure_client do |config|
    config.redis = if Rails.env.production?
                     { url: ENV['REDIS_URL'], password: ENV['REDIS_PASSWORD'] }
                   else
                     { url: 'redis://0.0.0.0:6379/0' }
                   end
end
   
Sidekiq.configure_server do |config|
    config.redis = if Rails.env.production?
                     { url: ENV['REDIS_URL'], password: ENV['REDIS_PASSWORD'] }
                   else
                     { url: 'redis://0.0.0.0:6379/0' }
                   end
end
   