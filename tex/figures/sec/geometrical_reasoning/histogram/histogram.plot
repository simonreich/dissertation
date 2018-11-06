reset

set term tikz size 8.4,3.4
set output "histogram.tex"
set grid


set xlabel 'Binned distance [a.u.]'
set ylabel 'Count'
#set title 'Histogramm über Einsatzabstand'
#set label 'test' at  2, 20
#set key outside

set xrange [0.5:20.5]
set yrange [0:20000000]
#set mxtics
set xtics (5,10,15)
set ytics (100000000)
set format y "$%2.0t{\\cdot \327}10^{%L}$"


set sample 1000

set boxwidth 0.5
set style fill solid
p './histogram1.dat' u 1:2 t '' with boxes lt rgb "#aa0000", './histogram2.dat' u 1:2 t '' with boxes lt rgb "#00aa00"

