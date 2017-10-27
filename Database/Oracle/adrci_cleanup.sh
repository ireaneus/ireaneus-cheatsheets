#!/bin/bash

## Set Up Log File
logfile=${HOME}/logs/`basename ${0}`.log

## Adjust Days To Keep As Needed
days_to_keep=7

## Calculate Minutes To Keep
((minutes_to_keep=${days_to_keep}*24*60))

## Note To Log
echo " " | tee ${logfile}
echo "ADRCI Purging Records Older Than ${days_to_keep} Days" | tee -a ${logfile}

## Get SSN Diag Base
ssn_adrci_base=`adrci exec="show base" | awk -F "\"" '{print $2}'`

## Note To Log
echo " " | tee -a ${logfile}
echo "********************************************************************************" | tee -a ${logfile}
echo "ADRCI Purging SSN Diagnostic Base: ${ssn_adrci_base}" | tee -a ${logfile}
echo "********************************************************************************" | tee -a ${logfile}

## For All ADRCI Homes In The SSN Diag Base"
for home in `adrci exec="set base ${ssn_adrci_base}; show homes" | egrep -v :`
do
  echo "ADRCI Purging Diagnostic Home: ${home}" | tee -a ${logfile}
  adrci exec="set base ${ssn_adrci_base}; set homepath ${home}; purge -age ${minutes_to_keep}" | tee -a ${logfile}
  adrci exec="set base ${ssn_adrci_base}; set homepath ${home}; purge -age ${minutes_to_keep} -type INCIDENT" | tee -a ${logfile}
done

## Get Oracle Diag Base
oracle_adrci_base=${ORACLE_HOME}/log

## For All ADRCI Homes In Oracle Default Diag Base If It Exists"
if [ -d ${oracle_adrci_base}/diag ]
then
  echo " " | tee -a ${logfile}
  echo "********************************************************************************" | tee -a ${logfile}
  echo "ADRCI Purging Diagnostic Base: ${ORACLE_HOME}/log" | tee -a ${logfile}
  echo "********************************************************************************" | tee -a ${logfile}
  for home in `adrci exec="set base ${ORACLE_HOME}/log; show homes" | egrep -v :`
  do
    echo "ADRCI Purging Diagnostic Home: ${home}" | tee -a ${logfile}
    adrci exec="set base ${ORACLE_HOME}/log; set homepath ${home}; purge -age ${minutes_to_keep}" | tee -a ${logfile}
    adrci exec="set base ${ORACLE_HOME}/log; set homepath ${home}; purge -age ${minutes_to_keep} -type INCIDENT" | tee -a ${logfile}
  done
fi

echo " " | tee -a ${logfile}
