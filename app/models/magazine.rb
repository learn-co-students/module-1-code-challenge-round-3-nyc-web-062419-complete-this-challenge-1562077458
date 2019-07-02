class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self
  end

  def self.find_by_name(this_name)
    Magazine.all.select do |mag_instance|
      mag_instance.name == this_name
    end
  end

  def self.all
    @@all
  end

end
