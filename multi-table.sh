#!/bin/bash

# 파라미터 개수 검사
if [ "$#" -ne 2 ]; then
    echo "Invalid input"
    exit 1
fi

# 파라미터 값이 자연수인지 검사
if ! [[ $1 =~ ^[1-9][0-9]*$ ]] || ! [[ $2 =~ ^[1-9][0-9]*$ ]]; then
    echo "Input be greater than 0"
    exit 2
fi

rows=$1
columns=$2

# 곱셈 표 출력
for (( i=1; i<=rows; i++ ))
do
    for (( j=1; j<=columns; j++ ))
    do
        result=$((i*j))
        printf "%d*%d=%-8d" $i $j $result
    done
    echo ""
done

exit 0
