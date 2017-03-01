// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */

<script type="text/javascript">
           function ran_col() { //function name
               var color = '#'; // hexadecimal starting symbol
               var letters = ['000000','FF0000','00FF00','0000FF','FFFF00','00FFFF','FF00FF','C0C0C0']; //Set your colors here
               color += letters[Math.floor(Math.random() * letters.length)];
               document.getElementsByClassName('well').style.background = color; // Setting the random color on your div element.
           }
       </script>
