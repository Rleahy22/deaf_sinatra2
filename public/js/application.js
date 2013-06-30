$(document).ready(function() {
  $( '#talk' ).submit( function(event) {
    event.preventDefault();
 
    
 
    //Using serialize
    var url = "/?" + $(this).serialize();
    var posting = $.post(url);
 
    //Using Explicit Urls
    // var input = $form.find('input[name="user_input"]').val();
    // var posting = $.post('/', { user_input: input })
 
    posting.done(function( data ) {
      var content = $( data ).find( '#response' );
      $( '#response' ).replaceWith( content );
    });
  });
});
