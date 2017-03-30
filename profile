# /etc/profile: system-wide .profile file for the Bourne shell (sh(1))
# and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).

if [ "$PS1" ]; then
  if [ "$BASH" ] && [ "$BASH" != "/bin/sh" ]; then
    # The file bash.bashrc already sets the default PS1.
    # PS1='\h:\w\$ '
    if [ -f /etc/bash.bashrc ]; then
      . /etc/bash.bashrc
    fi
  else
    if [ "`id -u`" -eq 0 ]; then
      PS1='# '
    else
      PS1='$ '
    fi
  fi
fi

if [ -d /etc/profile.d ]; then
  for i in /etc/profile.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi


#fot apache-tomcat
export CATALINA_HOME=/usr/local/apache-tomcat
export CATALINA_BASE=/usr/local/apache-tomcat

#for maven
export MAVEN_HOME=/home/jay/maven/apache-maven-3.3.9/bin
#for java
export JAVA_HOME=/usr/local/java/jdk1.8.0_112
export JRE_HOME=/usr/local/java/jdk1.8.0_112/jre
export CLASSPATH=$CATALINA_HOME:$CATALINA_BASE:$MAVEN_HOME:$JAVA_HOME/lib:$JRE_HOME/lib:$CLASSPATH
export PATH=$CATALINA_HOME:$CATALINA_BASE:$MAVEN_HOME:$JAVA_HOME/bin:$JRE_HOME/bin:$JAVA_HOME:$PATH