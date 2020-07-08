#!/bin/bash
for i in `less list.txt`
do
	python gateway_pull.py -i $i
	python dsf2aptdat.py -i $i
done
