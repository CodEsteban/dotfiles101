#!/bin/bash

getscript() {
  pgrep -lf ".[ /]$1( |\$)"
}
getscript "toggle.sh"  # -> (e.g.): 96112 bash /Users/jdoe/aa.sh

# Use in a test:
if getscript "aa.sh" >/dev/null; then
  echo RUNNING
fi
