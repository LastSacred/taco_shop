class TacosController < ApplicationController
  def home
    render 'index'
  end

  def index
    @tacos = Taco.all
    render json: @tacos.to_json, status: :ok
  end

  def create
    byebug
  end
end
