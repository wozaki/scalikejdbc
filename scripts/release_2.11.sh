#!/bin/sh

cd `dirname $0`/..
rm -rf */target

sbt 'set scalaVersion := "2.11.0"' \
  clean \
  "project core" 'set scalaVersion := "2.11.0"' publishSigned \
  "project config" 'set scalaVersion := "2.11.0"' publishSigned \
  "project interpolation-core" 'set scalaVersion := "2.11.0"' publishSigned \
  "project interpolation-macro" 'set scalaVersion := "2.11.0"' publishSigned \
  "project interpolation" 'set scalaVersion := "2.11.0"' publishSigned \
  "project library" 'set scalaVersion := "2.11.0"' publishSigned \
  "project test" 'set scalaVersion := "2.11.0"' publishSigned \
  "project mapper-generator-core" 'set scalaVersion := "2.11.0"' publishSigned 

