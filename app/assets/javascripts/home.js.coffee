# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->

	scope = $('.home-show')

	scope.find('.questionnaire-button').click (e) ->
		e.preventDefault()
		scope.find('.questionnaire-prompt').fadeOut ->
			scope.find('.questionnaire').fadeIn()

	scope.find('.login-button').click (e) ->
		e.preventDefault()
		scope.find('.login').fadeOut ->
			scope.find('.login-form').fadeIn()
