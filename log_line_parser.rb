class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    array = @line.split(" ")
    @message = array.drop(1).join(" ")
  end

  def log_level
    log = @line.split(" ").slice(0)
    @level = log.slice(1, log.length - 3).downcase
  end

  def reformat
    message = message()
    level = log_level()
    "#{message} (#{level})"
  end
end

p LogLineParser.new("[ERROR]: Invalid operation").message
# => "Invalid operation"
p LogLineParser.new("[WARNING]:  Disk almost full\r\n").message
# => "Disk almost full"

p LogLineParser.new("[ERROR]: Invalid operation").log_level
# => "error"

p LogLineParser.new("[INFO]: Operation completed").reformat
# => "Operation completed (info)"
