Star stars[STAR_COUNT];

U0 InitStars() {
  I64 i;
  for (i = 0; i < STAR_COUNT; i++) {
    stars[i].x = RandI32 % 1000 - 500;
    stars[i].y = RandI32 % 1000 - 500;
    stars[i].z = RandI32 % 1000;
  }
}

U0 DrawStars(CDC *dc) {
  I64 i;
  dc->color = WHITE;
  for (i = 0; i < STAR_COUNT; i++) {
    stars[i].z -= SPEED; // Move star toward camera
    Project(&stars[i], 400.0);
    
    // Only draw if within screen bounds
    if (stars[i].screen_x > 0 && stars[i].screen_x < GR_WIDTH &&
        stars[i].screen_y > 0 && stars[i].screen_y < GR_HEIGHT) {
      GrPlot(dc, stars[i].screen_x, stars[i].screen_y);
    }
  }
}