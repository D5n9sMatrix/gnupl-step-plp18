# Afterwards a function is defined in order to limit the points to the inner of the circle and plot 
# the data from the temporary file.
set encoding "utf8"
set xrange [-1:1]
set yrange[-1:1]
set rrange[-1:1]
x = -1
y = 10
z = 20
r = 40
circle(x,y,z) = sqrt(x**2+y**2)>r ? NaN : z
plot circle(x,y,z) + x*x + y*y + z*z  with lines
set output "/home/denis/Workspace/gnupl-step/gnu/matrix/img/invest/tmp.png"
save "tmp"