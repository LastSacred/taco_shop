require 'rails_helper'

RSpec.describe Taco, type: :model do
  it "can create a new taco" do
    taco = Taco.create(notes: 'This is a cool taco', meat: 'chicken', rice: true, beans: true, salsa: false)
    
    expect(taco.created_at).to be
  end
end
