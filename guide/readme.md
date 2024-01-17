## Ordering

- download all files from Release
- order 2 PCBs - `GERBER-pcb.zip` and `GERBER-connector.zip`. For connector I recommend to select 1.2mm thickness. If using JLCPCB, choose "Specify a location" in "Remove order number". Other settings can be default
- order 4 case parts - bottom left, bottom right, top left and top right (with or without display)
- order knobs - I recommend `knobs-all.stl` which contains EC12 knob and two knobs for 5 way switch.

## Materials

- MCU - nice!nano _(recommended, please support original creator)_ or its chinese clone
- 40 Choc V1 hotswap sockets
- 40 Choc V1 switches
- 40 [SMD SOD-123 1N4148](https://www.aliexpress.com/item/1005002882901030.html) diodes
- Battery up to 602040 size (if in doubt, check that there's enough space using 3D project)
- 1 EC11/EC12 rotary encoder, [low profile EC12](https://www.aliexpress.com/item/1005003636548797.html) is recommended (no click though)
- 1 Alps SKRH 5-way switch, [SKRHADE010](https://www.aliexpress.com/item/1005005687595092.html) (more tactile) or [SKRHABE010](https://www.aliexpress.com/item/1005004045054939.html)
- 6mm, 8mm and 10mm [M2 screws with flat head](https://www.aliexpress.com/item/4001248931159.html) (choose black or silver based on case color/preference)
- [M2 nuts](https://www.aliexpress.com/item/1005001412230125.html)
- Vertical 12pin 1mm [FFC/FPC connector](https://www.aliexpress.com/item/1005003970200102.html)
- Horizontal 12pin 1mm [FFC/FPC connector](https://www.aliexpress.com/item/10000348360254.html)
- 12pin 1mm pitch 6cm [FFC cable](https://www.aliexpress.com/item/10000013182312.html) - grab both reverse and same side variants, in case you solder the connector upside down
- SMD 4x4x1.5mm [push button](https://www.aliexpress.com/item/32802382507.html)
- MSK-12C02 on/off switch
- [7x1.5mm legs](https://www.aliexpress.com/item/1005002995402961.html)
- [8x1.5mm magnets](https://www.aliexpress.com/item/1005005884332595.html)
- 2.54mm female pin [headers](https://www.aliexpress.com/item/4001122376295.html)
- 5pin [headers](https://www.aliexpress.com/item/1005005742644313.html)

If using nice!view:

- [5pin female RGBW cable](https://www.aliexpress.com/item/1005002644712420.html)

## Tools

- Soldering iron. Any iron will work, but I highly recommend something small like TS100 or Pinecil with TS-K tip, it's good for SMD soldering
- Solder, preferably with lead if you can get one. For EU I recommend this [shop](https://botland.store) and Cynel brand, 0.56mm and 0.9mm
- [Flux](https://www.aliexpress.com/item/1005004675178847.html)
- Flush cutters, be extra careful when cutting pins, always use eye protection
- Tweezers (I prefer [reverse](https://www.aliexpress.com/item/1005004188266714.html) instead of regular), pliers, soldering mat, isopropyl alcohol (IPA) and [cotton pads](https://www.aliexpress.com/item/1005003798227116.html) for cleaning

## Preparations

1. Download sample firmware, flash it to MCU and pair with your PC. It's easier to do it now and also check that MCU actually works.

## Left side

1. Left side components:

   <img src="./left-1.jpg" height="400" />

2. Start from FFC connector, so you'll not be able to mix left and right sides anymore. As with any SMD part, start with putting some solder on only **one** big pad.

   <img src="./left-ffc-1.jpg" height="400" />

   Put the part into place, heat the solder blob and align the part to match other pads.

   <img src="./left-ffc-2.jpg" height="400" />

   Solder the second big pad, then proceed to pins. Don't drag the iron across pins, just solder them with the tip one by one, slowly and carefully. Use flux if you have it, clean with IPA afterwards.

   <img src="./left-ffc-3.jpg" height="400" />
   If some pins are bridged, add flux and remove extra solder by moving the iron along the pin to you. Again, slowly and patiently, it can take multiple tries but you can do it.

3. Solder on/off switch. Same approach - start with one pad, put switch into place and finish other pins.

   <img src="./left-switch.jpg" height="400" />

4. Time for diodes. The PCB and case supports diodes both on bottom sides and top sides (inside switch's LED hole). I prefer putting them on top as LED hole is pretty big and leaves more space for relaxed placement. As to my knowledge, all Choc switches support LEDs, but double check your switches to be sure.

   Diodes are **not** symmetrical, make sure you're placing it correctly. Every diode has a vertical line on it marking the side with cathode, experiment with lighting and angle if you don't see it. That line should match with a vertical line inside the PCB's footprint and a thick border line (so you can verify it after soldering).

   Start with one pad, use tweezers to put the diode into place. Make sure to press on it with fingernail to avoid it floating in the air. Double check diode's orientation and solder second pad. If you're comfortable with SMD soldering already I recommend to do one pad for all diodes first, then place them and solder second pad for all of them at once.

   <img src="./left-diode-1.jpg" height="400" />

5. **Flip** the PCB, let's do hotswap sockets now. Much easier to work with, use thicker solder if you have, you'll need a lot. Sockets are not symmetrical, look at silkscreen on how to place it. Approach is still the same - first pad, then socket, then second pad.

   <img src="./left-hotswap.jpg" height="400" />

6. Solder JST battery connector. When attaching a battery, double check polarity, positive side (red wire) must match with + symbol on silkscreen - depending on your battery you may have to swap wires inside the connector. You can fix the battery in place with tape (use removable tape and/or try it inside the case first).

   <img src="./left-battery.jpg" height="400" />

7. Flip PCB back, last part - 5 way switch. It's not symmetrical, there is only one way you can insert it so do not force it. Start with big pads, finish with small ones.

   <img src="./left-5way.jpg" height="400" />

   Left side is finished, congratulations!

## Right side

1. Right side components:

   <img src="./right-1.jpg" height="400" />

2. Same as the left side - start with FFC, then diodes and socket (on the bottom side).

3. Prepare MCU headers - you'll need two strips of 12 pins and one of 2. Don't try to break the header between the pins, instead count the required number of pins, and break in middle of a next pin. Discard that pin and cut the plastic with flush cutters - it'll look much better. Assembling headers like that (using extra headers for stabilization):

   <img src="./right-headers-1.jpg" height="400" />

   Flip carefully and solder all pins starting from corners. I prefer to cut first and then solder but you can cut afterwards as well, just remember to do it as bottom case has only 1.2mm space there.

   <img src="./right-headers-2.jpg" height="400" />

   If you're using original nice!nano: insert 2-pin header into **top** holes (like on photos) and fix it in place with an extra pin header.
   If you're using chines clone: insert 2-pin header into **bottom** holes and fix it in place with tape (holes are no aligned so you can't use headers). Flip and solder.

    <img src="./right-headers-3.jpg" height="400" />

4. Solder reset button. SMD parts should be a piece of cake for you already, so no photos :)

5. Time to actually socket the MCU.

   For **nice!nano** users - you have to cut plastic at the end of middle pins, there is some component in that place:

   <img src="./right-mcu-1.jpg" height="400" />

   Extract 24 pins from RGB headers and put a piece of masking tape over all headers leaving some space in between for MCU components.

   <img src="./right-mcu-2.jpg" height="400" />

   Align MCU holes with headers (remember to ignore top holes on MCU, they are not used/soldered) and insert pins one by one. Cut them if you prefer but it's not required. Solder everything starting from corners. For **nice!nano** be extra careful not to bridge middle pins with SWC pad.

   Carefully extract MCU, remove tape and insert it back. Done!

   <img src="./right-mcu-3.jpg" height="400" />

6. Solder rotary encoder, remember to cut pins under 1.2mm.

<img src="./right-ec12.jpg" height="400" />

7. Optional - **nice!view**. You could solder it with wires directly but I like to socket it as well similar to MCU to make disassembly much easier. Cut the RGB strip to 6.5-7cm, clean the ends and solder it to **keyboard** PCB.

   <img src="./right-nv-1.jpg" height="400" />

   Take a RGB header, bend pins from one side, insert it into nice!view and solder. Do not bend the header inside nice!view to avoid damaging the display.

   <img src="./right-nv-2.jpg" height="400" />

   Glue nice!view to the case with hot glue or tape.

   <img src="./right-nv-3.jpg" height="400" />

   Attach the connector wire to nice!view and try to close the case, bending the wire into S letter like this (most importantly, it should bend before MCU):

   <img src="./right-nv-4.jpg" height="400" />

   Right side is completed.

## Connectors

Now this part is a bit confusing, look carefully on the photos and triple check your magnets for correct orientation.

1. Prepare two connector PCBs, and put them down on **different** sides (e.g. jlcpcb's order number should be visible only on one of them). Rotate so that version number (`0.3`, `1.0`, etc) is on top. Solder vertical FFC connectors, black part must be on **top** (next to version number). If you still soldered it upside down, don't worry and use another FFC cable (with contacts on different sides).

   <img src="./connectors-1.jpg" height="400" />

2. Take magnetic connectors and put some tape on magnets to isolate them, otherwise they'll short PCB pads.

   <img src="./connectors-2.jpg" height="400" />

3. Put PCBs onto connectors and double check that magnets are oriented correctly

   <img src="./connectors-3.jpg" height="400" />

4. Take them apart and solder without flipping anything. It's a bit tricky because of magnets but doable with two hands. The easiest approach is to add a lot of flux and drag solder across all contacts.

   <img src="./connectors-4.jpg" height="400" />

5. Attach connectors to the case. Black part of the FFC connector should not be visible, the wider connector should go to left (battery) side. Use 8mm and 10mm screws (on the photo I used 12mm screws as I didn't have 10mm, will look better for you).

   <img src="./connectors-5.jpg" height="400" />

## Case assembly

1. Put screw inserts into the case. If you used resin - take 3.2mm-wide inserts and just instant glue(cyanoacrylate) them, for thermoplastics (MJF, PLA, etc) use 3.5mm and look at [this guide](https://docs.bastardkb.com/bg_charybdis/04screw_inserts.html) for detailed instructions.

2. Assemble top case and PCB together, connecting main PCB to connectors with FFC cables (same side contacts). I think it's easier to insert it into connector first, and then into main PCB.

3. Connect both parts together, perform some basic testing - display, 5-way switch, encoder - everything should work already. I recommend to also test every key by shorting hotswap socket with some metal tool (switch puller, pliers, etc).

4. If everything is ok - congratulations! Close the case with bottom part and 6mm screws, don't overtight them.

## Troubleshooting
