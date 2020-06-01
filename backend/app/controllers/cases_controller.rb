# frozen_string_literal: true

class CasesController < ApplicationController
  def index
    render json: {
      data: Case.limit(limit).offset(offset),
      total_pages: (Case.count / limit).ceil + 1
    }
  end
end
