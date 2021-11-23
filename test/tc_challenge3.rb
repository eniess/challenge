$: << "../lib"

require "challenge3"
require "test/unit"

class TestChallenge3 < Test::Unit::TestCase
  def test1
    assert_equal(5, challenge3("Hello World"))
    assert_equal(4, challenge3(" fly me   to   the moon    "))
    assert_equal(6, challenge3("luffy is still joyboy"))
  end
end
