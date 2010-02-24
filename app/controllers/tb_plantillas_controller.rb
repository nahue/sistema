class TbPlantillasController < ApplicationController 
  def index
	@tbplantillas = TbPlantilla.paginate :page => params[:pagina]
  end

  def new
	@tb_plantilla = TbPlantilla.new
  end

  def edit
	@tb_plantilla = TbPlantilla.find(params[:id])
  end
  def destroy
    @tb_plantilla = TbPlantilla.find(params[:id])
    if @tb_plantilla.destroy
      flash[:notice] = "Eliminado."
      redirect_to root_url
    else
      flash[:error] = "No se pudo eliminar."
    end
  end
end