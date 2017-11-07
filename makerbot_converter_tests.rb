require_relative 'makerbot_converter'
require 'minitest/autorun'

class TestConverterFeatures < MiniTest::Test

  def test_line_convert_G1_X_XandY_value
    one_line = Converter.new("G1 X105.400 Y-74.000 Z0.270 F9000.000 A3.514 (Extruder Prime Dry Move)")
    assert_equal("G1 X205.4 Y26.0 Z0.270 F9000.000 E3.514 (Extruder Prime Dry Move)",one_line.line_convert)
  end
  def test_line_convert_M127
    one_line = Converter.new("M127 T0; Disable Fan ")
    assert_equal("M107",one_line.line_convert)
  end
  def test_line_convert_M126
    one_line = Converter.new("M126 T0; Enable Fan ")
    assert_equal("M106",one_line.line_convert)
  end
  def test_line_convert_random
    one_line = Converter.new("M73 P4; Update Progress ")
    assert_equal("",one_line.line_convert)
  end
end

#G1 X105.400 Y-74.000 Z0.270 F9000.000 (Extruder Prime Dry Move)
