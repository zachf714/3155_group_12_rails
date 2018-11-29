class Preload < ApplicationRecord
    has_many :users, dependent: :destroy
end
