#!/usr/bin/env bash
set -ex

# names and versions don't match
export pkg_name="jupyterlab-omnisci"
export pkg_version="2.0.0"

$PYTHON -m pip install . -vv
npm pack ${pkg_name}@${pkg_version}
mkdir -p ${PREFIX}/share/jupyter/lab/extensions/js
cp ${pkg_name}-${pkg_version}.tgz ${PREFIX}/share/jupyter/lab/extensions/js
