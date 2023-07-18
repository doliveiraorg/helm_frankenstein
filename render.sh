mkdir -p repo/helm-frankenstein
cp -pr *.yaml  templates/ repo/helm-frankenstein
helm package repo/helm-frankenstein --destination repo/
helm repo index repo/
rm -rf repo/helm-frankenstein/
git add .
git commit -m "new helm version"
git push origin main
