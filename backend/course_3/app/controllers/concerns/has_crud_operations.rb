module HasCrudOperations
  extend ActiveSupport::Concern

  def index
    render json: serializer.new(collection).serialized_json
  end

  def show
    render json: serializer.new(individual).serialized_json
  end

  def create
    @individual = scope.new(individual_params)

    if individual.save
      render json: serializer.new(individual).serialized_json
    else
      render json: individual.errors, status: :unprocessable_entity
    end
  end

  def update
    if individual.update(individual_params)
      render json: serializer.new(individual).serialized_json
    else
      render json: individual.errors, status: :unprocessable_entity
    end
  end

  def destroy
    individual.destroy
    render :no_content
  end

  private

  def individual
    @individual ||= scope.find(params[:id])
  end

  def collection
    scope.all
  end

  def individual_params
    send("#{resource_name.downcase}_params")
  end

  def scope
    resource_name.constantize
  end

  def serializer
    "#{resource_name}Serializer".constantize
  end

  def resource_name
    self.class.name
      .gsub('Controller', '')
      .singularize
  end

  # Return a new ActionController::Parameters object with deserialized params
  def deserialized_params
    data = params.require(:data)

    type = data.require(:type).singularize
    attributes = data.require(:attributes).transform_keys { |key| key.downcase.underscore }

    ActionController::Parameters.new(type => attributes)
  end
end
