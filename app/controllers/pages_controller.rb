class PagesController < ApplicationController
  def index
    @pages = Page.order('name ASC')
  end

  def show
    @page = Page.find(params[:id])
    #@sections = params[:page][:sections].split(", ")
    @sections = @page.sections.split(", ")
    @page.sections = @sections
  end

  def new
    @page = Page.new
  end

  def create 
    #params[:body] = params[:hidden_body]

    @page = Page.new(page_params)
    # @sections = params[:page][:sections].split(", ")
    # @page.sections = @sections
    @page.save

    redirect_to [@page]
    
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    @page.update_attributes(page_params)
    # @sections = params[:page][:sections].split(", ")
    # @page.sections = @sections
    @page.save
  end

  private

  def page_params
    params.require(:page).permit(:name, :sections, :body)
  end
end
