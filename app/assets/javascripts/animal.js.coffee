# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

  $(document).ready () ->

#    innerContainer = $('.animal_container > .row')
#    catData = getAnimalsData()

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

  getAnimalsData = () ->

    $.ajax 'animal/get_animals',
      type: 'GET',
      dataType: 'json',
      success: (data) ->
        animalResponse(data)
      error: (xhr) ->
        errors = $.parseJson(xhr.responseText).errors
        console.log 'NERD'
        $(@).find('.form-error').val(errors)

  animalResponse = (catData) ->
    console.log catData.data
    for cat in catData
      cat.full_name
      $('<div>')
      .text(cat.full_name)
      .addClass('cat-card')
      .appendTo('cat-container')

#    console.log $.getJSON "#{'animal/get_animals'}.json"
#  getAnimalsData = () ->


