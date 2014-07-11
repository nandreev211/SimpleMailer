ready = ->
  $("#btn-save-draft").click ->
    $("#email_is_draft").val 1
    $("#mail_form").submit()

  $("#btn-send").click ->
    $("#email_is_draft").val 0
    $("#mail_form").submit()
$(document).ready(ready)
$(document).on('page:load',ready)