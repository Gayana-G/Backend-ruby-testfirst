#write your code here
def add(num_1, num_2)
    num_1 + num_2
end

def subtract(num_1, num_2)
    num_1 - num_2
end

def sum(arr)
    arr.reduce(0) { |sum, num| sum + num}
end

def multiply(*nums)
    nums.reduce { |total, num| total * num}
end

def power(num_1, num_2)
    num_1 ** num_2
end

def factorial(num)
    return 1 if num == 0 
    num * factorial(num - 1)
end