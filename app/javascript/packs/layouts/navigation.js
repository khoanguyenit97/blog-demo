$(document).on('turbolinks:load', function(){
    // $('.ui.dropdown').dropdown();
    // $('.message .close').on('click', function() {
    //   $(this).closest('.message').transition('fade');
    // });
    $(".alert").delay(4000).slideUp(200, function() {
        $(this).closest('.message').transition('fade');
    });

})
