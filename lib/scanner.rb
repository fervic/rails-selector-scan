class Scanner
    
  attr_reader :result
  
  def initialize
    @result = Hash.new
  end
    
  def scan_sass (filename)
    File.open(filename, 'r') do |file|
      file.each_with_index do |line, i|
        result[line] = i + 1
      end
    end
  end

end
