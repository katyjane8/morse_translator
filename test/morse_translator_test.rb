require 'minitest/emoji'
require 'minitest/autorun'
require './lib/morse_translator'

class TranslateTest < Minitest::Test
  def test_translator_exists
    translator = Translate.new
    assert_instance_of Translate, translator
  end

  def test_it_can_translate_eng_to_morse
    translator = Translate.new
    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
  end

  def test_for_all_cases
    translator = Translate.new
    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("Hello World")
    assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.eng_to_morse("There are 3 ships")
  end

  def test_read_file
    translator = Translate.new
    assert_equal ".. .--- ..-. .- ..-....-...", translator.from_file("input.txt")
  end
end
