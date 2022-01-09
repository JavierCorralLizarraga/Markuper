#!/bin/bash

# any line that starts with something that isnt an uncapitalized letter or a sptill the end of the line
grep -oP '^[^[a-z ]]*' ../ExampleFile.mr  
