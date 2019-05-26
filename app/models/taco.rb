class Taco < ApplicationRecord
  meats = ['chicken', 'steak', 'chorizo']

  validates :meat, inclusion: { in: meats,
    message: "%{value} is not a valid meat" }
  
end
