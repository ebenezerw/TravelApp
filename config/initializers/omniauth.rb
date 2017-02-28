Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '582887531905771', 'ddbf0ea0e44019bb86ffc313db783d57', :image_size => 'large',
    scope: 'public_profile', info_fields: 'id,name,link'
end
