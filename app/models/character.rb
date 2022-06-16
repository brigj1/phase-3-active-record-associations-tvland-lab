class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def actor
    actor
  end

  def show
    show
  end

  def say_that_thing_you_say
    "#{name} always says #{catchphrase}"
    #binding.pry
  end


end