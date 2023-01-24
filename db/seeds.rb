User.destroy_all
u1 = User.create :email => 'bd@ga.co', :password => 'chicken', :admin => true
u2 = User.create :email => 'jb@ga.co', :password => 'chicken'
puts "#{ User.count } users"

Book.destroy_all
b1 = Book.create :title => 'Pride and Prejudice'
b2 = Book.create :title => 'Six of Crows'
b3 = Book.create :title => 'Piranesi'
b4 = Book.create :title => 'Carmilla'
puts "#{ Book.count } books"

Author.destroy_all
a1 = Author.create :name => 'Jane Austen'
a2 = Author.create :name => 'Leigh Bardugo'
a3 = Author.create :name => 'Sussana Clarke'
a4 = Author.create :name => 'Sheridan Le Fanu'
puts "#{ Author.count } authors"

Genre.destroy_all
g1 = Genre.create :name => 'Historical Fiction'
g2 = Genre.create :name => 'Fantasy Fiction'
g3 = Genre.create :name => 'Mystery'
g4 = Genre.create :name => 'Novel'
g5 = Genre.create :name => 'Non-Fiction'
g6 = Genre.create :name => 'Poetry'
g7 = Genre.create :name => 'Horror'
puts "#{ Genre.count} genres"

Library.destroy_all
l1 = Library.create :title => 'Favourite Books'
l2 = Library.create :title => 'Easy Reads'
l3 = Library.create :title => 'Sad Books'
l4 = Library.create :title => 'Happy Books'
puts "#{ Library.count} libraries"

# Associations
puts "Authors and Books"
a1.books << s1
a2.books << s2
a3.books << s3
a4.books << s4

puts "Genres and Books"
b1.genres << g5 << g6 
b2.genres << g1 << g2
b3.genres << g3 << g4
g7.books << b4

puts "Libraries and Books"
l1.books << b1 << b2 << b3 << b4
l2.books << b1 << b1 << b1 << b1
l3.books << b2 << b4 << b2 << b4

puts "Libraries and Users"
u1.libraries << l1 << l2
u2.libraries << l3 << l4
