# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    render json: Product.limit(limit).offset(offset)
  end
end
