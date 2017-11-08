require_relative 'start_gcode'
require_relative 'end_gcode'
# require 'tempfile'
# require 'fileutils'
#
# path = "Indian_Cheef.gcode"
# temp_file = Tempfile.new('temp')
#
# File.open(path, 'r') do |file|
#    file.each_line do |line|
#      line.delete_start_gcode

class Converter

  @lines = File.read('test.gcode').split('\n')

  def delete_start_gcode
    line = ""
    if line.include?("G92 E0")
      abort
    else
      line = ""
    end
  end

  def delete_end_gcode
    line = "" if line.include? "; End of print"
  end

  def line_convert
    @lines.each do |line|
      line.gsub!("A","E") if line.include? "A"

      if line.start_with?("G1 X")
        line_elements = line.split

        x_value = line_elements[1].gsub('X',' ').to_f
        x_real_value = (100 + x_value).round(3)
        line_elements[1] = "X" + x_real_value.to_s

        y_value = line_elements[2].gsub('Y',' ').to_f
        y_real_value = (100 + y_value).round(3)
        line_elements[2] = "Y" + y_real_value.to_s

        line = line_elements.join(" ")

      elsif line.start_with?("M127")
        line = "M107"

      elsif line.start_with?("M126")
        line = "M106"

      else
        line = ""
      end
      p line
    end
  end
end
