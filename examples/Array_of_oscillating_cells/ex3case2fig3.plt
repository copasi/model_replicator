#!/usr/bin/gnuplot -persist
# plot time course for units 25, 35 and 48 from time 720 to 800

set term pngcairo size 600,400
set output "ex3case2fig3.png"
set xrange[770:800]
set yrange[0:80]
set ylabel "[X]"
set xlabel "time, t"
set ytics (0,20,40,60,80)
set xtics (770,780,790,800)
plot 'ex3case2_data.tsv' u 1:26 lw 2 w lines t "unit 25", "" u 1:36 lw 2 w lines t "unit 35", "" u 1:48 lt 4 lw 2 w lines t "unit 47"
set output
