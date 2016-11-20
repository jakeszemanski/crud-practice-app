class ListingsController < ApplicationController
  def index
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    listing = Listing.new(name: params[:name], price: params[:price], description: params[:description])
    listing.save
    render 'create.html.erb'
  end

  def show
    render 'show.html.erb'
  end

  def edit
    @listing = Listing.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    listing = Listing.find_by(id: params[:id])
    listing.name = params[:name]
    listing.price = params[:price]
    listing.description = params[:description]
    listing.save
    render 'update.html.erb'
  end

  def destroy
    render 'destroy.html.erb'
  end

end
