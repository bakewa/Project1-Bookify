User.destroy_all
u1 = User.create :email => 'bd@ga.co', :password => 'chicken', :admin => true
u2 = User.create :email => 'jb@ga.co', :password => 'chicken'
puts "#{ User.count } users"

Work.destroy_all
w1 = Work.create :title => 'Pride and Prejudice'
w2 = Work.create :title => 'Six of Crows'
w3 = Work.create :title => 'Piranesi'
w4 = Work.create :title => 'Carmilla'
puts "#{ Work.count } works"

Author.destroy_all
a1 = Author.create :name => 'Jane Austen'
a2 = Author.create :name => 'Leigh Bardugo'
a3 = Author.create :name => 'Sussana Clarke'
a4 = Author.create :name => 'Sheridan Le Fanu'
puts "#{ Author.count } authors"

# Associations
puts "Authors and Works"
a1.works << w1
a2.works << w2
a3.works << w3
a4.works << w4