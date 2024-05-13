#!/bin/bash

# This script installs java and checks the version


apt update
apt install -y default-jre

java_version=$(java -version 2>&1 > /dev/null | grep "java version\|openjdk version" | awk '{print substr($3,2,2)}')

if [ "$java_version"==" " ]
then
  echo "No java version installed. Installation failed"
elif [ "$java_version"=="1." ]
then
  echo "An older version of java installed. "
elif [ "$java_version" -ge "11" ]
then
  echo "Current version of java installed succefully. "
fi
