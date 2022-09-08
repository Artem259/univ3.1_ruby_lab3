def y(x, n)
  x, n = x.to_f, n.to_f
  begin
    y = 2 * (Math.sqrt(1 + ((1/x)*(Math.sqrt((1/x)-Math.sqrt(x))))))**2
    y / (Math.sqrt(1 + (1/n)*Math.sqrt((1/x)-Math.sqrt(x))) - (1/2)*Math.sqrt((1/x) - Math.sqrt(n)))
  rescue
    return "[calculation error]"
  end
  y
end

def z(x, c)
  x, c = x.to_f, c.to_f
  begin
    z = ((Math.sin(x)**2 + Math.tan(x)**2)**c + 1) * (Math.cos(x)**2 - (1/Math.tan(x))**2 + 1)
    z / ((Math.cos(x)**2 + (1/Math.tan(x))**2 + 1) * (Math.sin(x)**2 + Math.tan(x)**2 - 1))
  rescue StandardError
    return "[calculation error]"
  end
  z
end

print 'Enter n c values (space-separated):'
str = gets
exit if str.nil? || str.empty?
str.chomp!
n, c = str.split(' ')
n, c = n.to_i.abs, c.to_i.abs
print "\nInput:\n n = #{n}\n c = #{c}\n"
n, c = n.to_f, c.to_f

print "\n  ~~ 1 ~~\n"

for i in (0 .. n+c-1)
  x = 1 + i * ((n-1)/(n+c-1))
  print i, ") x = ", x, "  ==>  y = ", y(x, n), "\n"
end

#------------------------------------------------------------#

print "\n  ~~ 2 ~~\n"

i = 0
while i <= (3.0/2)*n + c - 1
  x = Math::PI/n + i * ((Math::PI-Math::PI/n)/((3.0/2)*n+c-1))
  print i, ") x = ", x, "  ==>  z = ", z(x, c), "\n"
  i += 1
end

#------------------------------------------------------------#

print "\n  ~~ 3 ~~\n"

for i in (0 .. 2*n-1)
  x = 2 + i * ((c-2)/(2*n-1))
  if 2 < x && x < n
    print i, ") x = ", x, "  ==>  f = y = ", y(x, n), "\n"
  elsif n < x && x < 2*n
    print i, ") x = ", x, "  ==>  f = z = ", z(x, c), "\n"
  else
    print i, ") x = ", x, "  ==>  f = y+z = ", y(x, n).to_f+z(x, c).to_f, "\n"
  end
end
