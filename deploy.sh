echo 'begin done'
gitbook build

echo '>> build success'

cp -r ./_book/ ../light-bo.github.io

echo '>> copy files success'

git add --all
git commit -m "update"
git push

echo '>> submit source code success'

cd ../light-bo.github.io
git add --all
git commit -m "update"
git push

echo '>> deploy html success'
echo '>> done'
