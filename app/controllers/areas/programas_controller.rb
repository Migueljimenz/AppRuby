class Areas::ProgramasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_area 

  def index
    @programas = @area.programas
    #if @programas.empty?
      # flash[:alert] = "No hay programas registrados"
    #else
      #   flash[:notice] = "Programas cargados"
    #end
  end

  def show
    @programa = @area.programas.find(params[:id])
  end

  def new
    @programa = @area.programas.new
  end

  def edit
  end

  def update
  end

  def create
    @programa = @area.programas.new(programa_params)
    if @programa.save 
      redirect_to area_programa_url(@area, @programa)
    else
      render :new
    end
  end

  private

  def set_area
    @area = Area.find(params[:area_id])
  end

  def programa_params
    params.require(:programa).permit(:nombre)
  end

  def programa_params_update
    params.require(:programa).permit(:nombre)
  end
end
