class CalculationsController < ApplicationController
  include HasCrudOperations

  # GET /calculations/recent
  def recent
    render json: Calculation.recent
  end

  def calculation_params
    # use our new params method inherited from ApplicationController
    deserialized_params.require(:calculation).permit(:value_a, :value_b, :operator)
  end
end
