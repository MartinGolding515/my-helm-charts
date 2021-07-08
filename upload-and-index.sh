echo "get token"
token=$(cat .token)
echo $token

echo "uploading charts to github pages"
cr upload -o martingolding515 -r my-helm-charts -p .deploy -t $token

echo "updating new index.yaml"
cr index -i ./index.yaml -p .deploy --owner martingolding515 --repo my-helm-charts

echo "now commit and push to use new index.yaml"
echo "to see the charts, run this: helm repo update && helm search repo  my-helm-charts --versions
"
echo "to see versions of a chart run this: helm repo update && helm search repo  my-helm-charts/<chart-name> --versions
"



