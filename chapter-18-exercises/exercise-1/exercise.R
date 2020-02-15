#Chapter 18 - exercise 1
# load relevant libraries
library("httr")
library("jsonlite")

# Now we got the API to use, they are like passwords, we do not want to put these APIs keys onto github,
# We want to put them into seperate files due to security and privacy

# Be sure and check the README.md for complete instructions!


# Use `source()` to load your API key variable from the `apikey.R` file you made.
# Make sure you've set your working directory!
# Soruce will take path as argument to the file that you want to run
source("apikey.R") # Go to that file, select all, an hit ctrl enter, basically copyinh and pasting
# When running this, it runs the file

# Create a variable `movie_name` that is the name of a movie of your choice.
movie_names <- "Parasite"

# Construct an HTTP request to search for reviews for the given movie.
# The base URI is `https://api.nytimes.com/svc/movies/v2/`
# The resource is `reviews/search.json`
# See the interactive console for parameter details:
#   https://developer.nytimes.com/movie_reviews_v2.json
#
# You should use YOUR api key (as the `api-key` parameter)
# and your `movie_name` variable as the search query!
base_uri <- "https://api.nytimes.com/sv/movies/v2/"
endpoint <- "eviews/search.json"
uri <- paste(base_uri, endpoint)

query_params <- list("api-key" = nyt_key, "movie_name" = movie_name)

# Send the HTTP Request to download the data
# Extract the content and convert it from JSON
response <- GET(uri, query = query_params_list)
body <- content(response, "text", encoding = "UFT-8")
data <- from JSON(body)
data
# What kind of data structure did this produce? A data frame? A list?


# Manually inspect the returned data and identify the content of interest 
# (which are the movie reviews).
# Use functions such as `names()`, `str()`, etc.


# Flatten the movie reviews content into a data structure called `reviews`


# From the most recent review, store the headline, short summary, and link to
# the full article, each in their own variables


# Create a list of the three pieces of information from above. 
# Print out the list.
