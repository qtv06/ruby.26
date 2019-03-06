## endless range
[1, 2, 3].zip (1..)
# [[1, 1], [2, 2], [3, 3]]

(1..).step(10).take(10)
# [1, 11, 21, 31, 41, 51, 61, 71, 81, 91]

[1, 3, 4][2..]
# [4]

## Enumerable::ArithmethicSequence
### range step
(1..10).step(2).first
# 1

(1..10).step(2).last
# 10

## merge hash with multiple arguments
## combine in once
a = {a: 1}
b = {b: 2}
c = {c: 3}

a.merge(b).merge(c)
# {:a=>1, :b=>2, :c=>3}

a.merge(b, c)
# {:a=>1, :b=>2, :c=>3}

## New exeption option
# raise error when convertd a value to type like Integer is failed
Integer("asd")
# ArgumentError (invalid value for Integer(): "asd")

# Add option
Integer("asd", exeption: false)

## Random
Random.bytes(10)
## Random is 8x faster than secure

### With securerandom module
require 'securerandom'
SecureRandom.bytes(10)

##Range#%
((2..) % 2).take 2

## Union And Diffence
[1, 2, 3].difference [3]
# [1, 2]

[1, 2, 3].union [4, 5]
# [1, 2, 3, 4, 5]