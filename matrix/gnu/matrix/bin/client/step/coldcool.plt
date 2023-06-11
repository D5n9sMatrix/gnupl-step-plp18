#!/usr/bin/gnuplot -persist
set encoding "utf8"
r = 1.49 # make radius smaller to exclude interpolated edge points
set label 'normal' at -1,0.2 center front tc ls 1
set label 'dense' at 0.5,0.75 center front tc ls 1
set label 'very dense' at 0.3,-0.3 center front tc ls 1
set xrange [-1:1]
set yrange[-1:1]
set rrange[-1:1]
x = -1
y = 10
z = 20
r = 40
circle(x,y,z) = sqrt(x**2+y**2)>r ? NaN : z
set output "/home/denis/Workspace/gnupl-step/gnu/matrix/img/invest/input-pattern.png"

plot "/home/denis/Workspace/gnupl-step/gnu/matrix/bin/client/text/density.txt" \
         u (circle($2,$3,$2)):(circle($2,$3,$3)) w p ls 1
save "coldcool"         