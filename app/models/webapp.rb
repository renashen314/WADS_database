# == Schema Information
#
# Table name: webapp
#
# id                          :int          not null, primary key
# project_name                :varchar      not null
# language                    :varchar      not null
# framework	                  :varchar	    not null
# description	              :tinytext	    not null
# notes	                      :tinytext	
# status	                  :enum("Dev", "Prod", "EOL","Dead")	not null
# authentication	          :varchar	    not null
# database	                  :varchar	    not null
# server_OS	                  :varchar	
# server_location	          :varchar	
# documentation	              :varchar	    not null
# git_repo	                  :varchar	    not null
# app_url	                  :varchar	
# risk_manage_consideration	  :varchar	
# launch_date	              :date	
# end_of_life_date            :date

class Webapp < ApplicationRecord
    has_many :developers, through: :dev_apps, association_foreign_key: :webapp_id, dependent: :destroy
    has_many :dev_apps
    accepts_nested_attributes_for :developers, reject_if: :all_blank, allow_destroy: true

    def developers_attributes=(developers_attributes)
        developers_attributes.each do |i, developers_attributes|
            self.developers.build(developers_attributes)
        end
    end

    def self.ransackable_attributes(auth_object = nil)
        ["app_url", "authentication", "created_at", "database", "description", "documentation", "end_of_life_date", "framework", "git_repo", "id", "language", "launch_date", "notes", "project_name", "risk_manage_consideration", "server_location", "server_os", "status", "updated_at"]
      end

    def self.ransackable_associations(auth_object = nil)
        ["dev_apps", "developers"]
    end

    validates_presence_of :project_name, :language, :framework, :description, :status, :authentication, :database, :documentation, :git_repo
    validates :project_name, :uniqueness => true
    validates_associated :developers
end
