# Cirrus40 Keyboard

The Cirrus40 is a 40% split mechanical keyboard, featuring an ortholinear layout and rotary encoders designed as first-class citizens.

![cirrus40 img1](/img/img1.jpg)
![cirrus40 img2](/img/img2.jpg)

## Design Considerations

- A **3x thumb cluster** where each key is equally usable and comfortable to reach.
- **Rotary encoders** under the palms are nicely reachable without moving hands from the homerow position. One-handed use together with homerow modifiers (think: switching tabs, workspaces; word-by-word navigation, selection, and deletion).
- An **ortholinear** layout. Why not columnar stagger: it's comfortable at rest, but increases separation between the pinky and ring fingers in motion.
- A **hot-pluggable wired interconnect** between halves, since it's not acceptable that unplugging a cable at the wrong time can destroy your keyboard.
- Support for **both wired and wireless** operation. For wired: the interconnect is ESD protected. For wireless: the battery can be physically disconnected using a switch.
- Simple tenting using M3 screws.
- No toys: no LEDs, no displays.
- Only widely available and inexpensive parts.

![cirrus40 pcb render](/img/pcb_render.png)

## Why not..

There are many great keyboard designs out there. But keyboards are highly personal, and none of them hit all the marks for me. So why not...

- The **cheapino**: this was the first keyboard I built. It's very beginner friendly due to the large components and a great first build. However, since the entire matrix is routed onto one MCU, and particularly since the RJ45 only has 7 pins available for signals, the design has to make compromises such as the duplex matrix, and connecting the rotary encoder through the matrix instead of dedicated pins. Also, there is only one encoder in an inconvenient position, and I didn't like the
  columnar stagger. The thumb cluster is great though, and I've reused it here.
- **Lotus58**: Inconvenient thumb cluster and encoder placement, a number row, and unnecessary features like displays and LEDs. I learnt a lot from this design though, particularly the USB-C interconnect design was lifted from here.
- **Kyria**: I was eyeing this one for a while, and I love the design decisions. But, it's not open source. Also, the palm encoder position is too far away from the thumb, and it uses pronounced columnar stagger.
- **Corne**: Only two usable thumb keys, and recent versions require expensive factory assembly.
- Any pure wireless keyboard: unfortunately ZMK is not as mature as I'd hoped.

## Project Status

The keyboard has been manufactured, successfully tested, and I use it daily. I may do a second iteration in a bit that could contain e.g. minor changes to the shape and better support for 3d printed cases.

## Bill of Materials

- 2 each of the PCB, and top and bottom plates
- 42 MX switches and keycaps
- 42 MX hotswap sockets
- 2 EC11 encoders and encoder heads
- 44 1N4148 or 1N4148W diodes
- 4 100nF capacitors
- MCU sockets

For the wired build, additionally:
- 2 RP2040 Pro Micro MCUs
- 4 20mΩ 70Ω@100MHz 0603 ferrite beads
- 2 USB-C midmount connectors, e.g. https://www.lcsc.com/product-detail/C963373.html
- 2 ESD diodes, e.g. https://www.lcsc.com/product-detail/C558418.html

For the wireless build, additionally:
- 2 nice!nano v2 MCUs
- 2 Lithium-Polymer Battery 301230 (110 mAh)
- 2 slide switches: https://www.lcsc.com/product-detail/C431540.html

For assembly:
- 28 M2x4mm screws
- 14 M2x3mm spacers
- 4 M3 screws and nuts for tenting

Note you can simply combine both builds if you're undecided and want to be able to swap MCUs and batteries.
