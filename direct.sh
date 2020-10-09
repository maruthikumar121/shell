result: directory
        jar -cvf . > Warfile.war
directory: clone
        mkdir MyDynamic ; cd MyDynamic ; mkdir WEB-INF ; cd WEB-INF ; mkdir classes ; cd .. ; cd .. ;\
        cd MyPoc1 ; javac *.java ; mv MyServlet.java ../MyDynamic ;\
        mv *.class ../MyDynamic/WEB-INF/classes ; pwd ;\
        cd WEB-INF ; mv web.xml ../../MyDynamic/WEB-INF ; cd .. ; cd ..
clone:
        git clone https://github.com/ganesh01081998/MyPoc1.git
clean:
        rm -rf WEB-INF ; rm -rf MyPoc1 ; rm Warfile.war ; rm -rf MyDynamic
