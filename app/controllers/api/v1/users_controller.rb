class Api::V1::UsersController < ApplicationController
   

  def index
    @users = User.first(50)
    respond_to do |format|
      format.json { render json: @users.to_json, status: :ok }
    end
  end

  def show
    @user = User.find(params[:id])
    render json: {
        id: @user.id,
        first_name: @user.first_name,
        last_name: @user.last_name,
        email: @user.email,
        city: @user.city,
        state: @user.state
    }
  end
end