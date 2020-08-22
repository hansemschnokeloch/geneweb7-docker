#!/usr/bin/env bash

# Config
BINDIR=${HOME}/distribution/gw
BASESDIR=${HOME}/distribution/gw/bases
LOGSDIR=${HOME}/logs
LANGUAGE=fr


# Start gwd
${BINDIR}/gwd -lang ${LANGUAGE} -bd ${BASESDIR} -hd ${BINDIR} -p 2317 -log ${LOGSDIR}/geneweb.log


