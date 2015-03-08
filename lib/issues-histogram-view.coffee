
# lib/issues-histogram-view

{View} = require 'atom-space-pen-views'
d3     = require 'd3'

dataPathPfx = '../issues/data/comments-'

padChars = (num, len, chr = ' ') ->
  num = '' + num
  while num.length < len then num = chr + num
  num
      

module.exports =
class IssuesHistogramView extends View
  
  @content: ->
    @div =>
      
  lowHist:  {}
  highHist: {}

  initialize: ->
    for page in [1...]
      path = dataPathPfx + padChars(page, 4, '0') + '.txt'
      text = fs.readFileSync path, 'utf8'
      lines = text.split '\n'
      for line in lines
        
      