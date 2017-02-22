Show.delete_all()
User.delete_all()


user_one = User.create(
    {
      email: "john@email.com",
      password: "password",
      password_confirmation: "password"
    }
  )

user_two = User.create(
  {
    email: "winnie-ho@hotmail.co.uk",
    password: "password",
    password_confirmation: "password"
  }
)

user_three = User.create(
  {
    email: "winobean@hotmail.co.uk",
    password: "password",
    password_confirmation: "password"
    }
)



show1 = Show.create({
  title: "Brooklyn Nine Nine",
  series: 1,
  description: "American sitcom series about NYPD team 99",
  image: "http://static.tvtropes.org/pmwiki/pub/images/img-allshows-brooklyn-nine-nine_4788.png",
  programmeID: "001A"
  })

show2 = Show.create({
  title: "Breaking Bad",
  series: 1,
  description: "A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family's future.",
  image: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTQ0ODYzODc0OV5BMl5BanBnXkFtZTgwMDk3OTcyMDE@._V1_UX182_CR0,0,182,268_AL_.jpg",
  programmeID: "002A"
  })


# user_one.favourites << show1
# user_two.favourites << show2

FavouriteShow.create({
  user: user_one,
  show: show1
})

FavouriteShow.create({
  user: user_two,
  show: show2
})

FavouriteShow.create({
  user: user_three,
  show: show1
})

FavouriteShow.create({
  user: user_three,
  show: show2
})