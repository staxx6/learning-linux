#!/bin/bash

(($#>0))||exit 2 # arithmetic

echo -n "$1"    #no newline

case $1 in
    \*) #escape * to get just the char '*'
        echo " - ein Stern.";;
    ?) # one char
        echo " - eine Länge 1, aber kein Stern.";;
    "* *")
        echo " - enthält Leerzeichen - hoffentlich "
        echo "kein Dateiname.";;
    *.jpg|*.bmp|*.png)
        echo " - könnte eine Bilddatei sein.";;
    *)
        echo " - ich habe keine Idee."
esac

# match more patterns ;;?