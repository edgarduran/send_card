require 'rails_helper'

describe 'cards/index', type: :feature do

  let(:card1) { Card.create(name: 'Bday Card', message: "Hey, it's your bday and junk!", image: "/app/assets/images/cake.jpg")}
  let(:card2) { Card.create(name: 'Xmas Card', message: "It's Jesus' today!!", image: "/app/assets/images/cake.jpg")}


  before(:each) do
    card1
    card2
    visit "/"
  end

  it "shows a visitor cards" do
    expect(page).to have_content("Cards")
    expect(page).to have_content("Bday Card")
    expect(page).to have_content("Xmas Card")
  end

  it 'has a link to show page where card can be viewed' do
    expect(page).to have_link('View Card', href: card_path(card1))
  end

end
