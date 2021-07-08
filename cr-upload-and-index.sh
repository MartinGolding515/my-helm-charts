echo "uploading charts to github pages"
cr upload -o martingolding515 -r my-helm-charts -p .deploy -t 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

echo "updating new index.yaml"
cr index -i ./index.yaml -p .deploy --owner martingolding515 --repo my-helm-charts

echo "now commit and push to use new index.yaml"

