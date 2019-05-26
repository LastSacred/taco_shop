class TacosController < ApplicationController
  def home
    render 'index'
  end

  def index
    @tacos = Taco.all
    render json: @tacos.to_json, status: :ok
  end

  def create
    @taco = Taco.create(taco_params)
    render json: @taco.to_json, status: :created
  end

  def destroy
    @taco = Taco.find(params['id'])
    @taco.delete
  end

  private

  def taco_params
		params.require(:taco).permit(:meat, :rice, :salsa, :notes)
	end
end
