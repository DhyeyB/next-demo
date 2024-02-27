echo "=========================================="
echo "======== Java Installation steps ======="
echo "=========================================="

sudo apt install openjdk-8-jdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH
echo $JAVA_HOME
java -version

echo "=========================================="
echo "======= Android sdk Installation ======="
echo "=========================================="

# wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
wget https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip
ls
unzip commandlinetools-linux-11076708_latest.zip -d android-sdk
ls android-sdk
ls android-sdk/cmdline-tools
ls android-sdk/cmdline-tools/bin
pwd
export ANDROID_HOME=/home/runner/work/next-demo/next-demo/android-sdk
export PATH=$PATH:$ANDROID_HOME/cmdline-tools:$ANDROID_HOME/cmdline-tools/bin

echo "=========================================="
echo "======== sdkmanager configuration ======="
echo "=========================================="

sdkmanager --list
yes | sdkmanager --licenses
sdkmanager "platform-tools" "platforms;android-33" "build-tools;30.0.3" "emulator" "system-images;android-33;default;x86_64"
ls android-sdk
ls android-sdk/cmdline-tools