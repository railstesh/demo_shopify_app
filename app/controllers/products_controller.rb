class ProductsController < ApplicationController
  def index
    products = RestClient.get("https://#{ENV['SHOPIFY_API_KEY']}:#{ENV['SHOPIFY_API_PASSWORD']}@daemon-rr.myshopify.com/admin/api/2020-01/products.json")
    render json: products
  end
end
