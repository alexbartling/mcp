Rails.application.config.middleware.use OmniAuth::Builder do
   provider :facebook, '409650662449587', '683320fa2e98f5b92d262013f98a2fb4'
end