---
layout: wiki.njk
title: formulas
date: 2021-07-04T21:04:16-05:00
lastmod: Last Modified
---

 ### Object Rotation Around Midpoint

    /* Convert to degrees */
    double angle = radians * 180 / PI;

    /* rotate around origin point */
    double dx = ox + cos(angle)*radius;
    double dy = oy + sin(angle)*radius;

### Midpoint Circle Algorithm

  int diam = (radius * 2);

  int x = radius - 1;
  int y = 0;
  int tx = 1;
  int ty = 1;
  int error = tx - diam;

  while (x >= y)
  {

    SDL_RenderDrawPoint(gRen, cx + x, cy + y);
    SDL_RenderDrawPoint(gRen, cx + x, cy - y);
    SDL_RenderDrawPoint(gRen, cx - x, cy + y);
    SDL_RenderDrawPoint(gRen, cx - x, cy - y);
    SDL_RenderDrawPoint(gRen, cx + y, cy - x);
    SDL_RenderDrawPoint(gRen, cx + y, cy + x);
    SDL_RenderDrawPoint(gRen, cx - y, cy - x);
    SDL_RenderDrawPoint(gRen, cx - y, cy + x);

    if (error <= 0)

    {
      ++y;
      error += ty;
      ty += 2;
    }

    if( error > 0)
    {
      --x;
      tx += 2;
      error += (tx - diam);

    }

  }
}