#!/bin/bash
FILECNTR=0
TRGTFILE=./billingAccountDetail.csv
for f in `cat billingGeneral.csv`
do
    FILENAME=$f
    FILECNTR=$((FILECNTR+1))
    if [ $FILECNTR -eq 1 ] ; then
        gcloud beta billing projects list --billing-account=${FILENAME} --format='csv[heading](billingAccountName,billingEnabled,name,projectId)' > $TRGTFILE
    else
        gcloud beta billing projects list --billing-account=${FILENAME} --format='csv[no-heading](billingAccountName,billingEnabled,name,projectId)' >> $TRGTFILE
    fi
done