#!/bin/bash

runghc website.hs build
rsync -avzh --exclude '*.swp' _site/* myreen@remote12.chalmers.se:tda283/
