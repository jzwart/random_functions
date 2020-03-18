
library(tidyverse)

unit_converter = tibble(measure = c('length','length','length','length',
                                    'height','height','height','height',
                                    'weight','weight','weight', 'weight'),
                        stoats = c(1/34, 1/13.4, 1/(34/100), 1/(13.4/12),
                                   1/25, 1/9.8, 1/(25/100), 1/(9.8/12),
                                   1/220,1/7.84, 1/.220, 1/(7.84/16)),
                        from_unit = c('cm', 'in', 'm', 'ft',
                                      'cm', 'in', 'm', 'ft',
                                      'g', 'oz', 'kg', 'lb') )



weight_in_stoats = function(weight, units){

  weight <- as.numeric(weight)

  weight_converter <- dplyr::filter(unit_converter, measure == 'weight')

  possible_units <- c("g", "kg", "oz", "lb")
  units <- match.arg(units, possible_units)

  stoats <- round(weight * weight_converter$stoats[which(units == weight_converter$from_unit)], digits = 2)

  return(stoats)
}



length_in_stoats = function(length, units){

  length <- as.numeric(length)

  length_converter <- dplyr::filter(unit_converter, measure == 'length')

  possible_units <- c("cm", "in", "m", "ft")
  units <- match.arg(units, possible_units)

  stoats <- round(length * length_converter$stoats[which(units == length_converter$from_unit)], digits = 2)

  return(stoats)
}



height_in_stoats = function(height, units){

  height <- as.numeric(height)

  height_converter <- dplyr::filter(unit_converter, measure == 'height')

  possible_units <- c("cm", "in", "m", "ft")
  units <- match.arg(units, possible_units)

  stoats <- round(height * height_converter$stoats[which(units == height_converter$from_unit)], digits = 2)

  return(stoats)
}


