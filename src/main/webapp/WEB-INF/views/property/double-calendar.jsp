<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<link href='/resources/calendar/main.css' rel='stylesheet' />
<script src='/resources/calendar/main.js'></script>
<script>

  document.addEventListener('DOMContentLoaded', function() {
    var srcCalendarEl = document.getElementById('source-calendar');
    var destCalendarEl = document.getElementById('destination-calendar');

    var srcCalendar = new FullCalendar.Calendar(srcCalendarEl, {
      editable: true,
      initialDate: '2020-09-12',
      events: [
        {
          title: 'event1',
          start: '2020-09-11T10:00:00',
          end: '2020-09-11T16:00:00'
        },
        {
          title: 'event2',
          start: '2020-09-13T10:00:00',
          end: '2020-09-13T16:00:00'
        }
      ],
      eventLeave: function(info) {
        console.log('event left!', info.event);
      }
    });

    var destCalendar = new FullCalendar.Calendar(destCalendarEl, {
      initialDate: '2020-09-12',
      editable: true,
      droppable: true, // will let it receive events!
      eventReceive: function(info) {
        console.log('event received!', info.event);
      }
    });

    srcCalendar.render();
    destCalendar.render();
  });

</script>
<style>

  body {
    margin: 20px 0 0 20px;
    font-size: 14px;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
  }

  #source-calendar,
  #destination-calendar {
    float: left;
    width: 600px;
    margin: 0 20px 20px 0;
  }

</style>
</head>
<body>

<div id='source-calendar'></div>
<div id='destination-calendar'></div>

</body>
</html>
