# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    render json: {
      data: Product.limit(limit).offset(offset),
      total_pages: (Product.count / limit).ceil + 1
    }
  end
end
