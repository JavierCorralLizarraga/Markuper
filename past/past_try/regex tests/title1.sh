#!/bin/bash

# any line that starts with something that isnt an uncapitalized letter or a sptilla the end of the line
grep -oP '^[^[a-z ]]*' ../ExampleFiles/ExampleFile.mr  
