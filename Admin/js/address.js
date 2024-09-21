$(document).ready(function()
    {   
     $("#division").change(function()
    {
    var id=$(this).val();
    var dataString = 'id='+ id;
    
    $.ajax
    ({
      type: "POST",
      url: "district.php",
      data: dataString,
      cache: false,
      success: function(html)
      {
      $("#district").html(html);
      } 
    });
    });  
    
    $("#district").change(function()
    {
    var id=$(this).val();
    var dataString = 'id='+ id;   
    $.ajax
    ({
      type: "POST",
      url: "thana.php",
      data: dataString,
      cache: false,
      success: function(html)
      {
      $("#thana").html(html);
      } 
    });
    });   
    $("#pdivision").change(function()
    {
    var id=$(this).val();
    var dataString = 'id='+ id;
    
    $.ajax
    ({
      type: "POST",
      url: "pdistrict.php",
      data: dataString,
      cache: false,
      success: function(html)
      {
      $("#pdistrict").html(html);
      } 
    });
    });  
    
    $("#pdistrict").change(function()
    {
    var id=$(this).val();
    var dataString = 'id='+ id;
    
    $.ajax
    ({
      type: "POST",
      url: "pthana.php",
      data: dataString,
      cache: false,
     success: function(html)
     {
        $("#pthana").html(html);
     } 
      });
   });
    });