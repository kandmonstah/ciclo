#!/bin/bash

funcao_prime_numbers() {
    local num=$1
    if [ $num -le 1 ]; then
        return 1
    fi
    for ((i = 2; i * i <= num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            return 1
        fi
    done
    return 0

    local num=$1
    if [ $num -le 1 ]; then
        return 1
    fi
    for ((i = 2; i * i <= num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            return 1
        fi
    done
    return 0
}
if [ -e "numeros.txt" ]; then
    echo "Números primos em numeros.txt:"
    
    while IFS= read -r linha; do
        numero=$(echo "$linha" | tr -d ' ')
        if [[ $numero =~ ^[0-9]+$ ]]; then
            if funcao_prime_numbers "$numero"; then
                echo $numero
            fi
        fi
   
if [ -e "numeros.txt" ]; then
    echo "Números ímpares em numeros.txt:"

     while IFS= read -r linha; do
        numero=$(echo "$linha" | tr -d ' ')
        if [[ $numero =~ ^[0-9]+$ ]]; then
            if [ $((numero % 2)) -ne 0 ]; then
                echo $numero
            fi
    done < "numeros.txt"
fi