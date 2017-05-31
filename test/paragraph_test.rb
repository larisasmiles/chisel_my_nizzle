require 'minitest/autorun'
require 'minitest/pride'
require './lib/paragraph'

class ParagraphTest < Minitest::Test

  def test_if_it_exists
    p = Paragraph.new

    assert_instance_of Paragraph, p
  end

  # def test_if_it_converts_a_paragraph_to_markdown
  #
  # end
end
