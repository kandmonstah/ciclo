#!/bin/bash
clear

output_file1="Números_pares.txt"
output_file2="Números_imparers.txt"
arquivo="numeros.txt"

if [ -e "$arquivo" ]; then
  while IFS= read -r num1; do
    if [ $((num1 % 2)) -eq 0 ]; then
      echo "$num1 é par" >> "$output_file"
    else
      echo "$num1 é ímpar" >> "$output_file1"
    fi
  done < "$arquivo"
  echo "Números pares e ímpares em $output_file"
else
  echo "O arquivo $arquivo não existe."
fi
