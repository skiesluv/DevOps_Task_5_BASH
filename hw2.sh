#!/bin/bash
read A;
if [ $A = 0 ]; then
    echo "Not a quadratic equation.";
    exit 0;
fi
read B;
read C;
D=$(( ($B)*($B)-4*($A)*($C) ));
#integer math only!
if [ $D = 0 ]; then
    echo -n "x = "
    echo -e "scale=3\n-0.5*($B)/($A)" | bc
    exit 0;
fi
echo $D
if [ $D -gt 0 ]; then
    echo -n "x1 = "
    echo -e "scale=3\n0.5*(-($B)+sqrt($D))/($A)" | bc
    echo -n "x2 = "
    echo -e "scale=3\n0.5*(-($B)-sqrt($D))/($A)" | bc
else
    echo -n "x1 = ("
    echo -e "scale=3\n-0.5*($B)/($A)" | bc
    echo -n ", "
    echo -e "scale=3\n0.5*sqrt(-($D))/($A)" | bc
    echo ")"
    echo -n "x2 = ("
    echo -e "scale=3\n-0.5*($B)/($A)" | bc
    echo -n ", "
    echo -e "scale=3\n-0.5*sqrt(-($D))/($A)" | bc
    echo ")"
fi