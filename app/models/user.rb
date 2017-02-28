class User < ApplicationRecord
def self.sign_in_from_omniauth(auth)
  find_by(provider: auth['provider'], uid: auth['uid']) || create_user_from_omniauth(auth)

end

def self.create_user_from_omniauth(auth)
  create(
  provider: auth['provider'],
  uid: auth['uid'],
  name: auth['info']['name'],
  location: auth['info']['locale'],
  image_url: auth['info']['image'],
  url: auth['info']['urls']['Facebook']
  )

end

has_many :destinations

end
