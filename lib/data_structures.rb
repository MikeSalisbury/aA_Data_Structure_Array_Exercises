# EASY

# Write a method that returns the range of its argument (an array of integers).
def range(arr)
  arr.max - arr.min
end

# Write a method that returns a boolean indicating whether an array is in sorted
# order. Use the equality operator (==), which returns a boolean indicating
# whether its operands are equal, e.g., 2 == 2 => true, ["cat", "dog"] ==
# ["dog", "cat"] => false
def in_order?(arr) # Rare sitation in which bubble sort would be more efficient
  idx = 0
  while idx < arr.size-1
    return false if arr[idx] > arr[idx+1]
    idx += 1
  end
  true
end


# MEDIUM

# Write a method that returns the number of vowels in its argument
def num_vowels(str)
  str.downcase.chars.count { |l| "aeiou".include?(l) }
end

# Write a method that returns its argument with all its vowels removed.
def devowel(str)
  str.chars.reject do |l|
    "aeiou".include?(l.downcase)
  end.join
end


# HARD

# Write a method that returns the returns an array of the digits of a
# non-negative integer in descending order and as strings, e.g.,
# descending_digits(4291) #=> ["9", "4", "2", "1"]
def descending_digits(int)
  int.to_s.chars.sort.reverse
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
  "(abc) def-ghij".tr("abcdefghij",arr.join.to_s) # Just to show it's possible :)
end

# Write a method that returns the range of a string of comma-separated integers,
# e.g., str_range("4,1,8") #=> 7
def str_range(str)
  nums = str.split(",").map(&:to_i)
  nums.max - nums.min
end


#EXPERT

# Write a method that is functionally equivalent to the rotate(offset) method of
# arrays. offset=1 ensures that the value of offset is 1 if no argument is
# provided. HINT: use the take(num) and drop(num) methods. You won't need much
# code, but the solution is tricky!
def my_rotate(arr, offset=1) # Made no changes. Looks elegant. Don't think I could do better
  arr.drop(arr.take(offset))

  # if offset < 0
  #   offset = (arr.length-1) - (offset.abs % arr.length-1)
  # else
  #   offset = offset % arr.length
  # end
  # takes = arr.take(offset)
  # drops = arr.drop(offset)
  # result = drops + takes
end
