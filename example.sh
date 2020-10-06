echo "Enter your repository name to clone the file"
read newRep
echo "your $newRep is available"
git clone https://github.com/maruthikumar121/$newRep.git
 ls $newRep
 cd $newRep
echo "Enter Your Directory Name to store .class files"
read Dir
if [ -d $Dir ]
then
 javac *.java
 mv *.class $Dir
 cd $Dir
 ls
 gzip -c * > pro.war
else
 mkdir $Dir
 javac *.java
 mv *.class $Dir
 cd $Dir
 ls
 gzip -c * > pro.war
fi
