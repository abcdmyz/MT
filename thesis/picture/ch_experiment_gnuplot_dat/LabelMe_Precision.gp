pathin="/home/zhouyy/MasterThesis/thesis/picture/ch_experiment_gnuplot/xample.eps"
pathout="/home/zhouyy/MasterThesis/thesis/picture/ch_experiment_gnuplot/iLabelMe.dat"



set terminal eps
set output "/home/zhouyy/MasterThesis/thesis/picture/ch_experiment_gnuplot/xample.eps"
unset title
set xlabel "相似度阈值"
set ylabel "召回率(%)"
set xrange [3:9]
set xtics ("0.3" 3, "0.4" 4, "0.5" 5, "0.6" 6, "0.7" 7, "0.8" 8, "0.9" 9)
set key right top
plot "/home/zhouyy/MasterThesis/thesis/picture/ch_experiment_gnuplot/LabelMe.dat" using 1:3 with linespoints pt 5 lt -1 title "SSBRS", "/home/zhouyy/MasterThesis/thesis/picture/ch_experiment_gnuplot/LabelMe.dat" using 1:6 with linespoints pt 6 lt -1 title "LSH+BayesLSH", "/home/zhouyy/MasterThesis/thesis/picture/ch_experiment_gnuplot/LabelMe.dat" using 1:9 with linespoints pt 7 lt -1 title "ATLAS"

