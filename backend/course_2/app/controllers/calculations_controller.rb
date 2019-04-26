class CalculationsController < ApplicationController
  before_action :set_calculation, only: [:show, :update, :destroy]

  # GET /calculations
  def index
    @calculations = Calculation.all

    render json: serialize(@calculations)
  end

  # GET /calculations/recent
  def recent
    @calculations = Calculation.recent

    render json: serialize(@calculations)
  end

  # GET /calculations/1
  def show
    render json: serialize(@calculation)
  end
  # POST /calculations
  def create
    @calculation = Calculation.new(calculation_params)

    if @calculation.save
      render json: serialize(@calculation), status: :created, location: @calculation
    else
      render json: @calculation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /calculations/1
  def update
    if @calculation.update(calculation_params)
      render json: serialize(@calculation)
    else
      render json: @calculation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /calculations/1
  def destroy
    @calculation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calculation
      @calculation = Calculation.find(params[:id])
    end

    # method to get the json
    def serialize(objects)
      CalculationSerializer.new(objects).serialized_json
    end

    # Return a new ActionController::Parameters object with deserialized params
    def deserialized_params
      data = params.require(:data)

      type = data.require(:type).singularize
      attributes = data.require(:attributes).transform_keys { |key| key.downcase.underscore }

      ActionController::Parameters.new(type => attributes)
    end

    # Only allow a trusted parameter "white list" through.
    def calculation_params
      # use our new params method inherited from ApplicationController
      deserialized_params.require(:calculation).permit(:value_a, :value_b, :operator)
    end
end
