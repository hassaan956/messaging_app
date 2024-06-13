// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

//= required jquery
// Loads all Semantic javascripts
//= require semantic-ui

$(document).on('turbolinks:load',function() {
    $('.ui.dropdown').dropdown();
})