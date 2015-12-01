class StaticController < ApplicationController
  def login
  end

  def home
    @categories = Category.without_soft_deleted
    @items = Item.without_soft_deleted
  end
end
