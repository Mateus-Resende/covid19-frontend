# frozen_string_literal: true

class TestPlacesController < ApplicationController
  def index
    render json: TestPlace.limit(limit).offset(offset)
  end
end
