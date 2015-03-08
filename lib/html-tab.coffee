
# lib/issues-histogram

IssuesHistogramView = require './issues-histogram-view'

module.exports =
class IssuesHistogram
  constructor: (@tabTitle) ->
    
  getTitle:     -> @tabTitle
  getViewClass: -> IssuesHistogramView
  
