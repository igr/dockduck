#!/bin/bash

set -e

echo "-=[ DockDuck ]=-"

function dockduck() {
	echo "-=[ DockDuck ]=-"
	echo "https://github.com/igr/dockduck"
}

export -f dockduck

exec "$@"
