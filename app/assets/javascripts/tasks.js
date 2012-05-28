// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function() {
  $("a.destroy").bind('ajax:complete', function() { 
    $(this).parent().fadeOut();
    if($(this).parent().hasClass('done')) {
      done_count(-1);
    } else {
      left_count(-1);
    }
  });
  
  $(".marked_done").bind('click', function() { 
    id = $(this).attr('id');
    checkbox = $(this);
    $.ajax({
        url: "/tasks/" + id,
        type: "PUT",
        data: { task: { name: $(this).parent().children("span").html(), done: true } },
        success: function(resp){
          checkbox.parent().addClass('done');
          checkbox.hide();
          left_count(-1);
          done_count(+1);
        }
    });
  });

  $("#add_new_task").bind('ajax:complete', function(xhr, data, status) { 
    $new_task_element = data['responseText'];
    $(this).next().prepend($new_task_element);
    $(this).children("input").attr('value','');
    left_count(1);
  });

});

function left_count(change) {
  count = parseInt($("#count_left").html());
  $("#count_left").html(count+change);
}

function done_count(change) {
  count = parseInt($("#count_done").html());
  $("#count_done").html(count+change);
}