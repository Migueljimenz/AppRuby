class AreasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_area, only: [:show, :edit, :destroy]
  def index
    @areas = Area.all
    
  end

  def show
  end

  def edit
  end

  def new
    @area = Area.new
  end

  def create
    @area = Area.new(area_params)
    if @area.save 
      redirect_to areas_path
    else
      render :new
    end
  end

  def update
    @area = Area.find(params[:id])
    if @area.update(area_params_update)
      redirect_to areas_path
    else
      render :edit
    end
  end

 def destroy
  @area.destroy
  redirect_to areas_path
 end

  private

  def set_area
    @area = Area.find(params[:id])
  end

  def area_params_update
    params.require(:area).permit(:nombreArea)
  end

  def area_params
    params.require(:area).permit(:nombreArea)
  end
end
