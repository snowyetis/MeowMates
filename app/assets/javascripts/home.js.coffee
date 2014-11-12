# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->

  txtusername = $('#txt_user');
  txtemail = $('#txt_email');

  $(txtusername).blur ->
    if validateUserName($(this).val()) is false
      $('#lbl_error_user').html('Your user name must be more than 3 characters.')

  $(txtemail).blur ->
    emailval = $(this).val()

    if validateEmail($(this).val()) is false
      $('#lbl_error_email').html('The entered e-mail is invalid.')
      valid_email = false
    else
      $('#lbl_error_email').html('')
      valid_email = true

    if valid_email is true
      if theEmailIsRegistered($(this).val()) is false
        $('#lbl_error_email').html('The entered e-mail is already in use.')
      else
        $('#lbl_error_email').html('')

    $("#sign_up_user").on 'submit', (e) ->
        e.preventDefault()
        $.ajax
          type: "POST"
          url: $(@).attr('users/registrations/create')
          data: $(@).serializeArray()
          dataType: "json"
        beforeSend: =>
          $(@).find('.form-error').remove()
          success: (user) =>
      # If saved, will here return the saved user
          error: (xhr) ->
          errors = $.parseJSON(xhr.responseText).errors
      # If any errors, "errors" will contains ActiveRecord validations errors
          console.log 'lalalalal' + errors # JSON object containing errors

  # Functions start here #

  validateUserName = (userName) ->
    if userName.length < 3
      return false
    else
      return true

  # Is the E-mail address valid?
  validateEmail = (email)  ->
    filter = /^[a-zA-Z0-9]+[a-zA-Z0-9_.-]+[a-zA-Z0-9_-]+@[a-zA-Z0-9]+[a-zA-Z0-9.-]+[a-zA-Z0-9]+.[a-z]{2,4}$/
    if(filter.test(email))
      true
    else
      false

  # Check to see if E-mail is already in use.
  theEmailIsRegistered = (email) ->

    $.ajax 'home/get_email/',
      type: 'GET',
      dataType: 'JSON',
      data: {email: email }
      async: false,
      success: (data) ->

        if data is true
          return true
        else
          return false

  matchPassword = (password, confirmedPassword) ->
    if password is confirmedPassword
      return true
    else
      return false

  passwordStrength = (password) ->
    if password  < 6
      return false
