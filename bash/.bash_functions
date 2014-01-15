# Copyright (c) 2013 Eugene Zhuk.
# Use of this source code is governed by the MIT license that can be found
# in the LICENSE file.

# Create a gzipped archive.
function tgz()
{
    if [[ "$#" -ne 2 ]]; then
        echo "Usage: tgz <name> <path>"
        return 1
    fi

    tar cvfz "$1" "$2" || return 1
}

# Update installed software.
function update()
{
    if [[ "$#" -ne 0 ]]; then
        echo "Usage: update"
        return 1
    fi

    echo "[1/2] Updating homebrew..."
    brew update
    brew upgrade
    brew cleanup
    brew prune

    echo "[2/2] Updating gems..."
    gem update --system
    gem update
    gem cleanup
}

# Use git diff if available.
function diff()
{
    if hash git &>/dev/null; then
        git diff --no-index --color-words "$@"
    else
        diff "$@"
    fi
}

# Enable/disable ReportCrash.
function reportcrash()
{
    local usage="Usage: reportcrash (--enable|--disable)"
    if [[ "$#" -ne 1 ]]; then
        echo "$usage"
        return 1
    fi

    case "$1" in
        -e|--enable)
            launchctl load -w /System/Library/LaunchAgents/com.apple.ReportCrash.plist
            sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.ReportCrash.Root.plist
            echo "Enabled ReportCrash"
            ;;
        -d|--disable)
            launchctl unload -w /System/Library/LaunchAgents/com.apple.ReportCrash.plist
            sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.ReportCrash.Root.plist
            echo "Disabled ReportCrash"
            ;;
        *)
            echo "$usage"
            return 1
            ;;
    esac
}
