require 'rails_helper'

describe 'category/index', type: :feature do

  let(:category1) { Category.create(name: "Birthday")}
  let(:category2) { Category.create(name: "Holiday")}
  let(:category3) { Category.create(name: "Get Well")}
  let(:card1) { Card.create(name: '1st Birthday', message: "Hey, it's your bday and junk!", image: "/app/assets/images/cake.jpg", sub_category: "Child", category_id: category1.id)}
  let(:card2) { Card.create(name: "You're old Birthday", message: "Hey, it's your bday and junk!", image: "/app/assets/images/cake.jpg", sub_category: "Funny", category_id: category1.id)}
  let(:card3) { Card.create(name: 'Mom Bday', message: "Hey, it's your bday and junk!", image: "/app/assets/images/cake.jpg", sub_category: "Mom", category_id: category1.id)}
  let(:card4) { Card.create(name: 'Xmas Card', message: "It's Jesus' today!!", image: "/app/assets/images/cake.jpg", sub_category: "Christmas", category_id: category2.id)}
  let(:card5) { Card.create(name: 'Festivus Card', message: "Air your greivances!", image: "/app/assets/images/cake.jpg", sub_category: "Festivus", category_id: category2.id)}
  let(:card6) { Card.create(name: 'Dreidle', message: "It's not Jesus' bday today!!", image: "/app/assets/images/cake.jpg", sub_category: "Hanukkah", category_id: category2.id)}
  let(:card7) { Card.create(name: 'Get Well', message: "Feel better, now!", image: "/app/assets/images/cake.jpg", sub_category: "Funny", category_id: category3.id)}


  before(:each) do
    category1
    category2
    category3
    card1
    card2
    card3
    card4
    card5
    card6
    card7
    visit "/"
    page.click_link("Categories")
  end

  it "shows list of categories for cards" do
    expect(page).to have_content("Categories")
    expect(page).to have_content("Holiday")
    expect(page).to have_content("Birthday")
    expect(page).to have_content("Get Well")
  end

  it 'shows all cards by category when you select a category' do
    page.click_link("Holiday")

    expect(page).to have_content("Holiday")
    expect(page).to have_content("Xmas Card")
    expect(page).to have_content("Festivus Card")
    expect(page).to have_content("Dreidle")

  end

end
