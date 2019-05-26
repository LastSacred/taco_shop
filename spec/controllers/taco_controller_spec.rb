require 'rails_helper'

RSpec.describe TacosController, type: :controller do
  it "renders the home page" do
    get :home
    expect(response).to render_template("index")
  end

  it "gets all tacos" do
    get :index

    expect(response).to have_http_status(:ok)
  end

  it "creates a new taco" do
    post :create, params: {taco: {meat: 'chicken', rice: true, beans: true, salsa: false, notes: 'hello taco'}}

    expect(response).to have_http_status(:created)
  end

  it "deletes a taco" do
    taco = Taco.create(notes: 'This is a cool taco', meat: 'chicken', rice: true, beans: true, salsa: false)

    delete :destroy, params:{id: taco.id}

    expect(response).to have_http_status(:no_content)
  end
end
