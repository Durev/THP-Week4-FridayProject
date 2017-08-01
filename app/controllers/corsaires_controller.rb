class CorsairesController < ApplicationController
  def new
  	@corsaire = Corsaire.new
  end

  def create
  	corsaire = Corsaire.create(corsaire_params)
  	redirect_to corsaire_path(corsaire.id)
  end


  def show
    @corsaire = Corsaire.find(params[:id])
  end

  def edit
    @corsaire = Corsaire.find(params[:id])
    #redirect_to corsaire_path(@corsaire.id)
    #esto no funciona, ya que inmediatamente me lleva a corsaire_path osea, show, y nunca llego a edit-nosense
  end

  def update
    @corsaire = Corsaire.find(params[:id])
    @corsaire.update(corsaire_params)
    redirect_to corsaires_path(@corsaire.id) #redirecting to INDEX (grafikart) otherwise to show->corsaire_path

  end

  def index
    @corsaire = Corsaire.all #creo que este es el que le envía a  la página index la info
  end

  def destroy
    @corsaire = Corsaire.find(params[:id])
    @corsaire.destroy
    redirect_to corsaires_path(@corsaire.id) #redirect to index
  end

  def corsaire_params
    params.require(:corsaire).permit(:first_name, :age)
  end

end
