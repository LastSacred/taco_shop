require 'rails_helper'

RSpec.describe Taco, type: :model do
  it "can create a new taco" do
    taco = FactoryGirl.create(:taco)
    
    expect(taco.created_at).to be
  end
end
