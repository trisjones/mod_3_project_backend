
module Api
  module V1
    class UsersController < ApplicationController

      def index
        render json: User.includes(:games), include: ['games']
      end

      def create
        user = User.create(user_params)
        render json: user, status: 201
      end

      def show
      end

      private

      def user_params
        params.permit(:name)
      end

    end
  end
end
