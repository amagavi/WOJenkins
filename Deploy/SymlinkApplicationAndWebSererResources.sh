#!/bin/bash

echo "	Relink Application Bundle"
echo "		ln -sfn ${APP_ROOT}/releases/${DEPLOYED_APPLICATION_NAME}/${BUILD_ID}_${BUILD_NUMBER}/${DEPLOYED_APPLICATION_NAME}.woa ${APP_ROOT}/"
ln -sfn ${APP_ROOT}/releases/${DEPLOYED_APPLICATION_NAME}/${BUILD_ID}_${BUILD_NUMBER}/${DEPLOYED_APPLICATION_NAME}.woa ${APP_ROOT}/

echo "	Relink WebServerResources Bundle"
echo "		ln -sfn ${WEB_ROOT}/releases/${DEPLOYED_APPLICATION_NAME}/${BUILD_ID}_${BUILD_NUMBER}/${DEPLOYED_APPLICATION_NAME}.woa ${WEB_ROOT}/"
ln -sfn ${WEB_ROOT}/releases/${DEPLOYED_APPLICATION_NAME}/${BUILD_ID}_${BUILD_NUMBER}/${DEPLOYED_APPLICATION_NAME}.woa ${WEB_ROOT}/
