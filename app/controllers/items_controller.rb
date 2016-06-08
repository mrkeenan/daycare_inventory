class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new
    @item.size = params[:size]
    @item.child_id = params[:child_id]
    @item.total_cnt = params[:total_cnt]
    @item.current_cnt = params[:current_cnt]
    @item.min_cnt = params[:min_cnt]
    @item.take_cnt = params[:take_cnt]
    @item.return_cnt = params[:return_cnt]
    @item.weather_type = params[:weather_type]
    @item.description = params[:description]

    if @item.save
      redirect_to :back, :notice => "Item created successfully."
    else
      redirect_to :back, :notice => "Item was not created."
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    @item.size = params[:size]
    @item.child_id = params[:child_id]
    @item.total_cnt = params[:total_cnt]
    @item.current_cnt = params[:current_cnt]
    @item.min_cnt = params[:min_cnt]
    @item.take_cnt = params[:take_cnt]
    @item.return_cnt = params[:return_cnt]
    @item.weather_type = params[:weather_type]
    @item.description = params[:description]

    if @item.save
      redirect_to :back, :notice => "Item updated successfully."
    else
      redirect_to :back, :notice => "Item was not updated."
    end
  end

  def destroy
    @item = Item.find(params[:id])

    @item.destroy

    redirect_to :back, :notice => "Item deleted."
  end
end
