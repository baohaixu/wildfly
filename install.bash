# Voraussetzungen:
# WILDFLY_HOME ist gesetzt
# $WILDFLY_HOME/bin ist im $PATH
# ./wildfly zeigt auf $WILDFLY_HOME
#
PROPERTIES=${1:-WILDFLY_INSTALL_TE20C_PROPS.cli}

add-user.sh -a -u 'jmsuser' -p 'jmsuser' -g 'guest'
add-user.sh -u 'rhefos' -p 'rhefos' -g 'admin'
jboss-cli.sh --file=$PROPERTIES
jboss-cli.sh --file=install_oracle_driver.cli
jboss-cli.sh --file=install.cli 
jboss-cli.sh --file=deploy.cli 
jboss-cli.sh --commands=connect,reload
