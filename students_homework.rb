def busy_student(start_time, end_time, query_time)
    i = 0
    count = 0
    while i < start_time.length
        time_dif = end_time[i] - start_time[i]
        option_a = query_time - end_time[i]
        option_b = query_time - start_time[i]
        if option_a.abs >= option_b.abs
            count +=1 if 0 <= time_dif - (option_a).abs
        else
            count +=1 if 0 <= time_dif - (option_b).abs
        end
    i+=1
    end
    p count
end
