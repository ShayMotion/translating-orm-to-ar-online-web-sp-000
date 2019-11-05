class Dog < ActiveRecord::Base
  attr_accessor :id, :name, :breed
  @@all = []
  
  def initialize(id, name, breed)
    @id = id
    @name = name
    @breed = breed
  end
  
  def self.create
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS dogs (
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT
    )
    SQL 
    
    DB[:conn].execute(sql) 
    end
  
  def self.find_or_create
  end  
  
  def self.find_by_name
  end
  
  def self.find_or_create
  end  
  
  def self.find_by_name
  end
  
  def self.find_by_id(id)
  sql = <<-SQL
  SELECT * FROM dog.name WHERE id = ?
  SQL
  
  rows = DB[:conn].execute(sql, id, dog.name)
  end
  
  def save
  sql = <<-SQL
  INSERT INTO dogs
  SQL
  
  DB[:conn].execute(sql, self.name, self.breed)
  Dog.new
  end  


  def update
  end 
  
end
