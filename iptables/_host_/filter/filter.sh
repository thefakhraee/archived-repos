#!/usr/bin/env bash
our_filter=../rules.v4.filter
touch $our_filter
cat filter-header >> $our_filter
cat input/input-{drop,accept,tail} >> $our_filter
cat forward/forward-{accept,tail} >> $our_filter
cat output/output-{accept,drop,tail} >> $our_filter
echo COMMIT >> $our_filter
