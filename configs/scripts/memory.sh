#!/bin/bash


# More efficient version of the above.
free -h | while read What TTL Used _; do
	if [ "$What" = 'Mem:' ]; then
		printf '%s/%s \n' "$Used" "$TTL"
		break
	fi
done


