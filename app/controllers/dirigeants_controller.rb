class DirigeantsController < ApplicationController
  before_action :set_dirigeant, only: [:show, :update, :destroy]

  # GET /dirigeants
  def index
    @dirigeants = Dirigeant.all.reorder('id DESC')

    render json: @dirigeants
  end

  # GET /dirigeants/1
  def show
    render json: @dirigeant
  end

  # POST /dirigeants
  def create
    @dirigeant = Dirigeant.new(dirigeant_params)

    if @dirigeant.save
      render json: @dirigeant, status: :created, location: @dirigeant
    else
      render json: @dirigeant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dirigeants/1
  def update
    if @dirigeant.update(dirigeant_params)
      render json: @dirigeant
    else
      render json: @dirigeant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dirigeants/1
  def destroy
    @dirigeant.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dirigeant
      @dirigeant = Dirigeant.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dirigeant_params
      params.permit(:name, :sexe, :email)
    end
end
