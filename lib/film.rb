  class Film
  attr_accessor :title, :director, :year, :selected_director

  def initialize(title, director, year)
    @title = title
    @director = director
    @year = year
    @selected_director = selected_director
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

  def selected_director=(selected_director)
    "#{selected_director}"
    end
  # def title=(value)
  #   @title = value
  # end

  def directors_to_choose=(directors_to_choose)
  "13"
    # .grep_v(correct_answer)
    # .sample(22)
    # .push(correct_answer)
    #    .sort
  end

  def current_question
    <<~QUESTION
      #{directors_to_choose.map.with_index(1) { |d, i| "#{i}. #{d}" }.join("\n")}
    QUESTION
  end
end

