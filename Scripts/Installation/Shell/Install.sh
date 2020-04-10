#!/bin/bash

FMSG="- COVID-19 AI Quantum Tensorflow installation terminated"

read -p "? This script will install the COVID-19 AI Quantum Tensorflow on your device. Are you ready (y/n)? " cmsg

if [ "$cmsg" = "Y" -o "$cmsg" = "y" ]; then

    echo "- Installing COVID-19 AI Quantum Tensorflow"

    sh Scripts/Installation/Shell/TF-Quantum.sh
    if [ $? -ne 0 ]; then
        echo $FMSG;
        exit
    fi

else
    echo $FMSG;
    exit
fi