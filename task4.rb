def fact(n)
  n > 1 ? n*fact(n-1) : 1
end

e = 0.00001

print 'Enter x value:'
str = gets
exit if str.nil? || str.empty?
str.chomp!
x = str.to_f
print "\nInput:\n x = #{x}\n"

n = 2.0; result = 0.0
loop do
  current = (fact(n-1) / fact(n+1)) ** (n * (n+1))
  result += current
  n += 1
  break if current.abs < e
end

print "\n  ~~ 1 ~~\n   ", result, "\n"

#------------------------------------------------------------#

n = 1.0; current = 1.0; result = 1.0
loop do
  current = current * x / n
  result += current
  n += 1
  break if current.abs < e
end

print "\n  ~~ 2 ~~\n   e^x [FORMULA]: ", result, "\n"
print "      e^x [RUBY]: ", Math::E**x, "\n"

#------------------------------------------------------------#

n = 1.0; result = 0.0
loop do
  current = (fact(4*n-1) * fact(2*n-1)) / (fact(3*n) * (3**(2*n)) * fact(n))
  result += current
  n += 1
  break if current.abs < e
end

print "\n  ~~ 3 ~~\n   ", result, "\n"
