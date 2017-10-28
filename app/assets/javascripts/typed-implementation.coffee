ready = ->
  Typed.new '.element',
    strings: [
      'Software development should not be a secret process,',
      'when we take on a new project we make it our goal',
      'to not only deliver a well crafted product but also ensure',
      'that each stage of the process is fully communicated.'
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready ->
