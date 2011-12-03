class VersionsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @version = @book.versions.create(params[:version])
    redirect_to book_path(@book)
  end
  
end
