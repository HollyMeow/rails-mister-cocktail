class DosesController < ApplicationController
before_action :set_dose, only: [:show, :edit, :update, :destroy]

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
    @dose.destroy
    redirect_to doses_path
  end

  private

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
     params.require(:dose).permit(:ingredient_id, :description)
  end
end
