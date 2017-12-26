class FlowersController < ApplicationController
  def index
    flowers = Flower.all
    render json: flowers.as_json
  end

  def show
    flower = Flower.find_by(id: params[:id])
    render json: flower.as_json
  end

  def create
    flower = Flower.new(
      name: params[:name],
      color: params[:color],
      price: params[:price])
    if flower.save
      render json: flower.as_json
    else
      render json: {errors: flower.errors.full_messages}
    end
  end
end

