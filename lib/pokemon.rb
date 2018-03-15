require 'pry'
class Pokemon
  attr_accessor :id, :name, :type, :db, :hp
  @@all = []
  
  def initialize(id:, name:, type:, hp: 60, db:)
   @id = id
   @name = name
   @type = type
   @@all << self
  end
  
  def self.all
    @@all
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end
  
  def self.find(id, db)
    db.execute("SELECT * FROM pokemon WHERE id = id")
    else
      Pokemon.new(id: id, name: "Magikarp", type: "water", db: @db)
    end
  end
  
  def alter_hp(hp, db)
    self.hp = hp
  end
end
