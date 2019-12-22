class Person

  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight,
    :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width 
  
   @@all = []

  def initialize(attributes)

    #instead of coding individual attributes, this loop will handle it 
    attributes.each {|key, value| self.send(("#{key}="), value)}
    @@all << self 
  end 

  def self.all

    return @@all
  end 

end