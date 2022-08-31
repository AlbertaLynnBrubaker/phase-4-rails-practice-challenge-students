class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

private

def render_not_found_response(error)
    render json: { message: error.message }, status: :not_found
end

def render_unprocessable_entity(error)
    render json: { message: error.message }, status: :unprocessable_entity
end

end
