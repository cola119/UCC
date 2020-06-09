#!/bin/bash

assert() {
    expected="$1"
    input="$2"

    ./ucc "$input" > tmp.s
    cc -o tmp tmp.s
    ./tmp
    actual="$?"

    if [ "$actual" = "$expected" ]; then
        echo "$input => $actual"
    else
        echo "$input => $expected expected, but go $actual"
    fi
}

assert 0 0
assert 41 41
assert 21 "5+20-4"

echo OK