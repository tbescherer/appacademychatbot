require './lita-jonathan'

Lita.configure do |config|
  config.redis[:url] = ENV["REDISTOGO_URL"]
  config.http.port = ENV["PORT"]

  config.robot.name = "Lita"
  config.robot.log_level = :info
  # config.handlers.wolfram_alpha.app_id = "RHKU9R-7Y8GJRJ9R8"
  config.robot.admins = ["U0558275A"]

  config.robot.adapter = :slack
  config.adapters.slack.token = "xoxb-5200809773-dr6t4P1YCeaebgQqfbPMElFE"
  config.robot.locale = 'en-US'
  config.adapters.shell.private_chat = true

  # config.adapter.password = "secret"

  ## Example: Set options for the Redis connection.
  # config.redis.host = "127.0.0.1"
  # config.redis.port = 1234

  ## Example: Set configuration for any loaded handlers. See the handler's
  ## documentation for options.
  # config.handlers.some_handler.some_config_key = "value"
end
