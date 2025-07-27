VERSION=${VERSION:-"v8.50.10-helios-39"}

echo "Deploy ibc-go/v8"
git add .
git commit -m "Publish $VERSION"
git push
git tag $VERSION
git push origin $VERSION
sleep 5
GOPROXY=proxy.golang.org go list -m github.com/Helios-Chain-Labs/ibc-go/v8@$VERSION

echo "Publish done"