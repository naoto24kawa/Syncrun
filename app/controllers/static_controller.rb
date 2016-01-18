class StaticController < ApplicationController
  def login
  end

  def home
    @categories = Category.without_soft_destroyed
  end
end
