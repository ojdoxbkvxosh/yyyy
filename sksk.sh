#!/bin/bash
sknk() {
    if [ $# -eq 0 ]; then
        echo "Usage: sknk [options] <command>"
        return 1
    fi
    echo "Executing sknk: $*"
}
