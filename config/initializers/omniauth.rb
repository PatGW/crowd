Rails.application.config.middleware.use OmniAuth::Builder do
  # ...
  provider :identity, :model => Identity
  # provider :identity, on_failed_registration: lambda { |env|
  #   IdentitiesController.action(:new).call(env)
  # }
end