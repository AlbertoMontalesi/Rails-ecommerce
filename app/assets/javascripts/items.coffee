# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  subcategories = $('#item_subcategory_id').html()
  $('#item_category_id').change ->
    maincategory = $('#item_category_id :selected').text()
    console.log(maincategory)