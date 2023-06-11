# welcome gnupl-step
appendix step about titles of  information gnuplot

```gnuplot
#!/usr/bin/gnuplot -persist
# In order to limit the heat map to a circle you  first extrapolate 
# the grid using dgrid3d and  store the data in a new file.
set terminal png
set terminal push
set xlabel 'x'
set ylabel 'y'
set xrange [-1:1]
set yrange [-1:1]
set cbrange [-1:1]
$table << EOD
# Curve 0 of 1, 11 points
# Curve title: ""$density""
# x y type
 0 -1.14161  o
-0.94493 -0.81804  i
 0.75306 -0.72  i
-0.25  0.17  i
 0.27  0  i
 1.05  0  o
-0.65549  0.65549  i
 0  1.142  o
 0.7364  0.98769  i
 0.15  0.06  i
-0.04  0.2265  i
EOD
set table  "$table"
set pm3d at b map
set dgrid3d 200,200,2
$density << EOD
#1      2        3        4      5		 6
#prob   x        y        z      density description
0.00000 -1.14161 -0.020	 0.7500	 "dense"
-0.94493 -0.81804 -0.020	 0.5753	 "normal"
0.75306 -0.72000 -0.020	 0.7792	 "dense"
-0.25000  0.17000 -0.020	 0.3848	 "normal"
0.27000  0.00000 -0.050	 0.7088	 "dense"
1.05000  0.00000 -0.050	 0.6634	 "dense"
-0.65549  0.65549 -0.050	 0.5262	 "normal"
 0.00000  1.14200 -0.050	 0.6315	 "normal"
 0.73640  0.98769 -0.050	 0.6797	 "dense"
0.15000  0.06000 -0.050	 0.8559	 "very dense"
-0.04000  0.22650 -0.050	 0.5386	 "normal"
EOD
plot "$density" with lines
```