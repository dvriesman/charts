#!/bin/sh

rm *.tgz
helm lint test1
helm package test1
curl --data-binary "@test1-0.1.0.tgz" http://localhost:9080/api/charts


