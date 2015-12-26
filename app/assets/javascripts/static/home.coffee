$ ->

  # アクティブになっているタブのコンテンツにクラスをつける
  do add_order_class = ->
    tab_pane = $('.tab-pane.in.active')
    tab_pane.each ->
      if $(this).is(tab_pane.first())
        $(this).addClass('first-active')
        return true

      if $(this).is(tab_pane.last())
        $(this).addClass('last-active')
        return false

      $(this).addClass('not-first-last-active')

  $('.tab-pane').hover ->
    $(this).css('box-shadow', '0 1px 6px rgba(0, 0, 0, 0.175)')
  , ->
    $(this).css('box-shadow', '')

  $('.category').on 'shown.bs.tab', add_order_class

