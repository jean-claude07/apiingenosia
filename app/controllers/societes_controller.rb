class SocietesController < ApplicationController
  before_action :set_societe, only: [:show, :update, :destroy]

  # GET /societes
  def index
    @societes = Societe.all.reorder('id DESC')

    render json: @societes
  end

  # GET /societes/1
  def show
    render json: @societe
  end

  # POST /societes
  def create
    @societe = Societe.new(societe_params)

    if @societe.save
      render json: @societe, status: :created, location: @societe
    else
      render json: @societe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /societes/1
  def update
    if @societe.update(societe_params)
      render json: @societe
    else
      render json: @societe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /societes/1
  def destroy
    @societe.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_societe
      @societe = Societe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def societe_params
      params.permit(:nom, :description, :codepostal, :ville, :category )
    end
end
