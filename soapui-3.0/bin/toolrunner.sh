#!/bin/sh
### ====================================================================== ###
##                                                                          ##
##  SoapUI ToolRunner Bootstrap Script                                      ##
##                                                                          ##
### ====================================================================== ###

### $Id$ ###

DIRNAME=`dirname $0`

# OS specific support (must be 'true' or 'false').
cygwin=false;
case "`uname`" in
    CYGWIN*)
        cygwin=true
        ;;
esac

# Setup SOAPUI_HOME
if [ "x$SOAPUI_HOME" = "x" ]
then
    # get the full path (without any relative bits)
    SOAPUI_HOME=`cd $DIRNAME/..; pwd`
fi
export SOAPUI_HOME

export SOAPUI_CLASSPATH=$SOAPUI_HOME/bin/soapui-3.0.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/activation-1.1.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/javamail-1.4.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/wsdl4j-1.6.2-fixed.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/junit-4.4.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/rsyntaxtextarea-1.3.3.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/log4j-1.2.14.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/looks-2.2.0.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/binding-2.0.1.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/forms-1.0.7.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/commons-logging-1.1.1.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/commons-collections-3.2.1.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/commons-lang-2.4.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/commons-io-1.3.2.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/not-yet-commons-ssl-0.3.10.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/commons-cli-1.0.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/commons-beanutils-1.7.0.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/commons-httpclient-3.1.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/json-lib-2.2.2-jdk15.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/ezmorph-1.0.5.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/xom-1.1.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/swingx-soapui.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/l2fprod-common-fontchooser-7.3.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/l2fprod-common-directorychooser-7.3.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/commons-codec-1.3.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/groovy-all-1.6.3.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/js-1.7R1.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/jetty-6.1.15.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/jetty-util-6.1.15.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/servlet-api-2.5-20081211.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/xbean-fixed-2.4.0.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/xbean_xpath-2.4.0.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/xmlpublic-2.4.0.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/jsr173_1.0_api-xmlbeans-2.4.0.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/soapui-xmlbeans-3.0.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/policy-xmlbeans-1.5.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/soap-xmlbeans-1.2.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/wadl-xmlbeans-1.1.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/j2ee-xmlbeans-1.4.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/ext-xmlbeans-1.0.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/saxon-9.1.0.6j.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/saxon-dom-9.1.0.6j.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/xmlunit-1.2.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/xmlsec-1.4.2.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/opensaml-1.1.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/xalan-2.7.1.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/xercesImpl-2.9.1.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/xml-apis-2.9.1.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/serializer-2.7.1.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/wss4j-1.5.7.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/bcprov-jdk15-141.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/jtidy-8.0-SNAPSHOT.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/jxbrowser-1.3rc.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/jniwrap-3.7.3.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/tuxpack-0.2.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/winpack-3.7.1.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/xulrunner-win32.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/xulrunner-linux-i686.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/xulrunner-mac-un-i386-ppc.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/MozillaGlue-jxbrowser-1.3rc.jar
                    export SOAPUI_CLASSPATH=$SOAPUI_CLASSPATH:$SOAPUI_HOME/lib/MozillaInterfaces-jxbrowser-1.3rc.jar

export SOAPUI_HOME

JAVA_OPTS="-Xms128m -Xmx384m -Dsoapui.properties=soapui.properties -Dsoapui.home=$SOAPUI_HOME"

if [ $SOAPUI_HOME != "" ] 
then
    JAVA_OPTS="$JAVA_OPTS -Dsoapui.ext.libraries=$SOAPUI_HOME/bin/ext"
    JAVA_OPTS="$JAVA_OPTS -Dsoapui.ext.listeners=$SOAPUI_HOME/bin/listeners"
    JAVA_OPTS="$JAVA_OPTS -Dsoapui.ext.actions=$SOAPUI_HOME/bin/actions"
fi

export JAVA_OPTS

# For Cygwin, switch paths to Windows format before running java
if [ $cygwin = "true" ] 
then
    SOAPUI_HOME=`cygpath --path --dos "$SOAPUI_HOME"`
    SOAPUI_CLASSPATH=`cygpath --path --dos "$SOAPUI_CLASSPATH"`
fi

echo ================================
echo =
echo = SOAPUI_HOME = $SOAPUI_HOME
echo =
echo ================================

java $JAVA_OPTS -cp $SOAPUI_CLASSPATH com.eviware.soapui.tools.SoapUIToolRunner "$@"
