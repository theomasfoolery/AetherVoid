# 🪐 AetherVoid

**AetherVoid** is a 3D space navigation simulation written in **HolyC** for TempleOS. It utilizes direct memory access to the graphics context (CDC) to render a real-time starfield.


### 🏛️ Why HolyC?

HolyC is a "middle-level" language. It's faster than C for prototyping because of the JIT, but it gives you the power to manipulate the CPU and VGA buffer directly. In **AetherVoid**, we aren't using a graphics library—we are calculating the pixel positions using the `F64` (float 64-bit) math unit and writing to the screen memory manually.

## 📜 Language Features Used
- **JIT Compilation**: The `.HC` files are compiled and executed on the fly by the TempleOS shell.
- **CDC Graphics**: Bypasses traditional windowing for direct pixel plotting (`GrPlot`).
- **No Headers**: Leverages HolyC's global namespace and non-standard `#include` behavior.

## 🚀 How to Run
1. Boot into **TempleOS**, **ZenithOS**, or **TinkerOS**.
2. Mount your local folder as a RedSea drive or copy files to the virtual disk.
3. In the command line, enter:
```c
   #include "Main.HC";
```

4. Press any key to exit the simulation.

## ⚖️ License

MIT License. Created for the glory of 640x480 resolution.
