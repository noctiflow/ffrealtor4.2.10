var updateEvent;

$(document).ready(function(){
  return $('#calendar').fullCalendar({
    header: { center: 'agendaWeek,month,listWeek' },
    defaultView: 'agendaWeek',
    editable: 'true',
    droppable: 'true',
    dragOpacity: "0.5",
    eventLimit: 3,
    height: 600,
    events: '/tasks.json',
    eventTextColor: '#fff',
    // eventSources: [{
    //   url: '/tasks',
    // }],

    eventDrop: function(event, dayDelta, minuteDelta, allDay, revertFunc) {
     return updateEvent(event);
   },
   eventResize: function(event, dayDelta, minuteDelta, revertFunc) {
     return updateEvent(event);
   },

    eventRender: function (event, element, view) {
      element.find('.fc-title').append('<div class="hr-line-solid-no-margin"></div><span style="font-size: 10px"><em>'+event.description+'</em></span></div>');
    }
  });
});

updateEvent = function(the_task) {
  return $.ajax("/tasks/" + the_task.id, {
    type: "PATCH",
    dataType: 'json',
    event: {
      title: the_task.title,
      start_time: "" + the_task.start,
      due_at: "" + the_task.end,
      description: the_task.description
    }
  });
};
