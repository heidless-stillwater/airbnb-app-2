# seed 'Users' table with LIVE data


Userroy_all

User.create!([{
  title: "Inside Out",
  director: "Pete Docter",
  storyline: "As Riley’s family moves to a new city, her emotions —Joy, Sadness, Anger, Fear, and Disgust— navigate the challenges of adjusting to a new environment.",
  watched_on: 9.years.ago
},
{
  title: "Toy Story 4",
  director: "Josh Cooley",
  storyline: "Woody, Buzz Lightyear and the rest of the gang embark on a road trip with Bonnie and a new toy named Forky. The adventurous journey turns into an unexpected reunion as Woody's slight detour leads him to his long-lost friend Bo Peep.",
  watched_on: 5.years.ago
},
{
  title: "Soul",
  director: "Pete Docter",
  storyline: "After landing the gig of a lifetime, a New York jazz pianist suddenly finds himself trapped in a strange land between Earth and the afterlife.",
  watched_on: 4.years.ago
}])

p "Created #{Movie.count} movies"
