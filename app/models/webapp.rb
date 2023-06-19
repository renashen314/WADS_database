class Webapp < ApplicationRecord
    has_many :dev_apps, dependent: :destroy
    has_many :developers, through: :dev_apps 
end
