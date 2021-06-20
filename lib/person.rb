class Person
  def initialize(first_name:, last_name:, middle_name: nil)
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
    if @middle_name
      "#{@first_name} #{@middle_name} #{@last_name}"
    else
      "#{@first_name} #{@last_name}"
    end
  end

  def full_name_with_middle_initial
    if @middle_name
      "#{@first_name} #{@middle_name.chars.first} #{@last_name}"
    else
      "#{@first_name} #{@last_name}"
    end
  end

  def initials
    "#{@first_name[0]}#{@middle_name[0] if @middle_name}#{@last_name[0]}"
  end

end
