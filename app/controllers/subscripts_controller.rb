class SubscriptsController < ApplicationController
  def new
    @subscript = Subscript.new
  end
end
