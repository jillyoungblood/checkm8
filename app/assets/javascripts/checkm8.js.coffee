class Home
  @document_ready: ->
    Home.show_or_hide_login_register_links()
    $('#form').on('click', 'a[data-clear-form]', Home.clear_form)

  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()

  @show_or_hide_login_register_links: ->
    $("#form").empty()
    if $(".user.email").length
      $("#anonymous").hide()
    else
      $("#anonymous").show()

$(document).ready(Home.document_ready)
