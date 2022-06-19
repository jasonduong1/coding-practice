class SimpleCalculator
  ALLOWED_OPERATIONS = ["+", "/", "*"].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    if first_operand.is_a? String or second_operand.is_a? String
      raise ArgumentError.new("Invalid argument!")
    elsif operation == "+"
      total = first_operand + second_operand
      return "#{first_operand} + #{second_operand} = #{total}"
    elsif operation == "/"
      if second_operand == 0
        return "Division by zero is not allowed."
      else
        total = first_operand / second_operand
        return "#{first_operand} / #{second_operand} = #{total}"
      end
    elsif operation == "*"
      total = first_operand * second_operand
      return "#{first_operand} * #{second_operand} = #{total}"
    else
      raise UnsupportedOperation.new("Unsupported operation!")
    end
  end
end
