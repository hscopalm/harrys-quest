Write-Host "Syncing to S3"

# sync the files to the S3 bucket, excluding the .git directory, specific files, and the current script file
aws s3 sync . s3://www.harrys.quest --delete --exclude ".git/*" --exclude .gitignore --exclude README.md --exclude LICENSE --exclude "s3_sync.ps1"

Write-Host "Sync complete"

# open the webpage
Start-Process "http://www.harrys.quest"
