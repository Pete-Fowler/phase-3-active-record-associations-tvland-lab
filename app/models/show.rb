class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters 
  belongs_to :network 

  def actors_list 
    arr = []
    self.actors.each do |actor|
      arr << actor.full_name
    end
    arr
  end 
end