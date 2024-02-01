if [ git diff --quiet --exit-code HEAD^ HEAD -- pages/ ]; then
    echo "No changes in 'pages/' directory. Skipping conditional job."
else
    echo "Changes detected in 'pages/' directory. Running conditional job."
fi