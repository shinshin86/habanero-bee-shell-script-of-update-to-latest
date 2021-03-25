#!/bin/bash
# Run this script at the root of the Habanero Bee project you want to update
PROJECT_ROOT=`pwd -P`
PROJECT_NAME="$(basename -- "$(pwd)")"
UPSTREAM_DIR="habnaero-bee-upstream"
cd ../
mkdir $UPSTREAM_DIR
cd $UPSTREAM_DIR
git clone https://github.com/shinshin86/habanero-bee.git ${PROJECT_NAME}
cd ${PROJECT_NAME}
rm -rf .git/
cp -r "${PROJECT_ROOT}/.git" .
git status # Check the changes

echo "SUCESS: update to the latest"
echo "============================"
echo "INFO: Use this command to navigate to the directory where the update was completed."
echo "cd ../${UPSTREAM_DIR}/${PROJECT_NAME}"
echo "============================"
echo "INFO: If you do not need it, delete this (${PROJECT_ROOT}) directory."
