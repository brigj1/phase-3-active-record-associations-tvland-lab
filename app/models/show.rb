class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def characters
  end

  def network
  end

  def actor_list
  end
end