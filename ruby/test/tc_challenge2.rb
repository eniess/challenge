$: << "../lib"

require "challenge2"
require "test/unit"

class TestChallenge2 < Test::Unit::TestCase
  def test1
    assert_equal([0, 5], challenge2([2, 4, 6, 8, -10, 100, -6, -5]))
    assert_equal([2, 5], challenge2([2, -4, 6, 8, -10, 100, -6, -5]))
    assert_equal([2, 6], challenge2([2, -4, 6, 8, -10, 100, 6, -5]))
    assert_equal([0, 0], challenge2([110, -40, 6, 8, -10, 10, 6, -5]))
    assert_equal([7, 7], challenge2([2, -4, 6, 8, -10, -100, -6, 500]))
  end
end
