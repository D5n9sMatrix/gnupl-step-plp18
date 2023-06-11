#!/usr/bin/gnuplot -persist
# Those data points have to be extrapolated onto a grid for the heat map, which can be achieved by the
#  following commands. 
set terminal png
set terminal push
set xrange[-1:1]
set yrange [-1:1]
set cbrange [-1:1]
set view map
set pm3d at b map
set dgrid3d 200,200,2
set output "/home/denis/Workspace/gnupl-step/gnu/matrix/img/invest/rain.png"
f(x,y) = x*sin(x**2/1*8) + exp(y*x/2+8) + tan(x*x)
splot  f(x,y)  with  lines
