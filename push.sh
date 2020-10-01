echo "Enter github path"
 read path
echo "Enter meaasge"
 read mess
 git init
 git add .
 git commit -m $mess
 git remote add origin $path
 git pull origin master
 git push origin master 
