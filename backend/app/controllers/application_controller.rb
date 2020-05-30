# frozen_string_literal: true

class ApplicationController < ActionController::API
  def offset
    ((page_params[:page] || 1) - 1) * limit
  end

  def limit
    page_params[:limit].to_i || 15
  end

  def page_params
    params.permit(:pages, :limit)
  end
end
