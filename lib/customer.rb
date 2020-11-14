class Customer
    attr_accessor :name

    @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(waiter, total, tip)
   meal = Meal.new(waiter, self, total, tip)
  end

  def meals
    Meal.all.select { |m| m.customer == self }
  end

  def waiters
    meals.collect { |meal| meal.waiter }
  end
end