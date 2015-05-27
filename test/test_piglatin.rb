require 'bundler/setup'
require 'minitest/autorun'
require 'minitest/pride'
require 'piglatin'

class PigLatinTest < MiniTest::Test

  def test_1_human
    expected = "umanhay"
    assert_equal expected, PigLatin.translate("human")
  end

  def test_2_transformation
    skip
    expected = "ansformationtray"
    assert_equal expected, PigLatin.translate("transformation")
  end

  def test_3_occupying
    skip
    expected = "occupyingyay"
    assert_equal expected, PigLatin.translate("occupying")
  end

  def test_4_combat_complains
    skip
    expected = "ombatcay omplainscay"
    assert_equal expected, PigLatin.translate("combat complains")
  end

  def test_5_The_Resemblance_Mutters
    skip
    expected = "ethay esemblanceray uttersmay"
    assert_equal expected, PigLatin.translate("The Resemblance Mutters")
  end

  def test_6_human_The_Resemblance_Mutters_Capitalized
    skip
    expected = "Ethay Esemblanceray Uttersmay"
    assert_equal expected, PigLatin.translate("The Resemblance Mutters")
  end

  def test_7_human_15_Dangerous_Facts_Electricians_Keep_To_Themselves
    skip
    expected = "15 Angerousday Actsfay Electriciansyay Eepkay Otay Emselvesthay"
    assert_equal expected, PigLatin.translate("15 Dangerous Facts Electricians Keep To Themselves")
  end

  def test_8_The_unpopular_glory_renames_an_ice!
    skip
    expected = "Ethay unpopularyay oryglay enamesray anyay iceyay!"
    assert_equal expected, PigLatin.translate("The unpopular glory renames an ice!")
  end

end