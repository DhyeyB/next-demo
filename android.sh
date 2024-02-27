sudo apt update
sudo apt install unzip

echo "=========================================="
echo "======== Java Installation steps ======="
echo "=========================================="

# sudo apt install openjdk-8-jdk
sudo apt install openjdk-17-jre -y
# export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
# export PATH=$JAVA_HOME/bin:$PATH
# echo $JAVA_HOME
java -version

echo "=========================================="
echo "======= Android sdk Installation ======="
echo "=========================================="

# wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
wget https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip
ls
unzip commandlinetools-linux-11076708_latest.zip -d android-sdk
cd android-sdk
mkdir latest
mv  bin/ latest/
mv lib/ latest/
mv source.properties latest/
mv NOTICE.txt latest/
cd latest
pwd
export ANDROID_HOME=/home/runner/work/next-demo/next-demo/android-sdk
export PATH=$PATH:$ANDROID_HOME/cmdline-tools:$ANDROID_HOME/cmdline-tools/latest/bin

echo "=========================================="
echo "======== sdkmanager configuration ======="
echo "=========================================="

sdkmanager --list
yes | sdkmanager --licenses
sdkmanager "platform-tools" "platforms;android-33" "build-tools;30.0.3" "emulator" "system-images;android-33;default;x86_64"