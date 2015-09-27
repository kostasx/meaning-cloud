'use strict'

MeaningCloud = require('./index.js')
meaning      = new MeaningCloud( key: process.env.API_KEY )

# USER PROFILING : CALLBACK MODE

meaning.user_profiling {
  mode       : 'th'
  login_name : '@Kikobeats'
  lang       : 'en'
}, (err, body, res) ->
  console.log body
  return

# USER PROFILING : PROMISE MODE

meaning.user_profiling(
  mode       : 'th'
  login_name : '@Kikobeats'
  lang       : 'en'
).then (res)-> 
  console.log res.body

# TOPICS EXTRACTION | CALLBACK MODE

txt = "Robert Downey Jr has topped Forbes magazine's annual list of the highest paid actors for the second year in a row. The 49-year-old star of the Iron Man and Avengers films made an estimated $75m over the past year, beating rivals Dwayne Johnson, Bradley Cooper, Chris Hemsworth and Leonardo DiCaprio."

meaning.topics_extraction(
    lang : 'en'
    txt  : txt
    tt   : 'a'
    uw   : 'y'
, (err, body, res)->
    console.log body
)

# TOPICS EXTRACTION | PROMISE MODE

meaning.topics_extraction(
    lang : 'en'
    txt  : txt
    tt   : 'a'
    uw   : 'y'
).then (res)->
    console.log res.body
