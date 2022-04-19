#!/bin/bash
awk -F~ '{ print $2 " once said, \""$1"\"" }' $1 > $2
