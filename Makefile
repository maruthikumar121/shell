#default:git
#	javac *.java
#	mkdir dotclass
#	mv *.class dotclass 
#	cd dotclass ;\
#	gzip -c *.class >Warfile.war ;\
#	pwd
#git:
#	sh push.sh 
#clean: 
#	rm -rf dotclass
#default: directory
#	jar -cvf Warfile.war *
#directory: clone
#	javac *.java 
#	ls -lrt ;\
#	pwd ;\
#	mkdir dotclassfiles ;\
#	mv *.class dotclassfiles ;\
#	cd dotclassfiles ;\
#	ls -lrt ;\
#	pwd
#clone:
#	git clone https://github.com/maruthikumar121/shell.git
#clean:
#	rm -rf dotclassfiles ;\
#	rm Warfile.war ;\
#	rm -rf shell
result: directory
	jar -cvf . > Warfile.war
directory: clone
	mkdir MyDemo ; cd MyDemo ; mkdir WEB-INF ; cd WEB-INF ; mkdir classes ; cd .. ; cd .. ;\
	cd MyProject ; javac *.java ; mv MyServlet.java ../MyDemo ;\
	mv *.class ../MyDemo/WEB-INF/classes ; pwd ;\
	cd WEB-INF ; mv web.xml ../../MyDemo/WEB-INF ; cd .. ; cd ..
clone:
	git clone https://github.com/maruthikumar121/MyDemo.git 
clean:
	rm -rf WEB-INF ; rm -rf Myroject ; rm Warfile.war ; rm -rf MyDemo
