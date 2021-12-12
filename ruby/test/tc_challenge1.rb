$: << "../lib"

require "challenge1"
require "test/unit"

class TestChallenge1 < Test::Unit::TestCase
  def test1
    assert_equal("uuuuuu", challenge1("Pressuuuuuure"))
    assert_equal("ss", challenge1("Pressuure"))
    assert_equal("B", challenge1("Boat"))
    assert_equal("bbb", challenge1("Blubb bbb"))
    assert_equal("  ", challenge1("A hot  dog"))
  end
end
