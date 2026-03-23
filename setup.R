library(tidyverse)
library(ggplot2)
library(viridis)
library(DT)
library(scales)

theme_freq <- function(base_size = 13) {
  theme_minimal(base_size = base_size) %+replace%
    theme(
      plot.background = element_rect(fill = "#111118", colour = NA),
      panel.background = element_rect(fill = "#111118", colour = NA),
      panel.grid.major = element_line(colour = "#1e1e2a", linewidth = 0.3),
      panel.grid.minor = element_blank(),
      text = element_text(colour = "#d0d4dc"),
      plot.title = element_text(colour = "#f0f2f5", face = "bold", size = rel(1.1), margin = margin(b = 4)),
      plot.subtitle = element_text(colour = "#7a8090", size = rel(0.85), margin = margin(b = 10)),
      axis.text = element_text(colour = "#8a8e9a"),
      axis.title = element_text(colour = "#b0b4bc"),
      legend.text = element_text(colour = "#b0b4bc"),
      legend.background = element_rect(fill = "#111118", colour = NA),
      legend.key = element_rect(fill = "#111118", colour = NA),
      strip.text = element_text(colour = "#f0f2f5", face = "bold"),
      legend.position = "bottom")
}

pal <- c("Hard House" = "#ff2d55", "Minimal Tech House" = "#00d4ff")
minimal <- read_csv("Groovy_Minimal_House.csv", show_col_types = FALSE) |> mutate(Genre = "Minimal Tech House")
hard <- read_csv("Hard_house_(Club_Heart_broken❤️).csv", show_col_types = FALSE) |> mutate(Genre = "Hard House")
corpus <- bind_rows(minimal, hard)
