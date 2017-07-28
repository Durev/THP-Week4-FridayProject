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
  end

  def index
  end

  def corsaire_params
    params.require(:corsaire).permit(:first_name, :age)
  end

end
