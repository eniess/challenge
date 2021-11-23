$: << "../lib"

require  "challenge5"
require "test/unit"

class TestChallenge3 < Test::Unit::TestCase
  def test1
    assert_equal([1,2,4], challenge5([1,2,3], [3,4]))
    assert_equal([1,2,4,5], challenge5([1,2,3], [3,4,5]))
    assert_equal([1,2,3,4], challenge5([1,2,5], [3,4,5]))
  end
end
