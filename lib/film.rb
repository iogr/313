class Film
  attr_accessor :title, :director, :year

  def initialize(title, director, year)
    @title = title
    @director = director
    @year = year
  end

  def full_title
    "#{director} - #{title} (#{year})"
  end

  def to_s
    full_title
  end

  def director=(director)
    "#{director}"
  end
end

