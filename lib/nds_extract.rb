$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

# pp directors_database

def gross_for_director(director_data)
  gross = 0
  inner_len = director_data[:movies].length
  director_movies_index = 0
  
   while director_movies_index < inner_len do
     gross += director_data[:movies][director_movies_index][:worldwide_gross]
     director_movies_index += 1
   end
   gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  
  results={}
  director_index=0 

  while director_index < nds.length do
    director = nds[director_index]
    
  #   directors_name = director[:name]
  #   director_movies_index = 0 
  #   total = 0
  #   while director_movies_index < director[:movies].length do
  #     total += director[:movies][director_movies_index][:worldwide_gross]
  #     results[directors_name] = total
  #     director_movies_index += 1 
	#   end

   results[directors[:name]] = gross_for_director(directors)
	  
    director_index += 1
  end
 
results
end
