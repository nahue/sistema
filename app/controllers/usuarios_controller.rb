class UsuariosController < ApplicationController
  def new
    @usuario = Usuario.new
  end

  def create
    @usuario = Usuario.new(params[:usuario])
    if @usuario.save
      flash[:notice] = "Te has registrado correctamente."
      redirect_to root_url
      else
      render :action => 'new'
    end
  end
  
  def edit
    @usuario = current_user
  end

  def update
    @usuario = current_user
    if @usuario.update_attributes(params[:usuario])
      flash[:success] = "Perfil actualizado correctamente."
      redirect_to root_url
    else
      render :action => "edit"
    end
  end
end
