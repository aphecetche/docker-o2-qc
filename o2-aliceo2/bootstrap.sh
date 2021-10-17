#!/usr/bin/env sh

O2_VERSION=${1:-nightly-20211015}
QC_VERSION=${2:-v1.34.0}

echo "O2_VERSION=${O2_VERSION} QC_VERSION=${QC_VERSION}"

ls /alice

touch /alice/.last-bootstrap-date

mkdir -p /alice && \
     cd /alice && aliBuild init O2@dev --defaults o2 && \
     cd /alice && aliBuild init QualityControl@master --defaults o2

cd /alice/O2 && git checkout ${O2_VERSION}  && \
     cd /alice/QualityControl && git checkout ${QC_VERSION}
