# Objectives - Sort the array according to the requirements (reverse order or not)

def alphabetize(arr, rev = false)
    if rev
      return arr.sort! { |a,b| b<=>a }
    else
      return arr.sort!
    end
  end
  numbers = [9,6,45,8]
  puts alphabetize(numbers)