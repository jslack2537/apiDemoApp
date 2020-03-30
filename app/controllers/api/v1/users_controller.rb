class Api::V1::UsersController < ApplicationController
    def index
        @users = User.first(50)
        respond_to do |format|
            format.json { render :json => @users.to_json, :status => :ok }
        end
    end

    def show
    end

end