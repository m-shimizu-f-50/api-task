# frozen_string_literal: true

module Api
  module V1
    class CategoriesController < ApplicationController
      def index; end

      def create
        category = Category.new(category_params)
        if post.save
          render json: { status: 'SUCCESS', data: category }
        else
          render json: { status: 'ERROR', data: category.errors }
        end
      end

      private

      def category_params
        params.require(:category).permit(:name)
      end
    end
  end
end
