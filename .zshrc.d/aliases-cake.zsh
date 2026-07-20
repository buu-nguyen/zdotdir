## Gcloud alias
alias gauth="gcloud auth login --update-adc"
alias gke-prod="gcloud container clusters get-credentials cake-prod-1 --region asia-southeast1 --project bef-cake-prod"
alias gke-platform-non-prod="gcloud container clusters get-credentials platform-as-se1-non-prod --region asia-southeast1 --project platform-as-se1-non-prod"
alias gke-platform-prod="gcloud container clusters get-credentials platform-as-se1-prod --region asia-southeast1 --project platform-as-se1-prod"
alias gke-config-controller="gcloud container clusters get-credentials config-controller-prod --region asia-southeast1 --project platform-as-se1-prod"

# Check bigquery-access-control
alias check-bac="kubectl get bigquerydatasets,gcpiampartialpolicies --context=gke_platform-as-se1-prod_asia-southeast1_config-controller-prod -n cake-bigquery-admin -o json | jq '.items[] | select(.status.conditions[] | select(.type==\"Ready\" and .status!=\"True\")) | {name: .metadata.name, status: (.status.conditions[] | select(.type==\"Ready\") | .status), reason: (.status.conditions[] | select(.type==\"Ready\") | .reason), message: (.status.conditions[] | select(.type==\"Ready\") | .message)}'"
alias homelab="kubectl config use-context admin@homelab"
