#!/bin/bash

nohup julius -input mic -C Sample.jconf > voice.txt &

while [  true ]; do

if grep "STEVE" voice.txt
then 
	espeak -vde hallo
	 ./stt.sh
	./ttc.sh
	> voice.txt
	
fi
done
exit 1
