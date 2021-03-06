#= require jquery
#= require jquery_ujs
#= require jquery.cookie
#= require events
#= require organizations
#= require venues
#= require sources
#= require_self

$ ->
  # mobile-specific behaviour
  if $(window).width() <= 820
    # move sidebar to bottom of page so it's still accessible
    $('#sidebar-welcome, #sidebar-event-details').hide()
    $('#sidebar').insertAfter('#main').show()

    # force user to list view if resolution not acceptable for calendar view
    $('.events-index .switch-list').click()

    $('#navbar-toggle').click ->
      if $('#navbar-menu').is(':visible')
        $('#navbar-menu').slideUp('fast')
      else
        $('#navbar-menu').slideDown('fast')
      false
