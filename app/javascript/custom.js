scroll_bottom = function(){
  if ($('#message-container').length > 0){
    $('#message-container').scrollTop($('#message-container')[0].scrollHeight);
  }
}


submit_message = function() {
  $('#message_body').on('keydown', function(e) {
    if (e.keyCode == 13) {
      $('#button-addon2').click();
      e.target.value = "";
    }
  })
}
