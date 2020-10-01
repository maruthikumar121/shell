echo "Enter github path"
 read path

 git init
 git add .
 git commit -m "my files"
 git remote add origin $path
 git pull origin master
 git push origin master 
