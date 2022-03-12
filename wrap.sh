#!/bin/bash
echo -n "Running Boozang socket center version: "
cat VERSION
node index --docker $@
if [ $? -eq 0 ]
then
  echo "The test ran successfully. Docker return code set to 0."
  exit 0
else
  echo "The test failed. Docker return code set to 1." >&2
  exit 1
fi
