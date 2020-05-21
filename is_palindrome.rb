def is_palindrome(s)
    alpha = ("a".."z").to_a
    nums = ("0".."9").to_a
    string = []
    array = s.split(" ")
    array.each do |ele|
        ele.each_char do |char|
            string << char.downcase if (alpha.include?(char.downcase) || nums.include?(char))
        end
    end

   p string == string.reverse
end

is_palindrome("0P")