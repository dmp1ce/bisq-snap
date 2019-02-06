#!/bin/bash

# Instructions for connecting Bisq snap to home directory.
# Author: David Parrish <daveparrish@tutanota.com>

home_bisq_dir="\$HOME/.local/share/Bisq"
snap_bisq_dir="$SNAP_USER_COMMON/.local/share/Bisq"

echo "Follow these instructions for linking Bisq snap to your '$home_bisq_dir' directory."
echo ""

echo "The default Bisq data directory is located at '$snap_bisq_dir'"
echo "To allow the Bisq snap to access '$home_bisq_dir' run the command:"
echo "# snap connect bisq-desktop:personal-files"
echo ""

echo "Move your current Bisq snap data (if it exists) with the command:"
echo "# mv \"$snap_bisq_dir\" \"${snap_bisq_dir}.backup\""
echo ""

echo "Then symlink the Bisq home directory with the following command:"
echo "# ln -s \"$home_bisq_dir\" \"$snap_bisq_dir\""
