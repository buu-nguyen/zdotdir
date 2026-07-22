## Gcloud alias
alias gauth="gcloud auth login --update-adc"
alias gke-platform-non-prod="gcloud container clusters get-credentials platform-as-se1-non-prod --region asia-southeast1 --project platform-as-se1-non-prod"

# Check bigquery-access-control
alias check-bac="kubectl get bigquerydatasets,gcpiampartialpolicies --context=gke_platform-as-se1-prod_asia-southeast1_config-controller-prod -n cake-bigquery-admin -o json | jq '.items[] | select(.status.conditions[] | select(.type==\"Ready\" and .status!=\"True\")) | {name: .metadata.name, status: (.status.conditions[] | select(.type==\"Ready\") | .status), reason: (.status.conditions[] | select(.type==\"Ready\") | .reason), message: (.status.conditions[] | select(.type==\"Ready\") | .message)}'"

# Telepresence
alias tlp="telepresence connect --context gke_cake-as-se1-dev_asia-southeast1_cake-as-se1-dev"
