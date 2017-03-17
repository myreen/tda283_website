#!/bin/bash

runghc website.hs build 
rsync -avzh --exclude '*.swp' _site/* alexg@remote12.chalmers.se:/chalmers/groups/edu2009/www/www.cse.chalmers.se/course/TDA283_Compiler_Construction/
