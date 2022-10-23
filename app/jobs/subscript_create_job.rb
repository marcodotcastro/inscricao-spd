class SubscriptCreateJob < ApplicationJob
  queue_as :default

  def perform(params)
    @subscript = Subscript.create(params)
  end
   
end
