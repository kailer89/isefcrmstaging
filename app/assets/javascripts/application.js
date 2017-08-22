

//
// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require jquery.ui.all
//= require bootstrap
//= require formToWizard
//= require bwizard
//= require jquery.metadata
//= require jquery.tablesorter

//= require ./wysihtml5x-toolbar.js
//= require ./handlebars.runtime.min.js
//= require ./templates.js
//= require ./bootstrap3-wysihtml5.js
//= require ./commands.js
//= require ./es-AR.js
//= require_tree .

$( document ).ready(function() {

//para prospectos  
var subsedes = $("[id*='interes_basicos_attributes_0_subsede_id']").html();
if(subsedes != null)
{
  
  var sedes = $("[id*='interes_basicos_attributes_0_sede_id']").change(function()
    {
      var selectedSede = $("[id*='interes_basicos_attributes_0_sede_id'] :selected").text();

      var options = $(subsedes).filter("optgroup[label='" + selectedSede + "']").html();
      if(options != null)
      {
          $("[id*='interes_basicos_attributes_0_subsede_id']").html(options);

      }
      else
      {
        console.log("sin subsedes");

      }
    });
      var selectedSede = $("[id*='interes_basicos_attributes_0_sede_id']").find(":selected").text();
      console.log($("select[id*='interes_basicos_attributes_0_sede_id']").find(":selected").html());
      var options = $(subsedes).filter("optgroup[label='" + selectedSede + "']").html();
      if(options != null)
      {
          $("[id*='interes_basicos_attributes_0_subsede_id']").html(options);

      }
      else
      {
        console.log("sin subsedes");

      }
}
else
{
console.log("no hay subsedes");

}

});

$(function() {
  $(window).scroll(function() {
    if($(this).scrollTop() != 0) {
      $('#toTop').fadeIn(); 
    } else {
      $('#toTop').fadeOut();
    }
  });
 
  $('#toTop').click(function() {
    $('body,html').animate({scrollTop:0},800);
  }); 
});


function remove_fields(link) {
  $(link).prev("input[type=hidden]").val("1");
  $(link).closest(".fields").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).parent().before(content.replace(regexp, new_id));

}

function openPrint(modelname,id)
{
  var url;
  url= "/" + modelname + "/" + id + "/printview";
  window.open(url, '_printview', 'height=800,width=800,status=no,menubar=no,location=no,toolbar=no');
}

$(window).bind("load", function() { 
      if(location.href.indexOf("users") == -1){

      }
      else
      {
        $footer = $("#gc-footer");
        $footer.hide();

      }





});
/*
    $(document).ready(function () {


          $(".btn").click(function (e) {
            if(!$(this).hasClass("printbox") && $(this).prop('nodeName') != "INPUT"  && $(this).prop('nodeName') == "A" 
              && ($(this).text().toLowerCase().indexOf("validar")  != -1 || $(this).text().toLowerCase().indexOf("convertir")!= -1)
              )
            {
              e.preventDefault();
              //disable the submit button
              $(this).attr("disabled", true);
              $(this).attr("data-confirm", null);
              //$(this).attr("data-method", null);
            }
            return true;

        });
    });


*/

$(document).ready(function(){


$.wait = function(ms) {
    var defer = $.Deferred();
    setTimeout(function() { defer.resolve(); }, ms);
    return defer;
};

$('.avoid').click(function(){ 

  if($(this).hasClass('clicked'))
    { 
      $(this).attr("disabled", true);
      return false;
  }
  else { 
    $(this).addClass('clicked'); 
    $(this).attr("disabled", true);
    var overlay = jQuery('<div id="overlay"> </div>');
    overlay.appendTo(document.body);

    var mess = jQuery('<div class="hero-unit centeredSignUp3"> <p> <h1>Procesando ...</h1> <div class="alert alert-error ">  <button type="button" class="close" data-dismiss="alert">×</button> <strong>Por favor espere!<br/></strong> Por favor no presione el boton de actualizar de su explorador.</div>  </p> </div>');
    mess.appendTo(document.body);




    return true;
  }
});


});

