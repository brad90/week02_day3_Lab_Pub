class Customer

attr_reader :name, :age
attr_accessor :drunkeness, :wallet


  def initialize (name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunkeness = 0
  end



end
