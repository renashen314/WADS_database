# == Schema Information
#
# Table name: webapps
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
    has_many :dev_apps, dependent: :destroy
    has_many :developers, through: :dev_apps 

    validates_presence_of :project_name, :language, :framework, :description, :status, :authentication, :database, :documentation, :git_repo
end
