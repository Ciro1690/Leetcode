def smaller_numbers_than_current(nums) #takes an array and returns a new array of how many numbers each index is larger than.
   array2 = []
   array = nums.sort
   i = 0
   while i <nums.length
      array2 << array.index(nums[i])
   i+=1
   end
   return array2 
end

def roman_to_int(s) #converts a roman numeral to an integer.
    hash = {"I" => 1,"V" => 5,"X" => 10,"L" => 50,"C" => 100,"D" => 500,"M" => 1000 }
    num = 0
    array = s.split("")
    i = 0
    while i < array.length
      if (array[i] == "I" && (array[i+1] == "V" || array[i+1] == "X")) ||
         (array[i] == "X" && (array[i+1] == "L" || array[i+1] == "C")) ||
         (array[i] == "C" && (array[i+1] == "D" || array[i+1] == "M"))
          num += hash[array[i+1]] 
          num -= hash[array[i]]
          i+=1
      else
         num += hash[array[i]] 
      end
    i+=1
    end
    return num
end

def generate_the_string(n) #takes in a number and returns a string with that many elements without an even number of any letter.
    odd = n-1
    if n % 2 == 0
        return "a"*odd + "b"   
    else
        return "a"*n
    end
end

def fib(n) #gives the fibonacci value for a number.
   if n == 0
       return 0
   elsif n == 1
       return 1
   end
   array = [1,1]
   while array.length < n
       last = array[-1]
       second_to_last = array[-2]
       new_num = last + second_to_last
       array << new_num
   end
  return array[n-1]
end

def fizz_buzz(n) #returns the fizzbuzz value for a number.
 array = []
 i = 1
    while i <= n
      if (i % 3 == 0) && (i % 5 == 0)
          array << "FizzBuzz"
      elsif i % 3 == 0
          array << "Fizz"
      elsif i % 5 == 0
          array << "Buzz"
      else
          array << i.to_s
      end
     i+=1
    end
    return array
end

def find_numbers(nums) #takes in an array and counts how many numbers have an even amount of digits.
    count = 0
  	i = 0
  	while i < nums.length()
      if nums[i].to_s.length % 2 == 0
        count +=1
      end
      i+=1
    end
  return count
end

def is_palindrome(x) #determines if a number is a palindrome.
    string = x.to_s
    if string == string.reverse
        return true
    else
        return false
    end
end