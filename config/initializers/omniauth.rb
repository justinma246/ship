OmniAuth.config.logger = Rails.logger
 
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '219711898462277', '7689d0c2799922119c2a371f7f9fefcb', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}, :scope => "public_profile, email, user_friends"}
end