#!/usr/bin/env bash

# Config
BINDIR=${HOME}/distribution/gw
BASESDIR=${HOME}/distribution/gw/bases
LOGSDIR=${HOME}/logs
LANGUAGE=fr


# Start gwsetup
cd ${BASESDIR} && ${BINDIR}/gwsetup -p 2316 -gd ${BINDIR} -lang ${LANGUAGE} -bindir ${BINDIR} -only ${BASESDIR}/gwsetup_only.txt 2>&1 | tee -a ${LOGSDIR}/gwsetup.log



