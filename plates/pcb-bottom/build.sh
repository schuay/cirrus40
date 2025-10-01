#!/bin/bash

LAYERS="F.Cu,B.Cu,F.Adhesive,B.Adhesive,F.Paste,B.Paste,F.Silkscreen,B.Silkscreen,F.Mask,B.Mask,Edge.Cuts,F.Courtyard,B.Courtyard,F.Fab,B.Fab"

kicad-cli pcb export gerbers --layers "$LAYERS" plate-bottom.kicad_pcb -o gerber
kicad-cli pcb export drill plate-bottom.kicad_pcb -o gerber --generate-map --map-format gerberx2
cd gerber
zip -r ../plate-bottom-gerber.zip .
cd ..
rm -r gerber
