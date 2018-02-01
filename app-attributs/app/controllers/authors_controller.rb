class AuthorsController < ApplicationController
  def create
    @author = Author.new(author_params)
    @author.save
    #redirect_to @author
  end

  def destroy
    @author = Author.find(param[:id])
    @author.destroy
    #redirect_to authors_path
  end

  def edit
    @author = Author.find(params[:id])
  end

  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def show
    @author = Author.find(params[:id])
  end

  def update
    #@author = Author.find(params[:id])
    @author.update(author_params)
    #if @author.update(author_params)
    #  redirect_to @author
    #else
    #render 'edit'
    #end
  end

  private
  def author_params
    params.require(:author).permit(:username, :email, :password)
  end

end
