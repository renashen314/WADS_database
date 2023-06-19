class DevApp < ApplicationRecord
  belongs_to :developer
  belongs_to :webapp
end
