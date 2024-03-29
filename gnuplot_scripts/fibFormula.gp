# gnu plot
set key autotitle columnhead
set ylabel "Time in milliseconds"

stats '../output/FibFormula' using 2:3
set title 'FibFormula X vs Time (ms)'
set xlabel "X"
n = STATS_max_x
t = STATS_max_y
a = t / (n)
f(x) = a*x
set yrange [0:t]
set xrange [0:n]
plot '../output/FibFormula' using 21:3 lw 3, f(x) lw 3