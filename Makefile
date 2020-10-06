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
: 'default: directory
	jar -cvf Warfile.war *
directory: clone
	javac *.java 
	ls -lrt ;\
	pwd ;\
	mkdir dotclassfiles ;\
	mv *.class dotclassfiles ;\
	cd dotclassfiles ;\
	ls -lrt ;\
	pwd
clone:
	git clone https://github.com/maruthikumar121/shell.git
clean:
	rm -rf dotclassfiles ;\
	rm Warfile.war ;\
	rm -rf shell'
