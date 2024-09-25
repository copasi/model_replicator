# line styles

set style line 1 lt 1 lw 3 lc rgb '#9ECAE1' # light blue
set style line 2 lt 1 lw 3 lc rgb '#6BAED6' #
set style line 3 lt 1 lw 3 lc rgb '#4292C6' # medium blue
set style line 4 lt 1 lw 3 lc rgb '#084594' # dark blue

set style line 5 lt 1 lw 3 lc rgb '#66C2A4' #
set style line 6 lt 1 lw 3 lc rgb '#41AE76' # medium blue-green
set style line 7 lt 1 lw 3 lc rgb '#238B45' #
set style line 8 lt 1 lw 3 lc rgb '#005824' # dark blue-green

set style line 9 lt 1 lw 3 lc rgb '#8a8a8a' # black

set style line 10 lt 1 lw 3 lc rgb '#C994C7' # light purple-red
set style line 11 lt 1 lw 3 lc rgb '#DF65B0' #
set style line 12 lt 1 lw 3 lc rgb '#E7298A' # medium purple-red
set style line 13 lt 1 lw 3 lc rgb '#CE1256' #

set style line 14 lt 1 lw 3 lc rgb '#FC9272' # light red
set style line 15 lt 1 lw 3 lc rgb '#FB6A4A' #
set style line 16 lt 1 lw 3 lc rgb '#EF3B2C' # medium red
set style line 17 lt 1 lw 3 lc rgb '#99000D' # dark red

set term pngcairo font "Arial, 13" size 700,600
set output "regfunction.png"
#set term qt font "Arial, 13" size 1024,720

set samples 250
set xrange[0:10]
set yrange[0:2.2]
set border linewidth 3
unset key
set xlabel "M_i" font "Arial, 14"
set ylabel "regulatory term"  font "Arial, 14"

set label 1 "a=-1" at 8,0.18 font "Arial, 14" textcolor rgb '#084594'
set label 2 "a=-0.5" at 8,0.62 font "Arial, 14" textcolor rgb '#005824'
set label 3 "a=0" at 8,1.07 font "Arial, 14" textcolor rgb '#8a8a8a'
set label 4 "a=0.5" at 8,1.58 font "Arial, 14" textcolor rgb '#CE1256'
set label 5 "a=1" at 8,2.07 font "Arial, 14" textcolor rgb '#99000D'

set label 6 "h=1" at 2.5,1.68 font "Arial, 14" textcolor rgb '#FC9272'
set label 7 "h=2" at 2.5,1.82 font "Arial, 14" textcolor rgb '#FB6A4A'
set label 8 "h=4" at 2.5,1.94 font "Arial, 14" textcolor rgb '#EF3B2C'
set label 9 "h=8" at 2.5,2.04 font "Arial, 14" textcolor rgb '#99000D'

plot (1+(1-1)*x)/(1+x) t "a=-1" ls 1, (1+(1-0.5)*x)/(1+x) t "a=-0.5" ls 5, (1+(1+0)*x)/(1+x) t "a=0" ls 9, (1+(1+0.5)*x)/(1+x) t "a=+0.5" ls 10, (1+(1+1)*x)/(1+x) t "a=+1" ls 14 , \
(1+(1-1)*x**2)/(1+x**2) t "a=-1" ls 2, (1+(1-0.5)*x**2)/(1+x**2) t "a=-0.5" ls 6, (1+(1+0.5)*x**2)/(1+x**2) t "a=+0.5" ls 11, (1+(1+1)*x**2)/(1+x**2) t "a=+1" ls 15, \
(1+(1-1)*x**4)/(1+x**4) t "a=-1" ls 3, (1+(1-0.5)*x**4)/(1+x**4) t "a=-0.5" ls 7, (1+(1+0.5)*x**4)/(1+x**4) t "a=+0.5" ls 12, (1+(1+1)*x**4)/(1+x**4) t "a=+1" ls 16, \
(1+(1-1)*x**8)/(1+x**8) t "a=-1" ls 4, (1+(1-0.5)*x**8)/(1+x**8) t "a=-0.5" ls 8, (1+(1+0.5)*x**8)/(1+x**8) t "a=+0.5" ls 13, (1+(1+1)*x**8)/(1+x**8) t "a=+1" ls 17

set output
set term qt
