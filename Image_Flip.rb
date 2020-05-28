def flip_and_invert_image(a)
    p horizontal_flip(a)
    invert_image(a)
end

def horizontal_flip(a)
    a.each_with_index do |row,i|
        flipped = row.reverse
        a[i] = row.reverse
    end
    a
end

def invert_image(a)
    a.each do |pos|
        pos.each_with_index do |ele,i|
            if ele == 0
                pos[i]= 1
            elsif ele == 1
                pos[i] = 0
            end
        end
    end
    a
end

p flip_and_invert_image([[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]])