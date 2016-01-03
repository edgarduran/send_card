

Category.create([{ name: 'Birthday' }, { name: 'Holiday' }, { name: 'Get Well' }, { name: 'Congratulations' }])


bday_cards = Category.find_by(name: 'Birthday')
          .cards
          .create([{
                    name: '1st Birthday',
                    message: "Hey, it's your bday and junk!",
                    image: "/app/assets/images/cake.jpg",
                    sub_category: "Child"
                   },
                   {
                    name: "You're old Birthday",
                    message: "Hey, it's your bday and junk!",
                    image: "/app/assets/images/cake.jpg",
                    sub_category: "Funny"
                   },
                   {
                    name: 'Mom Bday',
                    message: "Hey, it's your bday and junk!",
                    image: "/app/assets/images/cake.jpg",
                    sub_category: "Mom"
                   }])

holiday_cards = Category.find_by(name: 'Holiday')
          .cards
          .create([{
                    name: 'Xmas Card',
                    message: "It's Jesus' today!!",
                    image: "/app/assets/images/cake.jpg",
                    sub_category: "Christmas"
                  },
                   {
                    name: 'Festivus Card',
                    message: "Air your greivances!",
                    image: "/app/assets/images/cake.jpg",
                    sub_category: "Festivus"
                  },
                   {
                    name: 'Dreidle',
                    message: "It's not Jesus' bday today!!",
                    image: "/app/assets/images/cake.jpg",
                    sub_category: "Hanukkah"
                   }])

getwell_cards = Category.find_by(name: 'Get Well')
          .cards
          .create([{
                    name: 'Get Well',
                    message: "Feel better, now!",
                    image: "/app/assets/images/cake.jpg",
                    sub_category: "Funny"
                   }])

congrats_cards = Category.find_by(name: 'Congratulations')
          .cards
          .create([{
                    name: 'College Grad',
                    message: "You did it, now you're in debt.",
                    image: "/app/assets/images/cake.jpg",
                    sub_category: "Funny"
                   }])
