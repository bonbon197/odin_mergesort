#iterative
def fibs (num)
    array = [0,1]
    i = 2
    while i < num + 1 do
        array.push(array[i - 2] + array[i - 1])
        i += 1
    end
    return array[num]
end

#recursive
def fibs_rec (num)
    if num < 2
        return num
    else
        return fibs_rec(num - 1) + fibs_rec(num - 2)
    end
end

puts fibs(5)
puts fibs_rec(5)