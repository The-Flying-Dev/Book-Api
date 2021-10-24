module Api
  module V1
    class BooksController < ApplicationController
      def index
        books = Book.all
        render json: books #display books, can use except: :title to exclude data or can use any column of choice
      end

      def show
        book = Book.find(params[:id])
        render json: book
      end


    end
  end
end

