#!/usr/bin/env bash
our_nat=../rules.v4.nat
touch $our_nat
cat nat-header >> $our_nat
cat nat-prerouting >> $our_nat
cat nat-postrouting >> $our_nat
echo COMMIT >> $our_nat
