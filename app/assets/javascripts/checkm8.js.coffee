show_or_hide_login_register_links = ->
  $("#form").empty()
  if $(".user.email").length
    $("#anonymous").hide()
  else
    $("#anonymous").show()