# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#item_subcategory_id').parent().hide()
  subcategories = $('#item_subcategory_id').html()
  $('#item_category_id').change ->
    maincategory = $('#item_category_id :selected').text()
    escaped_category = maincategory.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(subcategories).filter("optgroup[label='#{escaped_category}']").html()
    if options
      $('#item_subcategory_id').html(options)
      $('#item_subcategory_id').parent().show()
    else
      $('#item_subcategory_id').empty()
      $('#item_subcategory_id').parent().hide()