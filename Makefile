output:default
	javac -g sample.java
default:git
	javac *.java
	mkdir dotclass
	mv *.class dotclass 
	cd dotclass ;\
	gzip -c *.class >Warfile.war ;\
	pwd
git:
	sh push.sh 
clean: 
	rm -rf dotclass
