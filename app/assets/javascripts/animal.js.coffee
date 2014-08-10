# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

 jQuery ->

   $('#menu_age').on 'click', (e) ->
     e.preventDefault
     selectedValue = $(this).find('.active').data('value')
     $(this).closest().find('.hidden').val(selectedValue)
     $('#hidden_age').val(selectedValue)

   $('#menu_gender').on 'click', (e) ->
    e.preventDefault
    selectedValue = $(this).find('.active').data('value')
    $(this).closest().find('.hidden').val(selectedValue)
    $('#hidden_gender').val(selectedValue)

   $('#menu_breeds').on 'click', (e) ->
     e.preventDefault
     selectedValue = $(this).find('.active').data('value')
     $(this).closest().find('.hidden').val(selectedValue)
     $('#hidden_breed').val(selectedValue)

# $('form').submit -> $(@).find('.ajax-loader').show()