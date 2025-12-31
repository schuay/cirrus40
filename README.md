# Cirrus40 Keyboard

The Cirrus40 is a 40% split mechanical keyboard, with an ortholinear layout and a focus on usable rotary encoders.

![cirrus40img1](/img/cirrus40.jpg)
![case_blowup](/img/case_blowup.jpg)

## Design Considerations

- A **3x thumb cluster** where each key is equally usable and comfortable to reach.
- **Rotary encoders** under the palms are nicely reachable without moving hands from the homerow position. One-handed use together with homerow modifiers (think: switching tabs, workspaces; word-by-word navigation, selection, and deletion). Hardware debouncing for the perfect input signal; no more missed transitions.
- A **full 3d printed case** protects the internals.
- An **optional 3d printed 30deg tenting stand** for rock-solid tenting. The tenting stand integrates perfectly with the case.
- An **ortholinear** layout. Why not columnar stagger: it's comfortable at rest, but increases separation between the pinky and ring fingers in motion.
- A **hot-pluggable wired USB-C interconnect** between halves. USB-C cables are widely available.
- Support for **both wired and wireless** operation.
- Simple tenting using M3 screws.
- No toys: no LEDs, no displays.
- Only widely available and inexpensive parts.

The Cirrus40 combines some of the favorite aspects of my previous builds (the Cheapino's thumb cluster and the Lotus58's key layout and USB-C interconnect). I got a bit fixated on optimizing encoder precision and ergonomics, which is why you'll see the hardware debouncing circuit, the below-palm position, and the strong recommendation for quality Alps encoders.

## Firmware

**QMK**: [qmk_firmware](https://github.com/schuay/qmk_firmware/tree/add_cirrus40). My own keymap is available as an example at [qmk_userspace](https://github.com/schuay/qmk_userspace).

**ZMK**: Contributions welcome. [zmk-config](https://github.com/schuay/zmk-config) hasn't been updated for Cirrus40 Revision 2 yet.

## Required Files

All files required for manufacture are located in the most recent release directory.

- **[PCB Gerber Files](releases/20251220/pcb-gerber.zip)**: For manufacturing the printed circuit boards.
- **[3D Case/Stand Files](releases/20251220/case-steps.tar.xz)**: STEP files for printing the case and optional tenting stand.

## Ordering guide

TLDR: PCB and case manufacturing from JLCPCB, electronics components from LCSC, and the rest from AliExpress with Choice shipping.

- [jlcpcb.com](jlcpcb.com):
  - For the PCB: it's safe to stick with default values. 
  - For the case: I used 9600 Resin (Spray Painting-Matte-Black) for the case and PA12-HP Nylon for the tenting stand with good results. Please let me know if you experiment with other materials.
- [lcsc.com](lcsc.com): See [doc/bom.csv](doc/bom.csv) for more info. Note that the [USB-C connector I used](https://www.lcsc.com/product-detail/C963373.html) is currently out of stock and NOT included in [doc/bom.csv](doc/bom.csv).
- [aliexpress.com](aliexpress.com): Great for switches, keycaps, encoder heads, the RP2040 ProMicro MCU, MCU pin headers, screws, spacers, nuts, etc. I've had good experiences with "Choice" shipping.

Note: jlcpcb.com and lcsc.com offer combined shipping; this is not recommended, as it was more complex, more expensive, and slower when I tried it.

## Build guide

A detailed, step-by-step build guide is not yet available. Contributions on this front are very welcome!

However, the build process is straightforward for those with some experience in hand-soldering keyboards. The soldering difficulty is medium-to-easy; the surface-mount components are in a large (0805) package and are suitable for hand-soldering. The USB-C connector is also simpler than it looks: the wiring is such that all data pins can simply be bridged together (i.e. precise drag-soldering is not strictly needed).

I usually do the USB-C connector and SMD components first, followed by diodes and hotswap sockets; and finally the MCU plus socket and encoders. All components (except the encoder) go on the bottom side of the PCB. Consult the kicad files if something is unclear. A multimeter is good to have around for verification and error search.

## Bill of Materials

A single keyboard build costs around 80EUR including shipping and customs from JLCPCB and LCSC.

**Core Components**
| Part | Quantity | Notes |
| --- | --- | --- |
| Reversible PCB | 2 | From the Gerber files |
| 3D Printed Case | 1 | From the STEP files. Tenting stand is optional. |
| MX switches | 36 | |
| MX hotswap sockets | 36 | |
| EC11 rotary encoders | 2 | **ALPS EC11E15244G1** is strongly recommended. |
| Encoder knobs | 2 | |
| 1N4148 or 1N4148W diodes | 40 | SOD-123 or SOD-323 package |
| 100nF capacitors | 4 | 0805 package |
| 10kOhm resistors | 4 | 0805 package |
| 8.2kOhm resistors | 4 | 0805 package |
| MCU Sockets / Pin Headers | 2 sets | For socketing the microcontrollers |

**Wired Build Components**
| Part | Quantity | Notes |
| --- | --- | --- |
| Pro Micro (RP2040) MCU | 2 | |
| Ferrite beads | 4 | 0805 package, e.g., 220Ω@100MHz |
| USB-C mid-mount connector | 2 | e.g., LCSC C963373 |
| ESD protection diode | 2 | e.g., LCSC C558418 |

**Wireless Build Components**
| Part | Quantity | Notes |
| --- | --- | --- |
| nice!nano v2 MCU | 2 | |
| LiPo Battery | 2 | 301230 (110 mAh) size recommended |
| Power slide switch | 2 | e.g., LCSC C431540 |

**Hardware**
| Part | Quantity | Notes |
| --- | --- | --- |
| M2x4mm screws | 20 | Use M2x6mm for the 4 case holes if using the tenting stand |
| M2x7mm spacers | 10 | |
| M3 screws and nuts | 4 (opt) | For basic, non-stand tenting |

## Release history

Released files can be found in the releases/ directory.

- [releases/20251220](releases/20251220): Revision 2. 3x5+3 with a full 3d printed case and 30deg tenting stand. Hardware encoder debouncing.
- [releases/20251001](releases/20251001): Revision 1. 3x6+3 with a sandwich case.

## Revision 1 Gallery
![cirrus40 img1](/releases/20251001/img/img1.jpg)
![cirrus40 img2](/releases/20251001/img/img2.jpg)
![cirrus40 pcb render](/releases/20251001/img/pcb_render.png)
