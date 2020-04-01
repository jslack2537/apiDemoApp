# frozen_string_literal: true

class Api::V1::LoginsController < ApplicationController
  def index
    @logins = Login.where(login_params)
    respond_to do |format|
      format.json { render json: @logins.to_json, status: :ok }
    end
  end

  private

  def login_params
    params.permit(:user_id, :date)
  end
end
