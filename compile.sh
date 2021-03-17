#!/bin/bash
contentArgument=$1;
if [[ -z "$contentArgument" ]]; then
  echo "Missing name file !";
  echo " ";
  echo "$0 -> (?)";
  echo " ";
else
  echo "Starting...";
  echo " ";
  nameFileConverted="$(echo "$contentArgument" | sed 's/.f90//')";
  gfortran $contentArgument -o $nameFileConverted
  echo "Compilation...";
  echo " ";
  chmod +x $nameFileConverted
  echo "Creation file at name $nameFileConverted...";
  echo " ";
  echo "End of script.";
  echo "Starting of '$nameFileConverted'";
  echo " ";
  ./$nameFileConverted
  echo " ";
fi
