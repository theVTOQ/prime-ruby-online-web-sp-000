# Add  code here!
def prime?(n)
  #example prime numbers: 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 43, 47
  #1 is not prime
  #all prime numbers are odd except 2
  #lowest possible base multiple for a non-prime odd number is 3, excluding 1
  #no base multiples of an odd number will be greater than
  #its truncated half

  return true if n == 2 || n == 3
  return false if n == 1 || n.even? || n < 0

  i = 3 #starting base multiple
  while i < (n/2).floor #max base multiple
    return false if n % i == 0
    i += 1
  end
  true
end
