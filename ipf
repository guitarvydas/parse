#!/bin/bash

set -e
trap 'catch' ERR

catch () {
    exit 1
}

# usage: pf source-file grammar-file
temp=`which dpf`
srcdir=`dirname ${temp}`
node ${srcdir}/pf.js $1 $2
