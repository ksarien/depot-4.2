# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

class CartClass
  decTotalPrice: (price) ->
    total_price = $('#cart td.total_cell').html().replace /[^0-9\.]+/g, ''
    new_total_price = total_price - price
    $('#cart td.total_cell').html '$' + (new_total_price).toFixed(2)

  removeRow: (id) ->
    $('#cart tr.li-' + id).html ''

  decQuantity: (id, quantity, price) ->
    tr = $('#cart tr.li-' + id)
    tr.find('.quantity').html quantity + '&times;'
    tr.find('.item_price').html '$' + (price * quantity).toFixed(2)

  empty: () ->
    $('#cart td.total_cell').html '$0.00'
    $('#cart tr:not(.total_line)').html ''


window.Cart = new CartClass
