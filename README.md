# Cirrus40 Keyboard

The Cirrus40 is a 40% split mechanical keyboard, featuring an ortholinear layout and rotary encoders designed as first-class citizens.

## Design Considerations

- A **3x thumb cluster** where each key is equally usable and comfortable to reach.
- **Rotary encoders** under the palms are nicely reachable without moving hands from the homerow position. One-handed use together with homerow modifiers (think: switching tabs, workspaces; word-by-word navigation, selection, and deletion).
- An **ortholinear** layout. Why not columnar stagger: it's comfortable at rest, but increases separation between the pinky and ring fingers in motion.
- A **hot-pluggable wired interconnect** between halves, since it's not acceptable that unplugging a cable at the wrong time can destroy your keyboard.
- Support for **both wired and wireless** operation. For wired: the interconnect is ESD protected. For wireless: the battery can be physically disconnected using a switch.
- Simple tenting using M3 screws.
- No toys: no LEDs, no displays.
- Only widely available and inexpensive parts.

## Why not..

- The **cheapino**: this was the first keyboard I built. It's very beginner friendly due to the large components and a great first build. However, since the entire matrix is routed onto one MCU, and particularly since the RJ45 only has 7 pins available for signals, the design has to make compromises such as the duplex matrix, and connecting the rotary encoder through the matrix instead of dedicated pins. Also, there is only one encoder in an inconvenient position, and I didn't like the
  columnar stagger. The thumb cluster is great though, and I've reused it here.
- **Lotus58**: Inconvenient thumb cluster and encoder placement, a number row, and unnecessary features like displays and LEDs. I learnt a lot from this design though, particularly the USB-C interconnect design was lifted from here.
- **Kyria**: I was eyeing this one for a while, and I love the design decisions. But, it's not open source. Also, the palm encoder position is too far away from the thumb, and it uses pronounced columnar stagger.
- **Corne**: Only two usable thumb keys, and recent versions require expensive factory assembly.
- Any pure wireless keyboard: unfortunately ZMK is not as mature as I'd hoped.

## Project Status

This project is currently a work in progress. The main PCB has been designed, manufactured, and successfully tested.
