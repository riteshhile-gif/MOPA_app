#!/usr/bin/env sh

#
# Copyright © 2015-2021 the original authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

if [ -n "$MSYS" ]; then
    echo "MSYS environment detected; unsupported." >&2
    exit 1
fi

# Attempt to set APP_HOME
# Resolve links: $0 may be a link
PRG="$0"
while [ -h "$PRG" ] ; do
    ls=`ls -ld "$PRG"`
    link=`expr "$ls" : '.*-> \(.*\)$'`
    if expr "$link" : '/.*' > /dev/null; then
        PRG="$link"
    else
        PRG=`dirname "$PRG"`/"$link"
    fi
done

SAVED="`pwd`"
cd "`dirname \"$PRG\"`" >/dev/null
APP_HOME="`pwd -P`"
cd "$SAVED"

APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS=""

app_package() {
    # The application package name
    echo ""
}

# Use the maximum available, or set MAX_FD != -1 to use that value
if [ -n "$MAX_FD" ]; then
    # Do not set this value as a default, as it overrides the shell limit
    if [ "$MAX_FD" = "maximum" ]; then
        MAX_FD="`ulimit -H -n`"
    fi
    ulimit -n "$MAX_FD" 2>/dev/null || echo "Could not set maximum file descriptor limit: $MAX_FD" >&2
fi

# For OS/400
if [ "`uname`" = "OS/400" ]; then
    # -format=class -XR4 instead of -XRv
    JOB_NAME="JAVA_JOB"
fi

# Determine the Java command to use to start the JVM.
if [ -n "$JAVA_HOME" ] ; then
    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
        # IBM's JDK on AIX uses strange locations for the java executable
        JAVACMD="$JAVA_HOME/jre/sh/java"
    else
        JAVACMD="$JAVA_HOME/bin/java"
    fi
    if [ ! -x "$JAVACMD" ] ; then
        echo "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME

Please set the JAVA_HOME variable in your environment to match the
location of your Java installation." >&2
        exit 1
    fi
else
    JAVACMD="java"
    which java >/dev/null 2>&1 || {
        echo "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.

Please set the JAVA_HOME variable in your environment to match the
location of your Java installation." >&2
        exit 1
    }
fi

# Increase the maximum file descriptors if we can.
if [ "$cygwin" = "false" -a "$darwin" = "false" -a "$nonstop" = "false" ] ; then
    MAX_FD_LIMIT=`ulimit -n -H 2>/dev/null`
    if [ $? -eq 0 ] ; then
        [ "$MAX_FD" = "maximum" -o -gt "$MAX_FD_LIMIT" ] && MAX_FD="$MAX_FD_LIMIT"
        ulimit -n "$MAX_FD" 2>/dev/null || echo "Could not set maximum file descriptor limit: $MAX_FD" >&2
    fi
fi

# Setup the JVM arguments
DEFAULT_JVM_OPTS="$DEFAULT_JVM_OPTS -Dorg.gradle.appname=$APP_BASE_NAME"

# Collect all arguments for the java command, stacking them in the correct order
set -- "$@"

# Determine Windows vs non-Windows
case "`uname`" in
    CYGWIN* | MINGW* | *?)
        cygwin=true
        ;;
    *)
        cygwin=false
        ;;
esac

# For Cygwin, switch paths to Windows format before running java
if $cygwin ; then
    APP_HOME=`cygpath --path --mixed "$APP_HOME"`
    CLASSPATH=`cygpath --path --mixed "$CLASSPATH"`
    JAVACMD=`cygpath --unix "$JAVACMD"`

    # We build the pattern for arguments to be converted via cygpath
    ROOTDIRS_CYGWIN=`cygpath -w /`
    ROOTDIRS_CYGWIN=`echo "$ROOTDIRS_CYGWIN" | sed 's/\(;\\)\+/\;/g'`
    # Let's process the arguments to the JVM
    # If the user sets JAVA_OPTS, it is up to them to make sure Cygwin paths are handled
fi

# Split JVM options into separate variables
if [ -n "$JAVA_OPTS" ]; then
    DEFAULT_JVM_OPTS="$JAVA_OPTS $DEFAULT_JVM_OPTS"
fi

exec "$JAVACMD" $DEFAULT_JVM_OPTS -jar "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" "$@"#!/usr/bin/env sh

