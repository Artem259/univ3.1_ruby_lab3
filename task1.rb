a = false
b = false
c = true
x = 1.0
y = 16.0
z = -40.0

res = []
res[0] = !(a || b) && (a && !b)
res[1] = (z != y).object_id <= (6 >= y).object_id && a || b && c && x>=1.5
res[2] = (8 - x*2 <= z) && (x**2 >= y**2) || (z >= 15)
res[3] = x>0 && y<0 || z >= (x*y + (-y/x)) + (-z)*(-2)
res[4] = !(a || b && !(c || (!a || b)))
res[5] = x**2 + y**2 >= 1 && x >= 0 && y >= 0
res[6] = (a && (c && b != b || a) || c) && b

print "\n  ~~ 1 ~~\n"
c = 'a'
res.each do |i|
  print "#{c}) ", i, "\n"
  c.next!
  c = 'g' if c=='e'
end

#------------------------------------------------------------#

n = -2
m = 1
p = true
q = true

res = ((p && q) == !(!p || !q) && (m**2 + n**2 < 4) && (m+n < 1))

print "\n  ~~ 2 ~~\n   ", res, "\n"
