#!/bin/sh

branch=$1

echo $branch | sed 's/\%2F/\//g' > /tmp/somefile.txt