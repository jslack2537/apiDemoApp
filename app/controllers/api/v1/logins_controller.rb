class Api::V1::LoginsController < ApplicationController
    def index
        @logins = Login.all
        respond_to do |format|
            format.json { render :json => @logins.to_json, :status => :ok }
        end
    end

    def show
    end

end