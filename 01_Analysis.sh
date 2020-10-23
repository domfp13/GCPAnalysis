#!/bin/bash

# 01 List of all the projects order by invoice open
gcloud beta billing accounts list --sort-by=open --format="json"
# 01.1 Filtering by open=true in json format
gcloud beta billing accounts list --filter=open=true --sort-by=name --format="json"
# 01.2 Filtering by open=tru in csv format without headers
gcloud beta billing accounts list --filter=open=true --sort-by=name --format="csv[no-heading](name)" > billingGeneral.csv

# 02 Getting inform
gcloud beta billing projects list --billing-account=000000-000002-576B11
# 02.1 Run 01.2 and then run sh 02_billingDetail.sh

