Movie.create({title: "fdfs", desc: "fddas"}) 
vs 
m = Movie.new({title: "fdfs", desc: "fddas"})
m.save

Movie.create automatically creates the db entry
Movie.new just creates an object using the class Movie, which then needs to be saved to the database


db:migrate - updates database schema & models(tables)
db:rollback undos the previous migration
