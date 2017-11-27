class DosesController < ApplicationController
before_action :set_dose, only: [:show, :edit, :update, :destroy ]

  def index
    @doses = Dose.all
  end

  def show
  end

  def new
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'cocktails/show'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    # 1 Définir le cocktail où on supprime la dose
    # @cocktail = Cocktail.find(params[:id])

    # @cocktail.id = numero de l'id = 18
    # @cocktail_id = @cocktail.id

    # 3 Supprimer la dose
    @dose.destroy
    # 4 Redirige vers le cocktail
    redirect_to cocktail_path(@dose.cocktail_id)
  end

  private

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
     params.require(:dose).permit(:ingredient_id, :description)
  end
end
