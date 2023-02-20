#!/usr/bin/env bash

cd $(dirname "$0")

# Test MELPA version
echo "Testing packaged version from MELPA..."
eask clean all
eask install elsa
eask exec elsa dummy-package.el

# Test development version
echo "Testing development version via eask link..."
eask clean all
eask link add elsa "../../../"
eask exec elsa dummy-package.el
