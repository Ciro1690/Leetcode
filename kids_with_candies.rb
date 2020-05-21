def kids_with_candies(candies, extra_candies)
   sorted = candies.sort
   max = sorted[-1] 
   threshold = max - extra_candies
   answer = []
   candies.each do |kid|
        if kid >= threshold
            answer << true
        else
            answer << false
        end
    end
    answer
end