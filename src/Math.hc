// AetherVoid Math Logic
// Uses TempleOS fixed-point and float types

#define STAR_COUNT 512
#define SPEED 4.5

class Star {
  F64 x, y, z;
  I64 screen_x, screen_y;
};

// Simple 3D to 2D Projection
U0 Project(Star *s, F64 focal_len) {
  if (s->z <= 0) s->z = 1000; // Reset star if it passes camera
  s->screen_x = (s->x * focal_len) / s->z + (GR_WIDTH / 2);
  s->screen_y = (s->y * focal_len) / s->z + (GR_HEIGHT / 2);
}
