class ItemsController < ApplicationController
  before_action :set_department
  before_action :set_item

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
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
    def set_department
      @department = Department.find(params[:department_id])
    end

    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:title)
    end

end
