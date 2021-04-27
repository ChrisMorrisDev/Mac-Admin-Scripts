#!/bin/bash
## Remove all users from macOS Workstation except "admin" and "shared".
shopt -s extglob
rm -rf /Users/!(admin|Shared)
