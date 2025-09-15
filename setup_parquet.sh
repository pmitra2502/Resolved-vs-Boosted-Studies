#!/bin/bash

# --- ATLAS base environment (only if CVMFS works) ---
if [ -f /cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/user/atlasLocalSetup.sh ]; then
    source /cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/user/atlasLocalSetup.sh
    # uncomment if you actually need lsetup
    # lsetup "python 3.9"
fi

# --- Python path ---
alias python=python3

# --- Install/update required Python packages ---
pip3 install --user --upgrade \
    uproot awkward pandas pyarrow matplotlib seaborn scikit-learn

# --- Paths ---
export HH4B_DIR=$PWD
export PYTHONPATH=$HH4B_DIR:$PYTHONPATH

echo "=========================================="
echo " HH4b Analysis Environment Loaded"
echo " - Working dir: $HH4B_DIR"
python3 --version
echo "Packages installed: uproot, awkward, pandas, pyarrow"
echo "=========================================="
