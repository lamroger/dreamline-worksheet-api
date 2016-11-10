class WorksheetsController < ApplicationController
  before_action :authenticate_user

  def index
    if current_user
      render json: Worksheet.where(user_id: current_user.id)
    else
      render json: {}
    end
  end
end
