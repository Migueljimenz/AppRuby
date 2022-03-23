class Programas::CursosController < ApplicationController
  before_action :set_programa
  
  def index
    @cursos = @programa.curso
  end

  def show
  end

  def new
    @curso = @programa.curso.new
  end

  def create
    @curso = @programa.curso.new(curso_params)
    if @curso.save
      redirect_to programa_cursos_url
    else 
      render :new
    end
  end

  private

  def set_programa
    @programa = Programa.find(params[:programa_id])
  end

  def curso_params
    params.require(:curso).permit(:ficha)
  end
end
