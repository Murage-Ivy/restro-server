class ReviewsController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def create
    review = Review.create!(review_params)
    render json: review, status: :created
  end

  def update
    byebug
    review = find_review
  end

  def destroy
    review = find_review
    review.destroy
    head :no_content
  end

  private

  def review_params
    params.permit(:title, :comment, :user_id, :restaurant_id)
  end

  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end

  def render_not_found_response
    render json: { errors: ["Review not found"] }, status: :not_found
  end

  def find_review
    Review.find(params[:id])
  end
end
