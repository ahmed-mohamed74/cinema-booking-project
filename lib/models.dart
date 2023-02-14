//movie model

class Movie {
  int id, year;
  double rating, numOfRating;
  String poster, title, plote;
  List<String> genra;
  List<Map> cast;

  Movie(
      {required this.id,
        required this.year,
        required this.numOfRating,
        required this.rating,
        required this.plote,
        required this.poster,
        required this.title,
        required this.cast,
        required this.genra});
}

//movie data
List<Movie> Action = [
  Movie(
      id: 33,
      title: "Confessions",
      year: 2010,
      plote:
      "A paid assassin working for the biker gangs of Quebec outsmarts both the police and the underworld for decades, committing 28 hits over 25 years.",
      poster: "assets/images/Confessions.jpg",
      rating: 6.4,
      numOfRating: 462,
      genra: [
        "Crime",
        "Drama",
        "Action"
      ],
      cast: [
        {
          "orginalName": "Luc Picard",
          "CharacterName": "Gerald Gallant",
          "image": "assets/images/Jean-Luc Picard.jpg",
        },
        {
          "orginalName": "David La Haye",
          "CharacterName": "Donald'Dolly'",
          "image": " ",
        },
        {
          "orginalName": "Sandrine Bisson",
          "CharacterName": "Jocelyne Lacroix",
          "image":
          "assets/images/Sandrine Bisson brille dans le film Confessions - Châtelaine.jpg",
        },
      ]),
  Movie(
      id: 10,
      title: "Jung_E",
      year: 2023,
      plote:
      "On an uninhabitable 22nd-century Earth, the outcome of a civil war hinges on cloning the brain of an elite soldier to create a robot mercenary.",
      poster: "assets/images//jung_E.jpg",
      rating: 5.4,
      numOfRating: 7300,
      genra: [
        "Adventure",
        "Drama",
        "Action"
      ],
      cast: [
        {
          "orginalName": "Kang Soo-yeon",
          "CharacterName": "Yun Seo-hyun",
          "image": "assets/images/Kang Soo-yeon.jpg",
        },
        {
          "orginalName": "Ryu Kyung-soo",
          "CharacterName": "Kim Sang-Hoon",
          "image": "assets/images/Ryu Kyung-soo.jpg ",
        },
        {
          "orginalName": "Kim Hyun-joo",
          "CharacterName": "Jung_E",
          "image": "assets/images/Kim Hyun-joo.jpg",
        },
      ]),
  Movie(
      id: 11,
      title: "Pathaan",
      year: 2023,
      plote:
      "An Indian spy takes on the leader of a group of mercenaries who have nefarious plans to target his homeland.",
      poster: "assets/images/Pathaan.jpg",
      rating: 6.6,
      numOfRating: 119000,
      genra: [
        "Adventure",
        "Drama",
        "Action"
      ],
      cast: [
        {
          "orginalName": "Shah Rukh Khan",
          "CharacterName": "Pathaan",
          "image": "assets/images/Shah Rukh Khan.jpg",
        },
        {
          "orginalName": "Deepika Padukone",
          "CharacterName": "Rubina Mohsin",
          "image": "assets/images/Deepika Padukone.jpg ",
        },
        {
          "orginalName": "John Abraham",
          "CharacterName": "Jim",
          "image": "assets/images/John Abraham.jpg",
        },
      ]),
];
List<Movie> Drama = [
  Movie(
      id: 21,
      title: "Blueback",
      year: 2022,
      plote:
      "In a dramatic setting, the work follows Abby's story, in which she and a blue fish develop a strong friendship, but when Abby discovers that her friend is in danger, she embarks on a big adventure to protect her.",
      poster: "assets/images/Blueback.jpg",
      rating: 6.1,
      numOfRating: 377,
      genra: [
        "Drama",
        "Family"
      ],
      cast: [
        {
          "orginalName": "Radha Mitchell",
          "CharacterName": "Dora",
          "image": "assets/images/Radha Mitchell.jpg",
        },
        {
          "orginalName": "Eric Bana",
          "CharacterName": "Macka",
          "image": "assets/images/Eric Bana.jpg",
        },
        {
          "orginalName": "Clarece Ryan",
          "CharacterName": "Briggs",
          "image": "assets/images/Ryan Tedder Photostream.jpg",
        },
      ]),
  Movie(
      id: 22,
      title: "Infiesto",
      year: 2023,
      plote:
      "Two detectives are called to a small mining town in the Asturian mountains where a young woman who had been left for dead for months has suddenly appeared, leaving the detectives to question what dark forces are at work.",
      poster: "assets/images/Infiesto.jpg",
      rating: 5.6,
      numOfRating: 362,
      genra: [
        "Drama",
        "Crime",
        "Thriller"
      ],
      cast: [
        {
          "orginalName": "Ana Villa",
          "CharacterName": "Julia",
          "image": " ",
        },
        {
          "orginalName": "Iria del Rio",
          "CharacterName": "sub-Inspectora Castro",
          "image": "assets/images/Iria del Rio.jpg",
        },
        {
          "orginalName": "Isabel Naveira",
          "CharacterName": "Paz Nogueira",
          "image": "assets/images/Isabel Naveira.jpg",
        },
      ]),
  Movie(
      id: 23,
      title: "Kompromat",
      year: 2022,
      plote:
      "Based on incredible true events, Jérome Salle's gripping new espionage thriller depicts the remarkable story of a French public servant who unwittingly finds himself in conflict with one of the modern era's most powerful and dangerous forces: Russia's FSB. Gilles Lellouche stars as Mathieu, a gregarious and dedicated diplomat who accepts a posting to Irkutsk as the head of Siberia's Alliance Francaise. He hopes the change will be good for his family and struggling marriage, but before long Mathieu's staging of cultural events and support of artistic expression sees him fall afoul of local authorities. Accused of a terrible crime, he soon realises someone has fabricated a case with Russia's Federal Security Service - he has been framed. Arrested, imprisoned and isolated, Mathieu has nowhere to turn. Defending himself is impossible, the French authorities are helpless - it seems he has no choice: to try and escape.",
      poster: "assets/images/Kompromat _ critique bons baisers de Russie.jpg",
      rating: 6.4,
      numOfRating: 4770,
      genra: [
        "Drama",
        "Thriller"
      ],
      cast: [
        {
          "orginalName": "Gilles Lellouche",
          "CharacterName": "Mathieu Roussel",
          "image": "assets/images/Gilles Lellouche.jpg",
        },
        {
          "orginalName": "Joanna Kulig",
          "CharacterName": "svetlana",
          "image": "assets/images/Joanna Kulig.jpg",
        },
        {
          "orginalName": "Michael Gordon",
          "CharacterName": "Rostov",
          "image":
          "assets/images/GJoseph Gordon-Levitt  discovered by Perrieeele.jpg",
        },
      ]),
  Movie(
      id: 33,
      title: "Confessions",
      year: 2010,
      plote:
      "A paid assassin working for the biker gangs of Quebec outsmarts both the police and the underworld for decades, committing 28 hits over 25 years.",
      poster: "assets/images/Confessions.jpg",
      rating: 6.4,
      numOfRating: 462,
      genra: [
        "Crime",
        "Drama",
        "Action"
      ],
      cast: [
        {
          "orginalName": "Luc Picard",
          "CharacterName": "Gerald Gallant",
          "image": "assets/images/Jean-Luc Picard.jpg",
        },
        {
          "orginalName": "David La Haye",
          "CharacterName": "Donald'Dolly'",
          "image": " ",
        },
        {
          "orginalName": "Sandrine Bisson",
          "CharacterName": "Jocelyne Lacroix",
          "image":
          "assets/images/Sandrine Bisson brille dans le film Confessions - Châtelaine.jpg",
        },
      ]),
];
List<Movie> Crime = [
  Movie(
      id: 31,
      title: "Beyond the Neon",
      year: 2022,
      plote:
      "A dangerous social experiment performed by a reckless YouTuber and his film crew exposes human sex trafficking in Las Vegas.",
      poster: "assets/images/Blueback.jpg",
      rating: 5.6,
      numOfRating: 4449,
      genra: [
        "Crime",
        "Mystery",
        "Thriller"
      ],
      cast: [
        {
          "orginalName": "Cynthia Lucero",
          "CharacterName": "Tracy",
          "image": "assets/images/Cynthia Lucero.jpg",
        },
        {
          "orginalName": "Marisa Dzintars",
          "CharacterName": "Marlow",
          "image": "assets/images/Marisa Dzintars.jpg",
        },
        {
          "orginalName": "Woodrow Wilson",
          "CharacterName": "Walter",
          "image": "assets/images/Woodrow Wilson.jpg",
        },
      ]),
  Movie(
      id: 32,
      title: "Infiesto",
      year: 2023,
      plote:
      "Two detectives are called to a small mining town in the Asturian mountains where a young woman who had been left for dead for months has suddenly appeared, leaving the detectives to question what dark forces are at work.",
      poster: "assets/images/Infiesto.jpg",
      rating: 5.6,
      numOfRating: 362,
      genra: [
        "Drama",
        "Crime",
        "Thriller"
      ],
      cast: [
        {
          "orginalName": "Ana Villa",
          "CharacterName": "Julia",
          "image": " ",
        },
        {
          "orginalName": "Iria del Rio",
          "CharacterName": "sub-Inspectora Castro",
          "image": "assets/images/Iria del Rio.jpg",
        },
        {
          "orginalName": "Isabel Naveira",
          "CharacterName": "Paz Nogueira",
          "image": "assets/images/Isabel Naveira.jpg",
        },
      ]),
  Movie(
      id: 33,
      title: "Confessions",
      year: 2010,
      plote:
      "A paid assassin working for the biker gangs of Quebec outsmarts both the police and the underworld for decades, committing 28 hits over 25 years.",
      poster: "assets/images/Confessions.jpg",
      rating: 6.4,
      numOfRating: 462,
      genra: [
        "Crime",
        "Drama",
        "Action"
      ],
      cast: [
        {
          "orginalName": "Luc Picard",
          "CharacterName": "Gerald Gallant",
          "image": "assets/images/Jean-Luc Picard.jpg",
        },
        {
          "orginalName": "David La Haye",
          "CharacterName": "Donald'Dolly'",
          "image": " ",
        },
        {
          "orginalName": "Sandrine Bisson",
          "CharacterName": "Jocelyne Lacroix",
          "image":
          "assets/images/Sandrine Bisson brille dans le film Confessions - Châtelaine.jpg",
        },
      ]),
];
List<Movie> Horror = [
  Movie(
      id: 41,
      title: "fear",
      year: 2023,
      plote:
      "A much needed getaway and a celebration weekend turns into a nightmare due to the contagious airborne threat.",
      poster: "assets/images/fear.jpg",
      rating: 3.5,
      numOfRating: 340,
      genra: [
        "Horror"
      ],
      cast: [
        {
          "orginalName": "Tyler Abron",
          "CharacterName": "Kim",
          "image": "assets/images/Tyler Abron.jpg",
        },
        {
          "orginalName": "Jessica Allain",
          "CharacterName": "Meg",
          "image": "assets/images/Jessica Allain.jpg",
        },
        {
          "orginalName": "Andrew Bachelor",
          "CharacterName": "Benny",
          "image": "assets/images/Andrew Bachelor.jpg",
        },
      ]),
  Movie(
      id: 44,
      title: "M3GAN",
      year: 2022,
      plote:
      "A robotics engineer at a toy company builds a life-like doll that begins to take on a life of its own.",
      poster: "assets/images/M3GAN.jpg",
      rating: 6.4,
      numOfRating: 56000,
      genra: [
        "Horror"
      ],
      cast: [
        {
          "orginalName": "Amie Donald",
          "CharacterName": "M3GAN",
          "image": "assets/images/Amie Donald.jpg",
        },
        {
          "orginalName": "Violet McGraw",
          "CharacterName": "Cady",
          "image": "assets/images/Violet McGraw.jpg",
        },
        {
          "orginalName": "Ronny Chieng",
          "CharacterName": "David",
          "image": "assets/images/Ronny Chieng.jpg",
        },
      ]),
  Movie(
      id: 45,
      title: "Smile",
      year: 2022,
      plote:
      "After witnessing a bizarre, traumatic incident involving a patient, a psychiatrist becomes increasingly convinced she is being threatened by an uncanny entity.",
      poster: "assets/images/Smile.jpg",
      rating: 6.6,
      numOfRating: 102000,
      genra: [
        "Horror"
      ],
      cast: [
        {
          "orginalName": "Sosie Bacon",
          "CharacterName": "Rose Cotter",
          "image": "assets/images/Sosie Bacon.jpg",
        },
        {
          "orginalName": "Jessie T. Usher",
          "CharacterName": "Trevor",
          "image": "assets/images/Jessie T. Usher.jpg",
        },
        {
          "orginalName": "Kyle Gallner",
          "CharacterName": "Joel",
          "image": "assets/images/Kyle Gallner.jpg",
        },
      ]),
];
List<Movie> Comedy = [
  Movie(
      id: 51,
      title: "Lyle, Lyle, Crocodile",
      year: 2022,
      plote:
      "Feature film based on the children's book about a crocodile that lives in New York City.",
      poster: "assets/images/Lyle, Lyle, Crocodile.jpg",
      rating: 6.1,
      numOfRating: 7700,
      genra: [
        "Comedy",
        "Animation",
        "adventure"
      ],
      cast: [
        {
          "orginalName": "Constance Wu",
          "CharacterName": "Mrs. Primm",
          "image": "assets/images/Constance Wu.jpg",
        },
        {
          "orginalName": "Javier Bardem",
          "CharacterName": "Hector P. Valenti",
          "image": "assets/images/Javier Bardem.jpg",
        },
        {
          "orginalName": "Shawn Mendes",
          "CharacterName": "Lyle",
          "image": "assets/images/Shawn Mendes.jpg",
        },
      ]),
  Movie(
      id: 52,
      title: "Matilda the Musical",
      year: 2022,
      plote:
      "An adaptation of the Tony and Olivier award-winning musical. Matilda tells the story of an extraordinary girl who, armed with a sharp mind and a vivid imagination, dares to take a stand to change her story with miraculous results.",
      poster: "assets/images/Matilda the Musical.jpg",
      rating: 7.1,
      numOfRating: 19000,
      genra: [
        "Comedy",
        "Drama",
        "Family"
      ],
      cast: [
        {
          "orginalName": "Alisha Weir",
          "CharacterName": "Matilda Wormwood",
          "image": "assets/images/Alisha Weir.jpg",
        },
        {
          "orginalName": "Emma Thompson",
          "CharacterName": "Agatha Trunchbull",
          "image": "assets/images/Emma Thompson.jpg",
        },
        {
          "orginalName": "Stephen Graham",
          "CharacterName": "Mr. Wormwood",
          "image": "assets/images/Stephen Graham.jpg",
        },
      ]),
  Movie(
      id: 53,
      title: "Luck",
      year: 2022,
      plote:
      "The curtain is pulled back on the millennia-old battle between the organizations of good luck and bad luck that secretly affects everyday lives.",
      poster: "assets/images/Luck.jpg",
      rating: 6.4,
      numOfRating: 21000,
      genra: [
        "Comedy",
        "Animation",
        "adventure"
      ],
      cast: [
        {
          "orginalName": "Eva Noblezada",
          "CharacterName": "Sam(voice)",
          "image": "assets/images/Eva Noblezada.jpg",
        },
        {
          "orginalName": "Simon Pegg",
          "CharacterName": "Bob(voice)",
          "image": "assets/images/Simon Pegg.jpg",
        },
        {
          "orginalName": "Colin O'Donoghue",
          "CharacterName": "Gerry(voice)",
          "image": "assets/images/Colin O'Donoghue.jpg",
        },
      ]),
];
List Movies = [
  Action,
  Drama,
  Crime,
  Horror,
  Comedy,
/*  //1 action
  //2 drama
  Movie(
      id: 21,
      title: "Blueback",
      year: 2022,
      plote:
          "In a dramatic setting, the work follows Abby's story, in which she and a blue fish develop a strong friendship, but when Abby discovers that her friend is in danger, she embarks on a big adventure to protect her.",
      poster: "assets/images/Blueback.jpg",
      rating: 6.1,
      numOfRating: 377,
      genra: [
        "Drama",
        "Family"
      ],
      cast: [
        {
          "orginalName": "Radha Mitchell",
          "CharacterName": "Dora",
          "image": "assets/images/Radha Mitchell.jpg",
        },
        {
          "orginalName": "Eric Bana",
          "CharacterName": "Macka",
          "image": "assets/images/Eric Bana.jpg",
        },
        {
          "orginalName": "Clarece Ryan",
          "CharacterName": "Briggs",
          "image": "assets/images/Ryan Tedder Photostream.jpg",
        },
      ]),
  Movie(
      id: 22,
      title: "Infiesto",
      year: 2023,
      plote:
          "Two detectives are called to a small mining town in the Asturian mountains where a young woman who had been left for dead for months has suddenly appeared, leaving the detectives to question what dark forces are at work.",
      poster: "assets/images/Infiesto.jpg",
      rating: 5.6,
      numOfRating: 362,
      genra: [
        "Drama",
        "Crime",
        "Thriller"
      ],
      cast: [
        {
          "orginalName": "Ana Villa",
          "CharacterName": "Julia",
          "image": " ",
        },
        {
          "orginalName": "Iria del Rio",
          "CharacterName": "sub-Inspectora Castro",
          "image": "assets/images/Iria del Rio.jpg",
        },
        {
          "orginalName": "Isabel Naveira",
          "CharacterName": "Paz Nogueira",
          "image": "assets/images/Isabel Naveira.jpg",
        },
      ]),
  Movie(
      id: 23,
      title: "Kompromat",
      year: 2022,
      plote:
          "Based on incredible true events, Jérome Salle's gripping new espionage thriller depicts the remarkable story of a French public servant who unwittingly finds himself in conflict with one of the modern era's most powerful and dangerous forces: Russia's FSB. Gilles Lellouche stars as Mathieu, a gregarious and dedicated diplomat who accepts a posting to Irkutsk as the head of Siberia's Alliance Francaise. He hopes the change will be good for his family and struggling marriage, but before long Mathieu's staging of cultural events and support of artistic expression sees him fall afoul of local authorities. Accused of a terrible crime, he soon realises someone has fabricated a case with Russia's Federal Security Service - he has been framed. Arrested, imprisoned and isolated, Mathieu has nowhere to turn. Defending himself is impossible, the French authorities are helpless - it seems he has no choice: to try and escape.",
      poster: "assets/images/Kompromat _ critique bons baisers de Russie.jpg",
      rating: 6.4,
      numOfRating: 4770,
      genra: [
        "Drama",
        "Thriller"
      ],
      cast: [
        {
          "orginalName": "Gilles Lellouche",
          "CharacterName": "Mathieu Roussel",
          "image": "assets/images/Gilles Lellouche.jpg",
        },
        {
          "orginalName": "Joanna Kulig",
          "CharacterName": "svetlana",
          "image": "assets/images/Joanna Kulig.jpg",
        },
        {
          "orginalName": "Michael Gordon",
          "CharacterName": "Rostov",
          "image":
              "assets/images/GJoseph Gordon-Levitt  discovered by Perrieeele.jpg",
        },
      ]),
  Movie(
      id: 33,
      title: "Confessions",
      year: 2010,
      plote:
          "A paid assassin working for the biker gangs of Quebec outsmarts both the police and the underworld for decades, committing 28 hits over 25 years.",
      poster: "assets/images/Confessions.jpg",
      rating: 6.4,
      numOfRating: 462,
      genra: [
        "Crime",
        "Drama",
        "Action"
      ],
      cast: [
        {
          "orginalName": "Luc Picard",
          "CharacterName": "Gerald Gallant",
          "image": "assets/images/Jean-Luc Picard.jpg",
        },
        {
          "orginalName": "David La Haye",
          "CharacterName": "Donald'Dolly'",
          "image": " ",
        },
        {
          "orginalName": "Sandrine Bisson",
          "CharacterName": "Jocelyne Lacroix",
          "image":
              "assets/images/Sandrine Bisson brille dans le film Confessions - Châtelaine.jpg",
        },
      ]),
  //3 crime
  Movie(
      id: 31,
      title: "Beyond the Neon",
      year: 2022,
      plote:
          "A dangerous social experiment performed by a reckless YouTuber and his film crew exposes human sex trafficking in Las Vegas.",
      poster: "assets/images/beyond the neon.jpg",
      rating: 5.6,
      numOfRating: 4449,
      genra: [
        "Crime",
        "Mystery",
        "Thriller"
      ],
      cast: [
        {
          "orginalName": "Cynthia Lucero",
          "CharacterName": "Tracy",
          "image": "assets/images/Cynthia Lucero.jpg",
        },
        {
          "orginalName": "Marisa Dzintars",
          "CharacterName": "Marlow",
          "image": "assets/images/Marisa Dzintars.jpg",
        },
        {
          "orginalName": "Woodrow Wilson",
          "CharacterName": "Walter",
          "image": "assets/images/Woodrow Wilson.jpg",
        },
      ]),
  //4 horror
  Movie(
      id: 41,
      title: "fear",
      year: 2023,
      plote:
          "A much needed getaway and a celebration weekend turns into a nightmare due to the contagious airborne threat.",
      poster: "assets/images/fear.jpg",
      rating: 3.5,
      numOfRating: 340,
      genra: [
        "Horror"
      ],
      cast: [
        {
          "orginalName": "Tyler Abron",
          "CharacterName": "Kim",
          "image": "assets/images/Tyler Abron.jpg",
        },
        {
          "orginalName": "Jessica Allain",
          "CharacterName": "Meg",
          "image": "assets/images/Jessica Allain.jpg",
        },
        {
          "orginalName": "Andrew Bachelor",
          "CharacterName": "Benny",
          "image": "assets/images/Andrew Bachelor.jpg",
        },
      ]),
  Movie(
      id: 44,
      title: "M3GAN",
      year: 2022,
      plote:
          "A robotics engineer at a toy company builds a life-like doll that begins to take on a life of its own.",
      poster: "assets/images/M3GAN.jpg",
      rating: 6.4,
      numOfRating: 56000,
      genra: [
        "Horror"
      ],
      cast: [
        {
          "orginalName": "Amie Donald",
          "CharacterName": "M3GAN",
          "image": "assets/images/Amie Donald.jpg",
        },
        {
          "orginalName": "Violet McGraw",
          "CharacterName": "Cady",
          "image": "assets/images/Violet McGraw.jpg",
        },
        {
          "orginalName": "Ronny Chieng",
          "CharacterName": "David",
          "image": "assets/images/Ronny Chieng.jpg",
        },
      ]),
  Movie(
      id: 45,
      title: "Smile",
      year: 2022,
      plote:
          "After witnessing a bizarre, traumatic incident involving a patient, a psychiatrist becomes increasingly convinced she is being threatened by an uncanny entity.",
      poster: "assets/images/Smile.jpg",
      rating: 6.6,
      numOfRating: 102000,
      genra: [
        "Horror"
      ],
      cast: [
        {
          "orginalName": "Sosie Bacon",
          "CharacterName": "Rose Cotter",
          "image": "assets/images/Sosie Bacon.jpg",
        },
        {
          "orginalName": "Jessie T. Usher",
          "CharacterName": "Trevor",
          "image": "assets/images/Jessie T. Usher.jpg",
        },
        {
          "orginalName": "Kyle Gallner",
          "CharacterName": "Joel",
          "image": "assets/images/Kyle Gallner.jpg",
        },
      ]),
  //5 comedy
  Movie(
      id: 51,
      title: "Lyle, Lyle, Crocodile",
      year: 2022,
      plote:
          "Feature film based on the children's book about a crocodile that lives in New York City.",
      poster: "assets/images/Lyle, Lyle, Crocodile.jpg",
      rating: 6.1,
      numOfRating: 7700,
      genra: [
        "Comedy",
        "Animation",
        "adventure"
      ],
      cast: [
        {
          "orginalName": "Constance Wu",
          "CharacterName": "Mrs. Primm",
          "image": "assets/images/Constance Wu.jpg",
        },
        {
          "orginalName": "Javier Bardem",
          "CharacterName": "Hector P. Valenti",
          "image": "assets/images/Javier Bardem.jpg",
        },
        {
          "orginalName": "Shawn Mendes",
          "CharacterName": "Lyle",
          "image": "assets/images/Shawn Mendes.jpg",
        },
      ]),
  Movie(
      id: 52,
      title: "Matilda the Musical",
      year: 2022,
      plote:
          "An adaptation of the Tony and Olivier award-winning musical. Matilda tells the story of an extraordinary girl who, armed with a sharp mind and a vivid imagination, dares to take a stand to change her story with miraculous results.",
      poster: "assets/images/Matilda the Musical.jpg",
      rating: 7.1,
      numOfRating: 19000,
      genra: [
        "Comedy",
        "Drama",
        "Family"
      ],
      cast: [
        {
          "orginalName": "Alisha Weir",
          "CharacterName": "Matilda Wormwood",
          "image": "assets/images/Alisha Weir.jpg",
        },
        {
          "orginalName": "Emma Thompson",
          "CharacterName": "Agatha Trunchbull",
          "image": "assets/images/Emma Thompson.jpg",
        },
        {
          "orginalName": "Stephen Graham",
          "CharacterName": "Mr. Wormwood",
          "image": "assets/images/Stephen Graham.jpg",
        },
      ]),
  Movie(
      id: 53,
      title: "Luck",
      year: 2022,
      plote:
          "The curtain is pulled back on the millennia-old battle between the organizations of good luck and bad luck that secretly affects everyday lives.",
      poster: "assets/images/Luck.jpg",
      rating: 6.4,
      numOfRating: 21000,
      genra: [
        "Comedy",
        "Animation",
        "adventure"
      ],
      cast: [
        {
          "orginalName": "Eva Noblezada",
          "CharacterName": "Sam(voice)",
          "image": "assets/images/Eva Noblezada.jpg",
        },
        {
          "orginalName": "Simon Pegg",
          "CharacterName": "Bob(voice)",
          "image": "assets/images/Simon Pegg.jpg",
        },
        {
          "orginalName": "Colin O'Donoghue",
          "CharacterName": "Gerry(voice)",
          "image": "assets/images/Colin O'Donoghue.jpg",
        },
      ]),
//coming soon*/
];
List<Movie> comingSoon = [
  Movie(
      id: 42,
      title: "Evil Dead Rise",
      year: 2023,
      plote:
      "A twisted tale of two estranged sisters whose reunion is cut short by the rise of flesh-possessing demons, thrusting them into a primal battle for survival as they face the most nightmarish version of family imaginable.",
      poster: "assets/images/Evil Dead Rise.jpg",
      rating: 0,
      numOfRating: 0,
      genra: [
        "Horror"
      ],
      cast: [
        {
          "orginalName": "Alyssa Sutherland",
          "CharacterName": "Ellie",
          "image": "assets/images/Alyssa Sutherland.jpg ",
        },
        {
          "orginalName": "Lily Sullivan",
          "CharacterName": "Beth",
          "image": "assets/images/Lily Sullivan.jpg",
        },
        {
          "orginalName": "Jayden Daniels",
          "CharacterName": "Gabriel",
          "image": "assets/images/Jayden Daniels.jpg",
        },
      ]),
  Movie(
      id: 43,
      title: "Scream VI",
      year: 2023,
      plote:
      "In the next installment, the survivors of the Ghostface killings leave Woodsboro behind and start a fresh chapter in New York City.",
      poster: "assets/images/Scream VI.jpg",
      rating: 0,
      numOfRating: 0,
      genra: [
        "Horror"
      ],
      cast: [
        {
          "orginalName": "Hayden Panettiere",
          "CharacterName": "Kirby Reed",
          "image": "assets/images/Hayden Panettiere.jpg",
        },
        {
          "orginalName": "Courteney Cox",
          "CharacterName": "Gale Weathers",
          "image": "assets/images/Courteney Cox.jpg",
        },
        {
          "orginalName": "Jenna Ortega",
          "CharacterName": "Tara Carpenter",
          "image": "assets/images/Jenna Ortega.jpg",
        },
      ]),
  Movie(
      id: 63,
      title: "Killers of the Flower Moon",
      year: 2023,
      plote:
      "Members of the Osage tribe in the United States are murdered under mysterious circumstances in the 1920s sparking a major F.B.I. investigation involving J. Edgar Hoover.",
      poster: "assets/images/Killers of the Flower Moon.jpg",
      rating: 0,
      numOfRating: 0,
      genra: [
        "Action",
        "Drama",
        "Crime",
      ],
      cast: [
        {
          "orginalName": "Leonardo DiCaprio",
          "CharacterName": "Ernest Burkhart",
          "image": "assets/images/Leonardo DiCaprio.jpg",
        },
        {
          "orginalName": "Robert De Niro",
          "CharacterName": "William Hale",
          "image": "assets/images/Robert De Niro.jpg",
        },
        {
          "orginalName": "Lily Gladstone",
          "CharacterName": "Mollie Burkhart",
          "image": "assets/images/Lily Gladstone.jpg",
        },
      ]),
  Movie(
      id: 62,
      title: "John Wick: Chapter 4",
      year: 2023,
      plote:
      "John Wick uncovers a path to defeating The High Table. But before he can earn his freedom, Wick must face off against a new enemy with powerful alliances across the globe and forces that turn old friends into foes.",
      poster: "assets/images/John Wick.jfif",
      rating: 0,
      numOfRating: 0,
      genra: [
        "Action",
        "Thriller",
        "Crime",
      ],
      cast: [
        {
          "orginalName": "Keanu Reeves",
          "CharacterName": "John Wick",
          "image": "assets/images/Keanu Reeves.jpg",
        },
        {
          "orginalName": "Donnie Yen",
          "CharacterName": "Caine",
          "image": "assets/images/Donnie Yen.jpg",
        },
        {
          "orginalName": "Bill Skarsgård",
          "CharacterName": "Marquis",
          "image": "assets/images/Bill Skarsgård.jpg",
        },
      ]),
  Movie(
      id: 61,
      title: "The Covenant",
      year: 2023,
      plote:
      "Follows Sergeant John, who on his last tour of duty in Afghanistan is teamed with local interpreter Ahmed, who risks his own life to carry an injured John across miles of grueling terrain to safety.",
      poster: "assets/images/The Covenant.jpg",
      rating: 0,
      numOfRating: 0,
      genra: [
        "Thriller",
        "Crime",
        "Action"
      ],
      cast: [
        {
          "orginalName": "Jake Gyllenhaal",
          "CharacterName": "Sergeant John Kinley",
          "image": "assets/images/Jake Gyllenhaal.jpg",
        },
        {
          "orginalName": "Jonny Lee Miller",
          "CharacterName": "Vokes",
          "image": "assets/images/Jonny Lee Miller.jpg ",
        },
        {
          "orginalName": "Dar Salim",
          "CharacterName": "Ahmed",
          "image": "assets/images/Dar Salim.jfif",
        },
      ]),
];