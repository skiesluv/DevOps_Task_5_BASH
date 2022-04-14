#!/bin/bash

function func1() {
        sudo mkdir func1Dir
}

function func2() {
        sudo chmod 777 func1Dir
}

function func3(){
        cd func1Dir
        echo "Lamba or Ferra" >> lamborferr.txt
}

function func4(){
        sudo rm -rf func1Dir
}