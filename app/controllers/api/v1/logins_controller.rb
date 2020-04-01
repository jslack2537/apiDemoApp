# frozen_string_literal: true

class Api::V1::LoginsController < ApplicationController
  def index
    @logins = Login.count
    respond_to do |format|
      format.json { render json: @logins.to_json, status: :ok }
    end
  end
end
