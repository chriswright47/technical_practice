# If you have an array of people described by name (string)
# and position (int). Each person has three friends, who
# are the three people with the closest position numbers
# to that person. Implement an algorithm that will find the
# three friends of a given person.

# Answer: sort the people by position numbers, then you only
# have to check the three people before and after a person.

Person = Struct.new(:name, :location, :neighbors) do
  def self.build(args)
    self.new(args[:name], args[:location], [])
  end
end

Neighborhood = Struct.new(:people) do
  def populateNeighbors
    ordered_people = people.sort {|x, y| x.location <=> y.location }
    find_neighbors(ordered_people)
  end

  def find_neighbors(array)
    array.each_with_index do |person, i|
      possible_neighbors = array.slice(max(0, i-4), 7)
      possible_neighbors.delete(person)
      while person.neighbors.length < 3
        neighbor = nearest_neighbor(possible_neighbors, person.location)
        person.neighbors << neighbor
        possible_neighbors.delete(neighbor)
      end
    end
  end

  def nearest_neighbor(possibles, location)
    possibles.sort{|x,y| (location - y.location).abs <=> (location - x.location).abs}.pop
  end

  def max(a,b)
    a > b ? a : b
  end
end


a = Person.build(name: 'Chris', location: 3)
b = Person.build(name: 'Rachel', location: 5)
c = Person.build(name: 'Matt', location: 4)
d = Person.build(name: 'Ross', location: 1)
e = Person.build(name: 'Spencer', location: 8)
f = Person.build(name: 'Katy', location: 2)
g = Person.build(name: 'Sam', location: 6)

neighborhood = Neighborhood.new([a,b,c,d,e,f,g])
p a.neighbors.empty?
neighborhood.populateNeighbors
p a.neighbors == [c,f,d]
