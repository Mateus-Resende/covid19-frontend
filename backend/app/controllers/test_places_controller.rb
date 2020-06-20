# frozen_string_literal: true

class TestPlacesController < ApplicationController
  def index
    render json: {
      data: TestPlace.all
    }
  end
end
