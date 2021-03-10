#!/usr/bin/env bash

export TASKS_PATH=/Users/robert/Desktop/Dev/Projects/tasks

start_runcrud() {
   $TASKS_PATH/runcrud.sh
}

fail() {
   echo "There were errors"
}

if start_runcrud; then
  /usr/bin/open -a Safari http://localhost:8080/crud/v1/task/getTasks
else
   fail
fi