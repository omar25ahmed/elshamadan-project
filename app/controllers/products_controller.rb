class ProductsController < ApplicationController
  def index
    @brands = Brand.all
  end
end
