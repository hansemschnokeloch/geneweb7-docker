#!/usr/bin/env bash

# Config
BINDIR=${HOME}/GeneWeb7/gw7/gw
BASESDIR=${HOME}/GeneWeb7/gw7/gw/bases
LOGSDIR=${HOME}/GeneWeb7/gw7_logs
LANGUAGE=fr


# Start gwd
${BINDIR}/gwd -lang ${LANGUAGE} -bd ${BASESDIR} -hd ${BINDIR} -p 2317 -log ${LOGSDIR}/geneweb.log


