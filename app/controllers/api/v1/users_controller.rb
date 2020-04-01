# frozen_string_literal: true

class Api::V1::UsersController < ApplicationController
  def index
    if params[:id].present?
      ids = params[:id].split(',')
      @users = User.where(user_params.merge!(id: ids)).paginate(per_page: 50, page: params[:page]).order('id DESC')
      respond_to do |format|
        format.json { render json: @users.to_json, status: :ok }
      end
    elsif params[:state].present?
      states = params[:state].split(',')
      @users = User.where(user_params.merge!(state: states)).paginate(per_page: 50, page: params[:page]).order('id DESC')
      respond_to do |format|
        format.json { render json: @users.to_json, status: :ok }
      end
    elsif params[:city].present?
      citys = params[:city].split(',')
      @users = User.where(user_params.merge!(city: citys)).paginate(per_page: 50, page: params[:page]).order('id DESC')
      respond_to do |format|
        format.json { render json: @users.to_json, status: :ok }
      end
    else
      @users = User.where(user_params).paginate(per_page: 50, page: params[:page]).order('id DESC')
      respond_to do |format|
        format.json { render json: @users.to_json, status: :ok }
      end
      end
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :email, :city, :state)
  end
end
