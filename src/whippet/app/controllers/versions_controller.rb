class VersionsController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @version = @book.versions.build(params[:version])
    respond_to do |format|
      if @version.save
        format.html { redirect_to @book, notice: 'Version was successfully created.' }
        format.json { render json: @book, status: :created, location: @book }
      else
        format.html { redirect_to book_path @book }
        format.json { render json: @version.errors, status: :unprocessable_entity }
      end   
    end 
  end
  
  def destroy
    @book = Book.find(params[:book_id])
    @version = @book.versions.find(params[:id])
    @version.destroy
    redirect_to book_path(@book)
  end
end
