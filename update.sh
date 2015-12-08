#!/bin/bash
set -e 

echo "Updating submodules from repositories.."
git submodule init
git submodule update --remote
echo ""

echo "Checking out latest release of fullcalendar.."
cd "`dirname $0`/fullcalendar"
if [[ -z "$1" ]];then
  VER=`git tag | grep -v '-' | tail -n1 | sed 's/^v//'`
else
  VER="$1"
fi
git checkout v$VER
sed -i -e 's/version: "\([^"]*\)"/version: "'$VER'"/' ../package.js 
echo ""

echo "Checking out latest release of fullcalendar-scheduler.."
cd "../`dirname $0`/fullcalendar-scheduler"
if [[ -z "$1" ]];then
  VER=`git tag | grep -v '-' | tail -n1 | sed 's/^v//'`
else
  VER="$1"
fi
git checkout v$VER
echo ""
