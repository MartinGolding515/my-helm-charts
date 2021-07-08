Repo for uploading charts to public repo on github pages

Not for charts with sensitive data
https://tech.paulcz.net/blog/creating-a-helm-chart-monorepo-part-1/

Instructions

1. Create charts and update chart versions
2. Package charts into .deploy folder
   helm package charts/* --destination .deploy
3. remove old charts from deploy folderh
I didnt create a env var for cr so had to pass token:

cr upload -o martingolding515 -r my-helm-charts -p .deploy -t <token?>

cr index -i ./index.yaml -p .deploy --owner martingolding515 --repo my-helm-charts

Git commit and push

*** have to remove old versions from .deploy folder before uploading a new one ***
*** keep new version in .deploy when running cr index

Check it's there helm v3:

helm repo update && helm search repo  my-helm-charts --versions
