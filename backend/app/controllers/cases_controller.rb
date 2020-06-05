# frozen_string_literal: true

class CasesController < ApplicationController
  def index
    render json: {
      data: Case.all
    }
  end
end
