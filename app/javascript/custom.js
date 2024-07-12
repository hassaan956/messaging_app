import 'jquery';
import 'semantic-ui-css/semantic.js'; // Assuming you are using Semantic UI for the transition effect

  window.scroll_bottom = function() {
    if ($('#messages').length > 0) {
      $('#messages').scrollTop($('#messages')[0].scrollHeight);
    }
  }

  $(document).on('turbolinks:load', function() {
    // Close message on click
    $('.message .close').on('click', function() {
      $(this).closest('.message').transition('fade');
    });
    scroll_bottom();
})