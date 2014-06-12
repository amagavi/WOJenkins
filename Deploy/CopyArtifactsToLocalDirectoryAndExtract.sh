#!/bin/bash

APP_ROOT=$1
WEB_ROOT=$2

echo "	Create release directories"
echo "		mkdir -p ${APP_ROOT}/releases/${DEPLOYED_APPLICATION_NAME}/${BUILD_ID}_${BUILD_NUMBER}"
mkdir -p ${APP_ROOT}/releases/${DEPLOYED_APPLICATION_NAME}/${BUILD_ID}_${BUILD_NUMBER}
echo "		mkdir -p ${WEB_ROOT}/releases/${DEPLOYED_APPLICATION_NAME}/${BUILD_ID}_${BUILD_NUMBER}/"
mkdir -p ${WEB_ROOT}/releases/${DEPLOYED_APPLICATION_NAME}/${BUILD_ID}_${BUILD_NUMBER}/

echo "	Copy artifacts to release directories"
echo "		cp /tmp/${DEPLOYED_APPLICATION_NAME}-Application.tar.gz ${APP_ROOT}/releases/${DEPLOYED_APPLICATION_NAME}/${BUILD_ID}_${BUILD_NUMBER}/"
cp /tmp/${DEPLOYED_APPLICATION_NAME}-Application.tar.gz ${APP_ROOT}/releases/${DEPLOYED_APPLICATION_NAME}/${BUILD_ID}_${BUILD_NUMBER}/
echo "		cp /tmp/${DEPLOYED_APPLICATION_NAME}-WebServerResources.tar.gz ${WEB_ROOT}/releases/${DEPLOYED_APPLICATION_NAME}/${BUILD_ID}_${BUILD_NUMBER}/"
cp /tmp/${DEPLOYED_APPLICATION_NAME}-WebServerResources.tar.gz ${WEB_ROOT}/releases/${DEPLOYED_APPLICATION_NAME}/${BUILD_ID}_${BUILD_NUMBER}/

echo "	Extract Archives"
echo "		tar -xzf ${APP_ROOT}/releases/${DEPLOYED_APPLICATION_NAME}/${BUILD_ID}_${BUILD_NUMBER}/${DEPLOYED_APPLICATION_NAME}-Application.tar.gz -C ${APP_ROOT}/releases/${DEPLOYED_APPLICATION_NAME}/${BUILD_ID}_${BUILD_NUMBER}/"
tar -xzf ${APP_ROOT}/releases/${DEPLOYED_APPLICATION_NAME}/${BUILD_ID}_${BUILD_NUMBER}/${DEPLOYED_APPLICATION_NAME}-Application.tar.gz -C ${APP_ROOT}/releases/${DEPLOYED_APPLICATION_NAME}/${BUILD_ID}_${BUILD_NUMBER}/
echo "		tar -xzf ${WEB_ROOT}/releases/${DEPLOYED_APPLICATION_NAME}/${BUILD_ID}_${BUILD_NUMBER}/${DEPLOYED_APPLICATION_NAME}-WebServerResources.tar.gz  -C ${WEB_ROOT}/releases/${DEPLOYED_APPLICATION_NAME}/${BUILD_ID}_${BUILD_NUMBER}/"
tar -xzf ${WEB_ROOT}/releases/${DEPLOYED_APPLICATION_NAME}/${BUILD_ID}_${BUILD_NUMBER}/${DEPLOYED_APPLICATION_NAME}-WebServerResources.tar.gz -C ${WEB_ROOT}/releases/${DEPLOYED_APPLICATION_NAME}/${BUILD_ID}_${BUILD_NUMBER}/

