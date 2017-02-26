#!/usr/bin/ruby
class SummationNumber
  def readInputFromFile(no)
    file = IO.readlines("number#{no}.txt")
    check = SummationNumber.new
    if file.size != 1 || check.checkIsInteger(file[0]) == 0
      return 0
    else
      return file[0]
    end
  end

  def checkIsInteger(number)
  	if number.match(/^(\d)+$/)
  	  return 1
    else
      return 0
    end
  end

  def calculate(number1, number2)
  	return number1.to_i + number2.to_i
  end

  def saveResultTofile(result)
    file = File.open("result.txt", "w")
    file.puts("#{result}") 
    file.close
    puts "--------------------- calculate complete ------------------------"
  end
end

#main of calculte number1 + number2
puts "-----------------------------------------------------------------"
puts "-------------------  WELCOME TO MY PROGRAM ----------------------"
puts "-----------------------------------------------------------------"
object = SummationNumber.new
number1 = object.readInputFromFile(1)
number2 = object.readInputFromFile(2)
if number1 == 0
  puts "Please close program and check in file number1.txt. It have mixed Letters or characters."
elsif number2 == 0
  puts "Please close program and check in file number1.txt. It have mixed Letters or characters."
else
  result = object.calculate(number1, number2)
  puts " "
  puts "RESULT :: #{result}"
  puts " "
  object.saveResultTofile(result)
end

