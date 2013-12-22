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

function update() {
    local USAGE="Usage: update"
    if [[ "$#" -ne 0 ]]; then
	echo "$USAGE"
	return 1
    fi

    echo "[1/2] Updating homebrew..."
    brew update
    brew upgrade
    brew cleanup

    echo "[2/2] Updating gems..."
    gem update --system
    gem update
    gem cleanup
}
