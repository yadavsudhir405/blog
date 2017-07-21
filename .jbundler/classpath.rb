require 'jar_dependencies'
JBUNDLER_LOCAL_REPO = Jars.home
JBUNDLER_JRUBY_CLASSPATH = []
JBUNDLER_JRUBY_CLASSPATH.freeze
JBUNDLER_TEST_CLASSPATH = []
JBUNDLER_TEST_CLASSPATH.freeze
JBUNDLER_CLASSPATH = []
JBUNDLER_CLASSPATH << (JBUNDLER_LOCAL_REPO + '/commons-lang/commons-lang/2.6/commons-lang-2.6.jar')
JBUNDLER_CLASSPATH << (JBUNDLER_LOCAL_REPO + '/io/reactivex/rxjava/1.1.8/rxjava-1.1.8.jar')
JBUNDLER_CLASSPATH << (JBUNDLER_LOCAL_REPO + '/org/slf4j/slf4j-api/1.7.0/slf4j-api-1.7.0.jar')
JBUNDLER_CLASSPATH << (JBUNDLER_LOCAL_REPO + '/org/slf4j/slf4j-simple/1.7.5/slf4j-simple-1.7.5.jar')
JBUNDLER_CLASSPATH << (JBUNDLER_LOCAL_REPO + '/commons-logging/commons-logging/1.1.1/commons-logging-1.1.1.jar')
JBUNDLER_CLASSPATH << (JBUNDLER_LOCAL_REPO + '/com/netflix/hystrix/hystrix-core/1.5.5/hystrix-core-1.5.5.jar')
JBUNDLER_CLASSPATH << (JBUNDLER_LOCAL_REPO + '/commons-configuration/commons-configuration/1.8/commons-configuration-1.8.jar')
JBUNDLER_CLASSPATH << (JBUNDLER_LOCAL_REPO + '/com/netflix/archaius/archaius-core/0.4.1/archaius-core-0.4.1.jar')
JBUNDLER_CLASSPATH << (JBUNDLER_LOCAL_REPO + '/org/hdrhistogram/HdrHistogram/2.1.9/HdrHistogram-2.1.9.jar')
JBUNDLER_CLASSPATH.freeze
