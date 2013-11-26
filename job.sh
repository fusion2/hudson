cd $WORKSPACE
mkdir -p ../android
cd ../android
export WORKSPACE=$PWD
echo $ANDROID_JAVA_HOME

if [ ! -d hudson ]
then
  git clone git://github.com/CarbonDev/hudson.git -b jb2
fi

cd hudson
git pull

exec ./build.sh
