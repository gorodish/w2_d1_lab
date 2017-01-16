require("minitest/autorun")
require("minitest/rg")
require_relative("../Student")

class TestStudent < MiniTest::Test

  def setup
    @daniel = Student.new("Daniel", 1)
    
  end

  def test_student_get_name
    assert_equal("Daniel", @daniel.name)
  end

  def test_student_get_cohort
    assert_equal(1, @daniel.cohort)
  end

  def test_student_update
    @daniel.student_update("Dave", 2)
    assert_equal(2, @daniel.cohort)
    assert_equal("Dave", @daniel.name)
  end

  def test_student_can_talk
    assert_equal("I can talk", @daniel.student_can_talk())
  end

  def test_say_favourite_language
    assert_equal("I love Ruby", @daniel.say_favourite_language("Ruby"))
  end
end