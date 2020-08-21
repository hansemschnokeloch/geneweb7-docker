#!/usr/bin/env bash

# Config
BINDIR=${HOME}/GeneWeb7/gw7/gw
BASESDIR=${HOME}/GeneWeb7/gw7/gw/bases
LOGSDIR=${HOME}/GeneWeb7/gw7_logs
LANGUAGE=fr


# Start gwsetup
cd ${BASESDIR} && ${BINDIR}/gwsetup -p 2316 -gd ${BINDIR} -lang ${LANGUAGE} -bindir ${BINDIR} -only ${BASESDIR}/gwsetup_only.txt 2>&1 | tee -a ${LOGSDIR}/gwsetup.log



