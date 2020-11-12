# frozen_string_literal: true

module Api
  module V1
    class IdeasController < ApplicationController
      def index
        @ideas = Idea.order(created_at: :desc)
        render json: { status: 201, message: 'Loaded posts', data: @ideas }
      end

      def create
        @idea = Idea.new(idea_params)
        @idea.save!
        render json: @idea, status: 201
      rescue StandardError => e
        render json: e, status: 404
      end

      private

      def idea_params
        params.permit(:catagory_id, :body)
      end
    end
  end
end
