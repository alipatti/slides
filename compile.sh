#!/bin/bash

find **/main.tex | xargs latexmk -cd
