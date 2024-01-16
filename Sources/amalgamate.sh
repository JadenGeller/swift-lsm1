#!/bin/bash

set -e
grep -v 'lsm_vtab.c' tool/mklsm1c.tcl | tclsh
sed -i '' 's/fdatasync/fsync/g' lsm1.c # https://github.com/sqlite/sqlite/blob/master/src/os_unix.c#L3595
mv lsm1.c "lsm1-$(git rev-parse --short HEAD).c"