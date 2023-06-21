# == Schema Information
#
# Table name: developers
#
# id          :int          not null, primary key
# uniqname    :varchar      not null
# first_name  :varchar      not null
# last_name   :varchar      not null

class Developer < ApplicationRecord
    has_many :dev_apps, dependent: :destroy
    has_many :webapps, through: :dev_apps

    def full_name
        "#{first_name} #{last_name}"
    end

    validates_presence_of :uniqname, :first_name, :last_name
end
