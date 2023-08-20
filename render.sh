mkdir -p repo/helm-frankenstein
cp -pr *.yaml  templates/ repo/helm-frankenstein
helm package repo/helm-frankenstein --destination charts/
helm repo index charts/
rm -rf repo/
git add .
git commit -m "new helm version"
git push origin main
