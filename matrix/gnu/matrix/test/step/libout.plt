#!/usr/bin/gnuplot -persist
set encoding "utf8"
set terminal png
set terminal push
# values Runners
$val << EOD
135 1 140 2 145 4 <S1>
150 7 155 1 160 3 <S2>
165 5 170 6 180 7 <S3>
190 8 110 9 120 1 <S4>
135 1 140 2 145 4 <S5>
150 7 155 1 160 3 <S6>
165 5 170 6 180 7 <S7>
190 8 110 9 120 1 <S8>
135 1 140 2 145 8 <S9>
EOD
set output "/home/denis/Workspace/gnupl-step/gnu/matrix/img/invest/works.png"
plot $val with lines