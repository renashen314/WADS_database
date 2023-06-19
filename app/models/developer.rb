class Developer < ApplicationRecord
    has_many :dev_apps, dependent: :destroy
    has_many :webapps, through: :dev_apps
end
