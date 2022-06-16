class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def characters
  end

  def shows
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    self.characters.map do |character|
        "#{character.name} - #{character.show.name}"
    end
  end

end