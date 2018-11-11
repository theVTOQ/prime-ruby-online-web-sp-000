# Add  code here!
def prime?(n)
  #example prime numbers: 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 43, 47
  #9: multiples: 3
  #15: multiples: 3, 5
  #36: 3, 4, 6, 9
  #35: 5, 7; half is between 17 and 18
  #37: half is between
  #rules: lowest multiples are never greater than half of the number;
  #lowest possible multiple for a prime number is 1
  #lowest possible multiple for a non-prime number is 2, excluding 1
  #lowest possible multiple for a non-prime odd number is 3, excluding 1
  #truncated half of odd number will never be a base multiple, and
  #no base multiples will be greater than this number
  #only one prime number will be divisible by 2
  #step 1, truncate half of number
  #ex: 5/2 ~= 2, prime
  #ex: 7/2 ~= 3, prime
  #ex: 11/2 ~= 5, prime
  #13/2 ~= 6, not prime
  #ex: 43/2 ~= 21, not prime
  #ex: 39/2 ~= 19, prime

  #make a list of base multiples until reach less than half
  return true if n > 1 && n <= 3
  return false if n == 1 || n.even? || n < 0
  preceding_integers = [3..n]
  i = 3
  while i < (n/2).floor
    return false if n % i == 0
    i += 1
  end
  true
end
