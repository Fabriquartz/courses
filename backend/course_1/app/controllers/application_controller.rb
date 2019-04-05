class ApplicationController < ActionController::API
  private
    # alternative to params (still returns a parameter object)
    def deserialized_params
      ActionController::Parameters.new(
        deserialize_params(params.require(:data))
      )
    end

    # find the type and attributes and return a new hash
    def deserialize_params(data)
      type       = data.require(:type).singularize
      attributes = data.require(:attributes).transform_keys(&method(:sanitize_attribute))

      { type => attributes }
    end

    # applies some transforms on the input
    def sanitize_attribute(key)
      key.downcase.underscore
    end
end
