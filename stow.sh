#!/bin/bash
stow . 2>&1 | cut -d: -f2 | sed '$d' | awk 'NR>1' | xargs -I {} rm -rf ~/{}
stow .
