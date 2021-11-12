#!/bin/bash
cmd=$1
case "$cmd" in
pfr)
    node parse.js $2 $3 $4 $5 $6
    ;;
pf) 
    node pf.js $2 $3
    ;;
*)
    echo usage "pfr target-text grammar glue [support] [t]"
    echo usage "pf target-text grammar"
    exit 1
esac
