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

  def edit
    @page = Page.find(params[:id])
  end
end
