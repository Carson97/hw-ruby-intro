# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end
    


def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    0
  elsif arr.length == 1
    arr[0]
  else
    biggest = nil;
    nextBiggest = nil;
    i = 0;
    while i < arr.length
      if arr[i] > biggest or biggest == nil
        nextBiggest = biggest
        biggest = arr[i]
      elsif arr[i] > nextBiggest or nextBiggest == nil
        nextBiggest = arr[i]
      end
      i += 1;
    end
    total = biggest + nextBiggest
    return total
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0 || arr.length == 1
    return false
  else
    arr.combination(2).any? {|first, second| first + second == n}
  end
    
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s.empty? or (s[0] =~ /[[:alpha:]]/)==nil
  not ['A','E','I','O','U'].include?(s[0].upcase)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if (s =~ /\A[-+]?\d+\z/)==nil
  s.to_i % 4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % @price
  end
end
