# Manual pco-box setup. Pulled from $HOME/pco-box/env.sh
fish_add_path $HOME/pco-box/bin
fish_add_path $HOME/Code/pco/bin
source $HOME/pco-box/env.auth.sh
set -gx MYSQL_PORT_3306_TCP_ADDR 127.0.0.1
set -gx MYSQL_READER_PORT_3306_TCP_ADDR 127.0.0.1
set -gx MYSQL_READER_PORT_3306_TCP_PORT 3307

# source $HOME/pco-box/bin/complete.fish
# source $HOME/pco-box/env.fish
# eval ($HOME/Code/pco/bin/pco init -)

# Setup Android Studio
set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
set -gx ANDROID_HOME $HOME/Library/Android/sdk
fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/platform-tools
