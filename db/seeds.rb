# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Generate 10 books
books = [
  {
    title: "A Game of Thrones",
    description: "Long ago, in a time forgotten, a preternatural event threw the seasons out of balance. In a land where summers can last decades and winters a lifetime, trouble is brewing. The cold is returning, and in the frozen wastes to the north of Winterfell, sinister and supernatural forces are massing beyond the kingdom’s protective Wall. At the center of the conflict lie the Starks of Winterfell, a family as harsh and unyielding as the land they were born to. Sweeping from a land of brutal cold to a distant summertime kingdom of epicurean plenty, here is a tale of lords and ladies, soldiers and sorcerers, assassins and bastards, who come together in a time of grim omens. ",
    isbn: "9780007448036",
    pages_count: 801,
    author: "George R. R. Martin",
    cover_url: "https://covers.openlibrary.org/b/id/11298706-L.jpg"
  },
  {
    title: "1984",
    description: "Nineteen Eighty-Four: A Novel, often referred to as 1984, is a dystopian social science fiction novel by the English novelist George Orwell (the pen name of Eric Arthur Blair). It was published on 8 June 1949 by Secker & Warburg as Orwell's ninth and final book completed in his lifetime. Thematically, Nineteen Eighty-Four centres on the consequences of totalitarianism, mass surveillance, and repressive regimentation of persons and behaviours within society. Orwell, himself a democratic socialist, modelled the authoritarian government in the novel after Stalinist Russia. More broadly, the novel examines the role of truth and facts within politics and the ways in which they are manipulated.",
    isbn: "207036822X",
    pages_count: 438,
    author: "George Orwell",
    cover_url: "https://covers.openlibrary.org/b/id/967386-L.jpg"
  },
  {
    title: "Harry Potter and the Deathly Hallows",
    description: "It's no longer safe for Harry at Hogwarts, so he and his best friends, Ron and Hermione, are on the run. Professor Dumbledore has given them clues about what they need to do to defeat the dark wizard, Lord Voldemort, once and for all, but it's up to them to figure out what these hints and suggestions really mean. Their cross-country odyssey has them searching desperately for the answers, while evading capture or death at every turn. At the same time, their friendship, fortitude, and sense of right and wrong are tested in ways they never could have imagined. The ultimate battle between good and evil that closes out this final chapter of the epic series takes place where Harry's Wizarding life began: at Hogwarts. The satisfying conclusion offers shocking last-minute twists, incredible acts of courage, powerful new forms of magic, and the resolution of many mysteries. Above all, this intense, cathartic book serves as a clear statement of the message at the heart of the Harry Potter series: that choice matters much more than destiny, and that love will always triumph over death. ",
    isbn: "0545139708",
    pages_count: 336,
    author: "J.K. Rowling",
    cover_url: "https://covers.openlibrary.org/b/id/12001885-L.jpg"
  },
  {
    title: "Hamlet",
    description: "During a dark winter night Horatio and a pair of watchmen encounter a ghost that resembles the late King of Denmark, the father of Prince Hamlet. After failing to converse with the ghost, Hamlet is brought to the site of the encounter. The ghost tells the story of his death. He was murdered by King Claudius, the dead king’s brother and Hamlet’s new stepfather. Hamlet swears to avenge him and kill Claudius.",
    isbn: "9781406922752",
    pages_count: 202,
    author: "William Shakespeare",
    cover_url: "https://covers.openlibrary.org/b/id/12622256-L.jpg"
  },
  {
    title: "The Lord of the Rings",
    description: "In ancient times the Rings of Power were crafted by the Elven-smiths, and Sauron, The Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages it fell, by chance, into the hands of the hobbit, Bilbo Baggins. ",
    isbn: "0618129022",
    pages_count: 1147,
    author: "J.R.R. Tolkien",
    cover_url: "https://covers.openlibrary.org/b/id/12003171-L.jpg"
  },
]

Book.destroy_all
Book.create!(books)
