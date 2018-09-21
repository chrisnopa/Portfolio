ready = ->
  Typed.new '.element',
    strings: [
      "Experienced in Ruby on Rails, HTML, CSS and Javascript."
      "Eager to continue developing my skills as a junior UX Designer / fullstack web developer."
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready

