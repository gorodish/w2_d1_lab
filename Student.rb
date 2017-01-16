class Student

attr_accessor :name, :cohort

  def initialize(student_name, cohort)
    @name = student_name
    @cohort = cohort
  end

  def student_update(new_name, cohort)
    @name = new_name
    @cohort = cohort
  end

  def student_can_talk()
    return "I can talk"
  end

  def say_favourite_language(language)
    return "I love #{language}"
  end

end