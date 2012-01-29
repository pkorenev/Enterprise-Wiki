class PagesController < ApplicationController
  def index
  end
  
  def new
    if params[:type] == 'page'
      # normal page
      render :new_page
    elsif params[:type] == 'link'
      # hyperlink
      render :new_link
    elsif params[:type] == 'file'
      # downloadable file
      render :new_file
    else
      render :new
    end
  end
  
  def create
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
end
