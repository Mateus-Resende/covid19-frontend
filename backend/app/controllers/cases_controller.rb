# frozen_string_literal: true

class CasesController < ApplicationController
  def index
    render json: Case.limit(limit).offset(offset)
  end
end
