#line
#    there is nobody in line
#      should say the line is empty 
#    there are people in line
#      should display the current line 
#      works with different people in line 
  #take_a_number
#    there is nobody in line
#      should add a person to the line 
#    there are already people in line
#      should add a person to the end of the line 
#    adding multiple people in a row
#      should correctly build the line 
  #now_serving
#    there are no people in line
#      should say that the line is empty 
#    there are people in line
#      should serve the first person in line and remove them from the queue

katz_deli = ["Adam", "Allie"]

def line(array)
    if array.empty?
        puts "The line is currently empty."
    else
        current_line = "The line is currently:"
        array.each.with_index(1) do |person, i|
            current_line << " #{i}. #{person}"
        end
        puts current_line
    end
end

line(katz_deli)

def take_a_number(array, name)
    array << name 
    puts "Welcome, #{name}. You are number #{array.length} in line."
end

def now_serving(array) 
    if array.empty?
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{array.first}."
        array.shift
    end
end