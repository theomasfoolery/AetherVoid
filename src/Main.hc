#include "Math.HC"
#include "Engine.HC"

U0 AetherVoid() {
  SettingsPush; // Save current terminal settings
  AutoComplete(OFF);
  WinMax;       // Maximize window
  DocClear;     // Clear terminal text

  InitStars;
  
  CDC *dc = AliasColor(gr.dc); // Get persistent device context

  while (!ScanKey) { // Loop until a key is pressed
    DCFill(dc, BLACK);
    DrawStars(dc);
    
    // Display metadata on screen
    dc->color = YELLOW;
    GrPrint(dc, 10, 10, "AetherVoid v1.0 - Coordinates: X:%d Y:%d", ms.pos.x, ms.pos.y);
    
    Sleep(16); // ~60 FPS
  }

  DCFill(dc, BLACK);
  SettingsPop; // Restore terminal
}

AetherVoid; // Execute the function immediately