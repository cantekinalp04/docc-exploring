#!/bin/sh

rm -rf docsData

echo "Building DocC documentation for Docc-Example-App..."

xcodebuild -project Docc-Example-App.xcodeproj -derivedDataPath docsData -scheme Docc-Example-App -destination 'platform=iOS Simulator,name=iPhone 14' -parallelizeTargets docbuild

echo "Copying DocC archives to doc_archives..."

mkdir doc_archives

cp -R `find docsData -type d -name "*.doccarchive"` doc_archives

mkdir docs

for ARCHIVE in doc_archives/*.doccarchive; do
    cmd() {
        echo "$ARCHIVE" | awk -F'.' '{print $1}' | awk -F'/' '{print tolower($2)}'
    }
    ARCHIVE_NAME="$(cmd)"
    echo "Processing Archive: $ARCHIVE"
    $(xcrun --find docc) process-archive transform-for-static-hosting "$ARCHIVE" --hosting-base-path Docc-Example-App/$ARCHIVE_NAME --output-path docs/$ARCHIVE_NAME
done

git config user.name "cantekinalp"

git config user.email "cantekinalp@gmail.com"

# Change the GitHub URL to your repository
git remote set-url origin https://cantekinalp04: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@github.com/cantekinalp04/docc-exploring/

git fetch

git stash push -u  -- docs doc_archives

git checkout feature/docc-hosting

rm -rf docs doc_archives

git stash apply

git add docs doc_archives

git commit -m "Updated DocC documentation"

git push --set-upstream origin feature/docc-hosting