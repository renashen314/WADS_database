# == Schema Information
#
# Table name: developers
#
# id          :int        not null, primary key
# app_id      :int        not null
# dev_id      :int        not null
# uniqname    :varchar    not null

class DevApp < ApplicationRecord
  # has_many :developers, :through => :dev_apps, :source => :developers
  belongs_to :developer
  belongs_to :webapp
end
