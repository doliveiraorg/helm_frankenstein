mkdir -p temp/helm-frankenstein
cp -pr *.yaml  templates/ temp/helm-frankenstein
helm package temp/helm-frankenstein --destination repo/
helm temp index repo/
rm -rf temp/
git add .
git commit -m "new helm version"
git push origin main
