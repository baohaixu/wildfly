rm -rf  wildfly-16.0.0.Final/
tar -xvf wildfly-16.0.0.Final.tar.gz
#ln -s $WILDFLY_HOME wildfly
#cd $WILDFLY_HOME/standalone/configuration/
cd wildfly/standalone/configuration/
standalone.sh -c standalone-full.xml
