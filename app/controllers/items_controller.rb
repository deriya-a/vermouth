class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  private

  def item_params
    params.require(:item).permit(:category_id, :color_id, :type_id, :item_memo, :image).merge(user_id: current_user.id)
  end
end
