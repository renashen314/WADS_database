class StaticPagesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:homepage, :about]
    def homepage

    end
end