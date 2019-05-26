FactoryGirl.define do
  factory :taco do
    meat    { ['chicken', 'steak', 'chorizo'].sample }
    rice { [true, false].sample }
    beans { [true, false].sample }
    salsa { [true, false].sample }
    notes { 'Factory taco' }
  end
end
