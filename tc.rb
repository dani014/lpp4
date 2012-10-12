require "test/unit"
require "./circulo.rb"

class TestCircle < Test::Unit::TestCase

  def test_typecheck
    assert_raise( RuntimeError ) { Circle.new('1.0' ).radius }
    assert_raise( RuntimeError ) { Circle.new(1..2).radius }
    assert_raise( RuntimeError ) { Circle.new([1, 2]).radius }
  end

  def test_negative_number
    assert_raise ( RuntimeError ) { Circle.new(-5.0).radius }
  end

  def test_correct_result
    assert_equal(0, Circle.new(0.0).radius)
    assert_equal(0.15915457091927682, Circle.new(1.0).radius)
  end

end