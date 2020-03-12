class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find params[:plant_id]
    @plant_tag = PlantTag.new
  end

  def create
    @plant = Plant.find params[:plant_id]

    # this was the old way
    # @tag = Tag.find params.require(:plant_tag).permit(:tag)[:tag]

    @tags = Tag.find params[:plant_tag][:tag_id]

    @tags.each do |tag|
      @plant_tag = PlantTag.new
      @plant_tag.plant = @plant
      @plant_tag.tag = tag
      @plant_tag.save
    end

    # we're doing like this

    # this is not needed like this
    # @plant_tag.plant_id = @plant.id
    # this is no longer need
    # @plant_tag.tag_id = @tag.id

    # if @plant_tag.save
    redirect_to garden_path(@plant.garden.id)
    # else
      # render :new
    # end
  end

  private

  # def plant_tag_params
  #   params.require(:plant_tag).permit(:tag_id)
  # end
end
