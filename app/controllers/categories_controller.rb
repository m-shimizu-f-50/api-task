# frozen_string_literal: true

class CategoriesController < ApplicationController
  def index
    @categories = Category.all

    render json: @categories
  end

  def create
    @category = Category.new(idea_params)

    if @category.save
      render json: @category, status: :created, location: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
