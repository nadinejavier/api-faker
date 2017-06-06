class HedgehogsController < ApplicationController
  def show
    @hedgehog = Hedgehog.find(params[:id])
    render 'show.json.jbuilder'
  end

  def index
     @hedgehogs = Hedgehog.all
     render 'index.json.jbuilder'
  end

  def create
      @hedgehog = Hedgehog.create(
          first_name: params[:first_name],
          age: params[:age], 
          color: params[:color],
          favorite_food: params[:favorite_food]
        )
      render 'show.json.jbuilder'
  end

  def update
    @hedgehog = Hedgehog.find(params[:id])
    @hedgehog.update(
          first_name: params[:first_name],
          age: params[:age], 
          color: params[:color],
          favorite_food: params[:favorite_food]
      )
    render 'show.json.jbuilder'
  end

  def destroy
    @hedgehog = Hedgehog.find(params[:id])
    @hedgehog.destroy
    @hedgehog = Hedgehog.all 
    render 'index.json.jbuilder'
  end


end
