def create_target_array(nums, index)
    target = []
    index.each_with_index do |ele,ind|
        val = nums[ind]
        pos = index[ind]
        target.insert(pos,val)
    end
    target
end