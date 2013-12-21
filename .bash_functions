# .bash_functions

# Create a gzipped archive.
function tgz() {
    local USAGE="Usage: tgz <name> <path>"
    if [[ "$#" -ne 2 ]]; then
	echo "$USAGE"
	return 1
    fi

    tar cvfz "$1" "$2" || return 1
}
