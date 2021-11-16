class SpacesController < ApplicationController
  def index
    @spaces = Space.all
  end

  def show
    @space = Space.find(params[:id])
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    if @space.save
      redirect_to space_path(@space)
    else
      render :new
    end
  end

  def destroy
    @space.destroy
    redirect_to spaces_path
  end

  private

  # def set_space
  #   @space = Space.find(params[:id])
  # end

  def space_params
    params.require(:space).permit(:title, :space_type, :price)
  end
end