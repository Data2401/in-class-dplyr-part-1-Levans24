# --------------------------------------------------
# dplyr Four-Verbs Challenge
# Practice: select, filter, mutate, arrange
# Dataset: starwars (comes with dplyr)
# --------------------------------------------------

library(dplyr)

## if you want to look at the metadata, run:
help(starwars)

# --------------------------------------------------
# TOGETHER
# --------------------------------------------------


# Create a pipeline using the following instructions:
# SELECT:
# Keep only name, height, mass, species, and homeworld.
# FILTER:
# From your selected dataset, filter to only characters taller than 180 cm.
# MUTATE:
# Create a new variable: bmi = mass / (height/100)^2
# ARRANGE
# Sort by bmi, highest first.

starwars %>% 
  select(name, height, mass, species, homeworld) %>% 
  filter(height >= 180) %>% 
  mutate(bmi = mass /(height/100)^2)
  arrange(-bmi)
  
  
# --------------------------------------------------
# ON YOUR OWN
# --------------------------------------------------

# SELECT:
# Keep only name, homeworld, and species.
# FILTER:
# Keep only humans.
# MUTATE:
# Add a variable height_m = height / 100 (convert to meters).
# ARRANGE:
# Sort by mass, lowest first.
starwars %>% 
    filter(species == "Human") %>% 
    mutate(height_m = height / 100) %>% 
    arrange(-mass) %>% 
    select(name,homeworld, species)
     




# --------------------------------------------------
# Reflection Questions:
# --------------------------------------------------
# Disclaimer: I haven't run these yet :) 
# a) Which character has the highest BMI among those taller than 180 cm
  #Darth Vader
# b) Who is the tallest human character in the dataset?
  #Darth Vaderr
# c) Which homeworld has the most characters taller than 180 cm?
  #Tatooine
# d) Does the character with the highest BMI surprise you? Why or why not?
#Yes because we do not know the species that the character falls under.