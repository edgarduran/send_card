require 'rails_helper'

describe 'category/index', type: :feature do

  # let(:card1) { Card.create(name: '1st Birthday', message: "Hey, it's your bday and junk!", image: "/app/assets/images/cake.jpg", sub_category: "Child")}
  # let(:card2) { Card.create(name: "You're old Birthday", message: "Hey, it's your bday and junk!", image: "/app/assets/images/cake.jpg", sub_category: "Funny")}
  # let(:card3) { Card.create(name: 'Mom Bday', message: "Hey, it's your bday and junk!", image: "/app/assets/images/cake.jpg", sub_category: "Mom")}
  # let(:card4) { Card.create(name: 'Xmas Card', message: "It's Jesus' today!!", image: "/app/assets/images/cake.jpg", sub_category: "Christmas")}
  # let(:card5) { Card.create(name: 'Festivus Card', message: "Air your greivances!", image: "/app/assets/images/cake.jpg", sub_category: "Festivus")}
  # let(:card6) { Card.create(name: 'Dreidle', message: "It's not Jesus' bday today!!", image: "/app/assets/images/cake.jpg", sub_category: "Hanukkah")}
  # let(:card6) { Card.create(name: 'Get Well', message: "Feel better, now!", image: "/app/assets/images/cake.jpg", sub_category: "Funny")}
  let(:category1) { Category.create(name: "Birthday")}
  let(:category2) { Category.create(name: "Holiday")}
  let(:category3) { Category.create(name: "Get Well")}


  before(:each) do
    # card1
    # card2
    # card3
    # card4
    # card5
    # card6
    category1
    category2
    category3
    visit "/"
  end

  it "shows list of categories for cards" do
    page.click_link("Categories")
    save_and_open_page
    expect(page).to have_content("Categories")
    expect(page).to have_content("Holiday")
    expect(page).to have_content("Birthday")
    expect(page).to have_content("Get Well")
  end

end
