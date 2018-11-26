class Current < ApplicationRecord
    def self.from_omniauth(auth)
        where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |current|
            current.provider = auth.provider
            current.uid = auth.uid
            current.name = auth.info.name
            current.oauth_token = auth.credentials.token
            current.oauth_expires_at = Time.at(auth.credentials.expires_at)
            current.save!
        end
    end
end
