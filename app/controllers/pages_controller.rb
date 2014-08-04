class PagesController < ApplicationController
  def index
    @pages = Page.order('name ASC')
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create 
    @page = Page.new(page_params)
    @sections = params[:page][:sections].split(",")
    @page.sections = @sections
    @page.save

    respond_with(@page) do |format|
      format.html {redirect_to []}
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    @page.update_attributes(page_params)
    @sections = params[:page][:sections].split(",")
    @page.sections = @sections
    @page.save
  end

  private

  def page_params
    params.require(:page).permit(:name, :body, :sections)
  end
end
