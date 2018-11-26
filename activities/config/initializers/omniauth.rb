OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '798619939772-uh6et9nsccnfm7tstgq0sgetq88hte07.apps.googleusercontent.com', '9O6jlfIhWJ09omwZ0hUZTAHv', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end