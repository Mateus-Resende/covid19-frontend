# frozen_string_literal: true

class TestPlacesController < ApplicationController
  def index
    render json: {
      data: TestPlace.limit(limit).offset(offset),
      total_pages: (TestPlace.count / limit).ceil + 1
    }
  end
end
