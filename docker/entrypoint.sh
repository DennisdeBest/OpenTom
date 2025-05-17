#!/bin/bash

# Source the environment setup
source ./get_cross_env.sh

if [ "$1" == "build" ]; then
  linux32 make
else
  echo "Environment set up. Ready to build!"
  echo ""
  echo "Common commands:"
  echo "  make              - Build the basic OpenTom system"
  echo "  linux32 make      - Build on 64-bit systems (if you encounter errors)"
  echo "  make extra        - Build extra applications"
  echo "  make ttsystem     - Rebuild the ttsystem file after changes"
  echo ""
  echo "After build, copy:"
  echo "  - build/ttsystem to root folder of SD card"
  echo "  - opentom_dist/ contents to \"opentom\" folder on SD card"
  echo ""
fi

exec bash
