#!/bin/bash

	TEMP_FILE=/sys/class/thermal_zob=ne0/temp

	TEMP_O=$(cat $TEMP_FILE)
	TEMP_C=$((TEMP_O/1000))

	echo TEMP_C
