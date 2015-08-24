# $(document).ready ->
  # $('.button-collapse').sideNav()

$(window).scroll ->
  scroll = $(window).scrollTop()
  if scroll > 0
    $('.nav-f').addClass 'scrolled'
  else
    $('.nav-f').removeClass 'scrolled'
  return
