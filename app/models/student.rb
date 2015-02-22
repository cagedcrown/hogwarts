class Student < ActiveRecord::Base
  belongs_to :house
  before_save :sorting_hat

  def sorting_hat
    houses = House.all
    self.house_id = houses.sample.id
  end
end
