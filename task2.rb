def f1(x)
  ((x-2.0).abs/(x**2 * Math.cos(x))) ** 1.0/7
end

def f2(x)
  1 / ((Math.tan(x + 1/(Math::E**x)) / (Math.sin(x))**2)**(2.0/7))
end

def f3(x)
  1/(1 + (x/(1 + (x/(1.0 + x)))))
end

print 'Enter x value:'
str = gets
exit if str.nil? || str.empty?
str.chomp!
x = str.to_f
print "\nInput:\n x = #{x}\n\n"

if -4 < x && x <= 0
  res = f1(x)
elsif 0 < x && x <= 12
  res = f2(x)
elsif x < -4 || x > 12
  res = f3(x)
else
  res = "#"
end

print "Result [IF] is   #{res}\n"

#------------------------------------------------------------#

case x
  when ((-4.0).next_float .. 0)
    res = f1(x)
  when ((0.0).next_float .. 12)
    res = f2(x)
  when (-Float::INFINITY ... -4), ((12.0).next_float .. Float::INFINITY)
    res = f3(x)
  else
    res = "#"
end

print "Result [CASE] is #{res}\n"
