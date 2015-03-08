
# lib/issues-histogram

IssuesHistogramView = require './issues-histogram-view'

module.exports =
class IssuesHistogram
  constructor: ->
    
  getTitle:     -> 'Issues Histogram'
  getViewClass: -> IssuesHistogramView
  
