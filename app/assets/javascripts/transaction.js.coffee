class Transaction
  @document_ready: ->
    $('#transaction_form').on('click', 'a[data-clear-form]', Transaction.clear_form)

  @clear_form: (e) ->
    e.preventDefault
    $('#transaction_form').empty()

$(document).ready(Transaction.document_ready)
