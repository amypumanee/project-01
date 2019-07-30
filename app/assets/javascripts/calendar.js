$(document).ready(function () {
  $('#calendar').fullCalendar({
     events: '/users/events.json'
  });
});
