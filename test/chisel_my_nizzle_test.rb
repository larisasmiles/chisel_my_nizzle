require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel_my_nizzle'

class ChiselMyNizzleTest < Minitest::Test

  def test_if_it_exists
    c = ChiselMyNizzle.new("markdown")

    assert_instance_of ChiselMyNizzle, c
  end

  # def test_if_it_converts_to_html
  #   c = ChiselMyNizzle.new("markdown")
  #   expected =
  #   actual   =
  # end

end
