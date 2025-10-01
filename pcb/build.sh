#!/bin/bash

kicad-cli pcb export gerbers pcb.kicad_pcb -o gerber
kicad-cli pcb export drill pcb.kicad_pcb -o gerber --generate-map --map-format gerberx2
cd gerber
zip -r ../pcb-gerber.zip .
cd ..
rm -r gerber
