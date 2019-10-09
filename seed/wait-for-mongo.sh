#!/bin/bash

until nc -z db 27017
do
  printenv;
  echo "Waiting for Mongo (db 27017) to start...";
  sleep 1;
done

eval $*
