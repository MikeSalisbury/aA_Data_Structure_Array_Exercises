# EASY

# Write a method that returns the range of its argument (an array of integers).
def range(arr)
  arr.max - arr.min
end

# Write a method that returns a boolean indicating whether an array is in sorted
# order. Use the equality operator (==), which returns a boolean indicating
# whether its operands are equal, e.g., 2 == 2 => true, ["cat", "dog"] ==
# ["dog", "cat"] => false
def in_order?(arr)
  arr == arr.sort
end


# MEDIUM

# Write a method that returns the number of vowels in its argument
def num_vowels(str)
  count = 0
  str.chars do |l|
    if "aeiou".include?(l.downcase)
      count +=1
    end
  end
  count
end

# Write a method that returns its argument with all its vowels removed.
def devowel(str)
  result = ""
  str.chars.each do |l|
    if "aeiou".include?(l.downcase)
      next
    else
      result << l
    end
  end
  result
end


# HARD

# Write a method that returns the returns an array of the digits of a
# non-negative integer in descending order and as strings, e.g.,
# descending_digits(4291) #=> ["9", "4", "2", "1"]
def descending_digits(int)
  result = []
  int_array = int.to_s.chars
  int_array.map! {|el| el.to_i}
  int_array = int_array.sort.reverse
  int_array.map! {|el| el.to_s}
end

# Write a method that returns a boolean indicating whether a string has
# repeating letters. Capital letters count as repeats of lowercase ones, e.g.,
# repeating_letters?("Aa") => true
def repeating_letters?(str)
  chars = str.downcase.chars
  chars.each_index do |i|
    if chars[i] == chars[i+1]
      return true
    end
  end
  false
end

# Write a method that converts an array of ten integers into a phone number in
# the format "(123) 456-7890".
def to_phone_number(arr)
  "(#{arr[0..2].join.to_i}) #{arr[3..5].join.to_i}-#{arr[6...arr.length].join.to_i}"
end

# Write a method that returns the range of a string of comma-separated integers,
# e.g., str_range("4,1,8") #=> 7
def str_range(str)
  nums = str.split(",")
  int_nums_arr = nums.map {|num| num.to_i}
  int_nums_arr.max - int_nums_arr.min
end


#EXPERT

# Write a method that is functionally equivalent to the rotate(offset) method of
# arrays. offset=1 ensures that the value of offset is 1 if no argument is
# provided. HINT: use the take(num) and drop(num) methods. You won't need much
# code, but the solution is tricky!
def my_rotate(arr, offset=1)
  if offset < 0
    offset = (arr.length-1) - (offset.abs % arr.length-1)
  else
    offset = offset % arr.length
  end
  takes = arr.take(offset)
  drops = arr.drop(offset)
  result = drops + takes
end
