def merge_sort(nums)
    sorted = []
    if nums.length < 2
        return nums
    else
        a = merge_sort(nums[0, nums.length / 2])
        b = merge_sort(nums[nums.length / 2..nums.length])
    end
    while a[0] && b[0] do
        a[0] <= b[0] ? sorted << a.shift : sorted << b.shift
    end
    sorted + a + b
end

p merge_sort([3, 4, 2, 1, 5, 0, 10, 9, 7, 8, 6])