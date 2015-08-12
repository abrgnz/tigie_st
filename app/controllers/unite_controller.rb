class UniteController < ApplicationController
  def index
    @steam = Chapter.all
  end
end
