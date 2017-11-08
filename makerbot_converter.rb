# require 'tempfile'
# require 'fileutils'

class Converter
  def initialize
    @converted_lines = []
  end

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
    lines = []
    start_gcode = []
    end_gcode = []
    File.read('test.gcode').each_line{|line| lines << line}
    File.read('start_gcode.txt').each_line{|line| start_gcode << line}
    File.read('end_gcode.txt').each_line{|line| end_gcode << line}
    converted_lines = []
    lines.each do |line|

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
        converted_lines << line
      elsif line.start_with?("M127")
        line = "M107"
        converted_lines << line
      elsif line.start_with?("M126")
        line = "M106"
        converted_lines << line
      else
        next
        #line = ""
        #converted_lines << line
      end
    end
    newfile = File.new("test1.gcode","w")
    newfile << start_gcode.join(" ")
    newfile << converted_lines.join("\r\n")
    newfile << end_gcode.join(" ")
    newfile.close();
  end
end

Converter.new.line_convert
