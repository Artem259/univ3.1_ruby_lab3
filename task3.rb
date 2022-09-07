print 'Enter x n values (space-separated):'
str = gets
exit if str.nil? || str.empty?
str.chomp!
x, n = str.split(' ')
x, n = x.to_f, n.to_i
print "\nInput:\n x = #{x}\n n = #{n}\n"

current = 1.0; result = 1.0
8.times do
  current = current / 3
  result += current
end

print "\n  ~~ 2 ~~\n   ", result, "\n"

#------------------------------------------------------------#

current = 1.0; result = 1.0
(1..n).each do|i|
  current = current * x / i
  result += current
end

print "\n  ~~ 3 ~~\n   ", result, "\n"
