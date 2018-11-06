reset

set output "transistorsize.tex"
set terminal tikz plotsize 9,3

set grid
set grid noxtics
set grid ytics

set xtics rotate by -45
set xtics nomirror offset -1,0.3
set ytics nomirror

#set title 'Histogramm über Einsatzmonat'
#set label 'test' at  2, 20
set xlabel 'Year'
set ylabel 'Size [µm]'

set nokey

set logscale y

#set yrange [0.019:11.75]
set yrange [0.0085:11.75]
set xrange [1971:2019]


set style line 1 lt 2 lc rgb '#AA0000' lw 3 dashtype 1
set style line 2 lt 2 lc rgb '#00AA00' lw 3 dashtype 1
set style line 3 lt 2 lc rgb '#0000AA' lw 3 dashtype 1


plot 'transistorsize.dat' using 1:2 ti "Transistor Size" ls 1
