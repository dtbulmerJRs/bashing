#!/bin/bash
shopt -s nullglob
for dir in cecs274/*/
do
    for file in "$dir"/*
    do
        if [[ -f $file ]]
        then
            lpr -P Canon-MX890-series -# 1 $file
        fi
    done
done
