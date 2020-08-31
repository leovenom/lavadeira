class ItemsController < ApplicationController
  before_action :set_order
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET orders/1/items
  def index
    @items = @order.items
  end

  # GET orders/1/items/1
  def show
  end

  # GET orders/1/items/new
  def new
    @item = @order.items.build
  end

  # GET orders/1/items/1/edit
  def edit
  end

  # POST orders/1/items
  def create
    @item = @order.items.build(item_params)

    if @item.save!
      redirect_to([@item.order, @item], notice: 'Item was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT orders/1/items/1
  def update
    if @item.update_attributes(item_params)
      redirect_to([@item.order, @item], notice: 'Item was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE orders/1/items/1
  def destroy
    @item.destroy

    redirect_to order_items_url(@order)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:order_id])
    end

    def set_item
      @item = @order.items.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit(:tipo, :price, :color, :order_id)
    end
end
