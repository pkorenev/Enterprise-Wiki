class PagesController < ApplicationController
  def index
  end
  
  def new
    @page = Page.new
    
    if params[:type] == 'page'
      @page.type = Page::NORMAL
      @revision = @page.revisions.build
      render :new_page
    elsif params[:type] == 'link'
      @page.type = Page::LINK
      @page.build_hyperlink
      render :new_link
    elsif params[:type] == 'file'
      @page.type = Page::FILE
      render :new_file
    else
      render :new
    end
  end
  
  def create
    @page = Page.new(params[:page])
    @page.owner_name = 'test-user-name'
    @page.group_id = 2
    @page.permission = 777
    
    if @page.save
      redirect_to @page, notice: 'Page was successfully created.'
    elsif @page.is_normal?
      render :new_page
    elsif @page.is_link?
      render :new_link
    elsif @page.is_file?
      render :new_file
    else
      render :new
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
end
