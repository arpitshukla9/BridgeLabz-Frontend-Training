# Create all branches on GitHub
# Make sure you're in the repository directory and have the latest main/master branch checked out

$branches = @(
    "ClassWork",
    "bootstrap",
    "css-classes",
    "css-model",
    "flex",
    "css",
    "workshop",
    "html-iframes",
    "html-block-inline-elements"
)

foreach ($branch in $branches) {
    Write-Host "Creating branch: $branch" -ForegroundColor Green
    git checkout -b $branch
    git push -u origin $branch
    git checkout -  # Go back to previous branch
}

Write-Host "All branches created successfully!" -ForegroundColor Green
