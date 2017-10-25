# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = undefined

ready = ->
  # sortable() is from html.sortable.js
  $('.sortable').sortable()
  return

$(document).ready ready
