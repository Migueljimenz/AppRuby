class ProgramasController < ApplicationController
  def index
    @programas = Programa.all
  end
end
