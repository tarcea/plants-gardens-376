class PlantsController < ApplicationController

  def create
    @garden = Garden.find(params[:garden_id])
    # @plant = @garden.plants.build(plant_params)

    # step 1: create instance
    @plant = Plant.new(plant_params)
    # step 2: add the garden to the plant
    @plant.garden = @garden

    if @plant.save
      redirect_to garden_path(@garden)
    else
      render "gardens/show"
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    redirect_to garden_path(@plant.garden) # gardens/:id
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
