#!/bin/bash
#
#
create_dir() {
	mkdir demo
}

if ! create_dir; then
	echo "This code is interapted as dir alredy exists"
	exit 1
fi

echo "No errors"
