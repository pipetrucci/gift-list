$('#modal1').closeModal();
$("#show_details").empty();
$("#show_details").html("<%= escape_javascript render('regalos/confirmation') %>");
$('#modal2').openModal({
  dismissible:false
});