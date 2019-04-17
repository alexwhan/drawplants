library(tidyverse)

roots <- tibble(type = rep(c("root", "aboveground"), each = 4),
                start_x = rep(0, times = 8),
                end_x = c(-2, -0.5, 0.5, 2, -1, -0.25, 0.25, 1),
                start_y = rep(0, times = 8),
                end_y = rep(c(-4, 3), each = 4))
                
ggplot(roots) +
  geom_segment(aes(x = start_x, xend = end_x,
                   y = start_y, yend = end_y,
                   colour = type),
               size = 3, lineend = "round") +
  scale_colour_manual(values = c("green", "bisque1")) +
  theme(panel.grid = element_blank())
