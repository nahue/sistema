class TbPlantillasController < ApplicationController 
  def index
	@tbplantillas = TbPlantilla.paginate :page => params[:pagina]
  end

  def new
	@tb_plantilla = TbPlantilla.new
  end

  def create
    @tb_plantilla = TbPlantilla.create(params[:tb_plantilla])
    #flash[:success] = "Plantilla creada correctamente."
    respond_to do |format|
      format.html { redirect_to tb_plantillas_path }
      format.js {render :layout => false}
    end
  end
  
  def edit
	@tb_plantilla = TbPlantilla.find(params[:id])
  end

  def update
    @tb_plantilla = TbPlantilla.find(params[:id])
     if @tb_plantilla.update_attributes(params[:tb_plantilla])
      flash[:success] = "Plantilla actualizada correctamente."
      redirect_to tb_plantillas_path
     else
      flash[:error] = "Hubo un error"
      render :action => "edit"
    end
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
