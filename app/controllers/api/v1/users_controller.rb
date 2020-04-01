class Api::V1::UsersController < ApplicationController

  def index
    @users = User.find_by(id: params[:id], first_name: params[:first_name], 
                            last_name: params[:last_name], email: params[:email],
                            city: params[:city], state: params[:state])
    respond_to do |format|
      format.json { render json: @users.to_json, status: :ok }
    end
  end
end