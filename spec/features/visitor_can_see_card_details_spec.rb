require 'rails_helper'

describe 'cards/show', type: :feature do

  let(:card1) { Card.create(name: 'Bday Card', message: "Hey, it's your bday and junk!", image: "cake.jpg")}
  let(:card2) { Card.create(name: 'Xmas Card', message: "It's Jesus' today!!", image: "cake.jpg")}


  before(:each) do
    card1
    card2
    visit "/"
  end

  it 'shows a card when view link is clicked' do
    first(:link, "View Card").click

    expect(current_path).to eq(card_path(card1))
    expect(page).to have_content("Bday Card")
    expect(page).to have_content("Hey, it's your bday and junk!")
  end

end