#
# Copyright © 2015-2021 the original authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

if [ -n "$MSYS" ]; then
    echo "MSYS environment detected; unsupported." >&2
    exit 1
fi

# Attempt to set APP_HOME
# Resolve links: $0 may be a link
PRG="$0"
while [ -h "$PRG" ] ; do
    ls=`ls -ld "$PRG"`
    link=`expr "$ls" : '.*-> \(.*\)$'`
    if expr "$link" : '/.*' > /dev/null; then
        PRG="$link"
    else
        PRG=`dirname "$PRG"`/"$link"
    fi
done

SAVED="`pwd`"
cd "`dirname \"$PRG\"`" >/dev/null
APP_HOME="`pwd -P`"
cd "$SAVED"

APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS=""

app_package() {
    # The application package name
    echo ""
}

# Use the maximum available, or set MAX_FD != -1 to use that value
if [ -n "$MAX_FD" ]; then
    # Do not set this value as a default, as it overrides the shell limit
    if [ "$MAX_FD" = "maximum" ]; then
        MAX_FD="`ulimit -H -n`"
    fi
    ulimit -n "$MAX_FD" 2>/dev/null || echo "Could not set maximum file descriptor limit: $MAX_FD" >&2
fi

# For OS/400
if [ "`uname`" = "OS/400" ]; then
    # -format=class -XR4 instead of -XRv
    JOB_NAME="JAVA_JOB"
fi

# Determine the Java command to use to start the JVM.
if [ -n "$JAVA_HOME" ] ; then
    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
        # IBM's JDK on AIX uses strange locations for the java executable
        JAVACMD="$JAVA_HOME/jre/sh/java"
    else
        JAVACMD="$JAVA_HOME/bin/java"
    fi
    if [ ! -x "$JAVACMD" ] ; then
        echo "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME

Please set the JAVA_HOME variable in your environment to match the
location of your Java installation." >&2
        exit 1
    fi
else
    JAVACMD="java"
    which java >/dev/null 2>&1 || {
        echo "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.

Please set the JAVA_HOME variable in your environment to match the
location of your Java installation." >&2
        exit 1
    }
fi

# Increase the maximum file descriptors if we can.
if [ "$cygwin" = "false" -a "$darwin" = "false" -a "$nonstop" = "false" ] ; then
    MAX_FD_LIMIT=`ulimit -n -H 2>/dev/null`
    if [ $? -eq 0 ] ; then
        [ "$MAX_FD" = "maximum" -o -gt "$MAX_FD_LIMIT" ] && MAX_FD="$MAX_FD_LIMIT"
        ulimit -n "$MAX_FD" 2>/dev/null || echo "Could not set maximum file descriptor limit: $MAX_FD" >&2
    fi
fi

# Setup the JVM arguments
DEFAULT_JVM_OPTS="$DEFAULT_JVM_OPTS -Dorg.gradle.appname=$APP_BASE_NAME"

# Collect all arguments for the java command, stacking them in the correct order
set -- "$@"

# Determine Windows vs non-Windows
case "`uname`" in
    CYGWIN* | MINGW* | *?)
        cygwin=true
        ;;
    *)
        cygwin=false
        ;;
esac

# For Cygwin, switch paths to Windows format before running java
if $cygwin ; then
    APP_HOME=`cygpath --path --mixed "$APP_HOME"`
    CLASSPATH=`cygpath --path --mixed "$CLASSPATH"`
    JAVACMD=`cygpath --unix "$JAVACMD"`

    # We build the pattern for arguments to be converted via cygpath
    ROOTDIRS_CYGWIN=`cygpath -w /`
    ROOTDIRS_CYGWIN=`echo "$ROOTDIRS_CYGWIN" | sed 's/\(;\\)\+/\;/g'`
    # Let's process the arguments to the JVM
    # If the user sets JAVA_OPTS, it is up to them to make sure Cygwin paths are handled
fi

# Split JVM options into separate variables
if [ -n "$JAVA_OPTS" ]; then
    DEFAULT_JVM_OPTS="$JAVA_OPTS $DEFAULT_JVM_OPTS"
fi

exec "$JAVACMD" $DEFAULT_JVM_OPTS -jar "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" "$@"
